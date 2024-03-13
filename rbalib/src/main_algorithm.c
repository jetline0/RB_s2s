#include "../inc/RB_analysis.h"

void main_algorithm(input_table *in_table){
  int i,j,L_fuct,const_part;
  uint64_t min_l_s,l_s;
  char *curr_loop_order;
  char RB_loop[Max_loops]; // The loop(s) to apply Reg. blocking.
  char **permut_array;  // Dym. array where the loop permutations will be stored
  SR_table *sc_table;  //Dym. Scalar Replacement table.
  RB_loops *rb_loops; // Dym. array where the Reg. blocking factors will be stored for each loop. If no RB will be applied "bool unroll = 0" & RB_factor = 1. 
  uint64_t *ls_array; // Dyn. allocated array that has laods and stores for each array. 

  char* str = "m";
  char* str2 = "kij";
  min_l_s = 9223372036854775807;

  L_fuct = Factorial(in_table->number_of_Loops);

  // Data allocations TODO: Create a function that do all that!!
  ////////////////////////////// START /////////////////////////////////////////
  rb_loops = (RB_loops *) malloc((in_table->number_of_Loops)*sizeof(RB_loops));
  ls_array = (uint64_t *) malloc((in_table->number_of_Arrays)*sizeof(uint64_t));
  permut_array = (char**)malloc(L_fuct * sizeof(char*));
  sc_table = (SR_table *) malloc(in_table->number_of_Arrays * sizeof(SR_table));
  for (int i = 0; i < L_fuct; i++)
        permut_array[i] = (char*)malloc(in_table->number_of_Loops* sizeof(char));
  ////////////////////////////// END ////////////////////////////////////////////

  permutations(in_table->loop_order,in_table->number_of_Loops,permut_array);
  init_RB_loops(in_table,rb_loops);

  for (i=0; i<L_fuct; i++){// for all loop permutations
    //next loop order e.g., for a loop={i,j} -> loop_oder = {i,j} or loop_oder = {j,i}
    curr_loop_order = permut_array[i];

    // calculate the SR table.
    SC_table_F(curr_loop_order,in_table,sc_table);

    // calculate Loads and Stores from vectorization.
    vect_ls_F(in_table,sc_table,ls_array);
    for (j=0; j<(pow(2,in_table->number_of_Loops)-1); j++){ // for all combinations that we can apply RB

      //next loop/loops to apply RB e.g., RB = {i} or RB = {j} or RB = {i,j}
      RB_loop_F(j+1,curr_loop_order,rb_loops,RB_loop);

      // test diffent numbers on RB_fuctros and find the best one. Returns the register blocking factors and and load/store number
      Best_LS_F(in_table, sc_table,rb_loops,RB_loop,&l_s,ls_array);

      //if better combination was found save it.
      if (l_s < min_l_s)
        min_l_s = l_s;
        //save(l_s,rb_loops,curr_loop_order);
    }
  }
  printf("min_l_s == %ld \n",min_l_s);
  print_results(min_l_s,rb_loops,curr_loop_order);
  deallocations(rb_loops,permut_array,L_fuct,sc_table,ls_array);

}

void SC_table_F(char *curr_loop_order, input_table *in_table, SR_table *sc_table){
  // returns the array/arrays that Scalar replacement can be applied. And the degree
  //For example: "I have a for loop {i,j}→size{N,N} and y[i] array (y∈i). On y, defore SR I have O(N^2) and after SR O(N). 
  //By appling SR loads/stores were be redused by degree of 1 (1 loop upper)."
  int i,j,degree,index;
  uint64_t loop_iterations;
  printf("Current loop permutation %s\n", curr_loop_order);
  for (i=0;i<in_table->number_of_Arrays;i++){ // for all arrays 
    degree = 0;
    loop_iterations = in_table->loop_iterations;
    for (j = 0 ; j<(in_table->number_of_Loops - 1); j++){ // for all loops
      if(strchr(in_table->arrays[i].subscript_iter,(char) curr_loop_order[in_table->number_of_Loops - 1 - j]) == NULL){// if curr_loop_order[in_table->number_of_Loops - 1 - j] not in subscript_iter => can apply SR
        degree++;
        char* result =  strchr(in_table->loop_order, (char) curr_loop_order[in_table->number_of_Loops - 1 - j]); 
        int index = result - in_table->loop_order;                                // finds the index of the subscript that is not on arrays[i]
        loop_iterations =  (uint64_t) loop_iterations / in_table->loop_sizes[index];         // Removes it from the loop iterations. For example on y before I had N^2 now N
      }
      else 
        break;
    }
    sc_table[i].degree = degree;
    sc_table[i].loop_iterations = loop_iterations;
    strcpy(sc_table[i].name, in_table->arrays[i].name);
    if (sc_table[i].degree)
      printf("Info:\n\tAppling Scleral Replacement on %s with degree = %d\n",sc_table[i].name,sc_table[i].degree);
  }
}

void vect_ls_F(input_table *in_table,SR_table *sc_table,uint64_t *ls_array){
  // Calculates the loads and stores for each array.
  //For example: If I have and array and I use load_ps intrinsic to load it, the number of loads
  //will decreased "cache_lale_size/size_of(float)". Also if a store_ps intrinsic will be used the
  //stores will decreased cache_lale_size/size_of(float).
  int i;
  for (i=0;i<in_table->number_of_Arrays;i++){ // for all arrays
    ls_array[i] = 0;
    if (in_table->arrays[i].L_S_status == 0 || (in_table->arrays[i].L_S_status == 1)) // if we laod array
      if (sc_table[i].degree){
        if ((strchr(in_table->arrays[i].subscript_iter, in_table->vect_loop) == NULL) ){ // if the vectorised loop is not in the array's subscript
          ls_array[i] = sc_table[i].loop_iterations;     // vectorization do not benefit loads
        }
        else
          ls_array[i] = sc_table[i].loop_iterations/in_table->vect_unroll;
      }
      else
        ls_array[i] = in_table->loop_iterations/in_table->vect_unroll;

    if (in_table->arrays[i].L_S_status == 2 || (in_table->arrays[i].L_S_status == 1)) // if we store array
      if ((strchr(in_table->arrays[i].subscript_iter, in_table->vect_loop) != NULL)) //  we use store_ps
        ls_array[i] += sc_table[i].loop_iterations/in_table->vect_unroll;
      else // we use store_ss
        ls_array[i] += sc_table[i].loop_iterations;

    int index = findCharacter(in_table->arrays[i].subscript_iter, in_table->vect_loop);
    if (index != -1 && index != (strlen(in_table->arrays[i].subscript_iter)-1))
        printf("Info:\n\t Array %s needs layout alteration to apply vectorization\n",in_table->arrays[i].name);
  }

}


void init_RB_loops(input_table *in_table,RB_loops *rb_loops){
  //Init the rb_loops. Make sure that each element has the name of the loop
  // and no RB is used.
  for(int i = 0; i<in_table->number_of_Loops;i++){
    rb_loops[i].loop_name = in_table->loop_order[i];
    rb_loops[i].RB_factor = 1;
    rb_loops[i].unroll = 0;
  }
}

void RB_loop_F(int axi, char *loop_order,RB_loops *rb_loops, char *RB_loop){
    //Given the current axi state and the loop order find the next loop(s) to apply Register Blocking
    //Stores them into the loop order struct
    int number_of_loops = strlen(loop_order);
    int combinations = pow(2, number_of_loops) - 1;

    //initially make sure all loops are not unrolled. Initial state no loop must be unrolled.
    for (int j = 0; j<number_of_loops;j++)
      rb_loops[j].unroll = 0;

    if (axi < 0 || axi > combinations) {
        printf("Error: Invalid index!\n");
        exit(1);
    }

    int index = 0;

    for (int i = 0; i < number_of_loops; i++) {
        if (axi & (1 << i)) {
            RB_loop[index++] = loop_order[i];
            for (int j=0; j<number_of_loops; j++){
              if (loop_order[i] == rb_loops[j].loop_name)
                rb_loops[j].unroll = 1;
            }
        }
    }

    RB_loop[index] = '\0';
    printf("\tAppling RB in the %s loop(s)..\n", RB_loop);
}

bool cost_functions_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop, uint64_t *l_s,uint64_t *ls_array){
  // For each array:
  // • Calculates the registers needed for appling Register Blocking.
  //    If the needed registers are more than the system can provide it returns 0 else 1
  // • Calculates loads and stores aka., array acceses and updates the l_s values.
  int common_chars,fact_mul,l_s_mul,max_rb_factor,registers,registers_tmp;
  uint64_t l_s_tmp;

  *l_s=0;
  registers = 0;
  max_rb_factor = 0; // maximum  RB factor that is used

  for(int i = 0; i<in_table->number_of_Arrays;i++){
    int sr_registers = 1; // Registers needed if the i array is scalar replaced
    l_s_mul = (in_table->arrays[i].L_S_status == 1) ? 2 : 1; // if I have load and store I take 2 times the calculated excesses of the array.
    if (sc_table[i].degree){ //I have an array that SR was applied
      // •	If I have SR e.g., on k with X[i,j,l,k] and RB={i,j,l}  =>
      // Reg_num=unroll_fact_j* unroll_fact_i*unroll_fact_l
      // l_s += l_s_mul*n^(4 - degree)= N^3 excesses, degree = 1 supposing that all loops sizes are N.
      for (int j = 0; j < in_table->number_of_Loops; j++){
        if((strchr(in_table->arrays[i].subscript_iter, rb_loops[j].loop_name)) != NULL && rb_loops[j].unroll){ // if RB loop j ∈ arrays[i]
          sr_registers = sr_registers*rb_loops[j].RB_factor;
        }
      }
      registers += sr_registers;
      *l_s +=  ls_array[i]; 
    } 
    else {
      common_chars = countCommonCharacters(in_table->arrays[i].subscript_iter,RB_loop);
      if (common_chars == strlen(RB_loop)){ // Array is not reused. Register blocking is no beneficial for this array
        registers +=1;
        *l_s += ls_array[i]; // Accesses of this array did not change. Before I had e.g., N^6 now I also have N^6 accesses.
      }
      else if (common_chars == 0){ // if array is reused and no dependencies were detected
        registers +=1;
        fact_mul = 1;
        for (int j = 0; j < in_table->number_of_Loops; j++)
          if (rb_loops[j].unroll)
            fact_mul = fact_mul*rb_loops[j].RB_factor;
        *l_s += ls_array[i]/fact_mul; //l_s += n^6/(unroll_fact_i * unroll_fact_j ....*unrol_fact_k)
      }
      else { // if array is reused a.k.a., benefit of RB:
        //1.	1 Register need for the biggest Unroll factor
        //2.	Unroll factor registers for the others
        l_s_tmp = ls_array[i];
        registers_tmp = 1;
        for (int j = 0; j < in_table->number_of_Loops; j++){
          if (rb_loops[j].unroll){ //if is a loop that we apply RB
            if (strchr(in_table->arrays[i].subscript_iter, rb_loops[j].loop_name) != NULL)
              registers_tmp = registers_tmp*rb_loops[j].RB_factor; // calculate Registets needed
            else //arrays[i] ∉  rb_loops[j].loop_name I have l_s_tmp/unroll_fact[j] less acceses
              l_s_tmp = l_s_tmp/rb_loops[j].RB_factor; //eg., l_s += n^6/(unroll_fact_i*unroll_fact_j) because, arrays[i] ∉ {i,j} and I apply RB to {i,j,k}
          }
        }
        if (max_rb_factor < registers_tmp)  // Finds the the biggest registers needed for and array removes it when the for loops end
          max_rb_factor = registers_tmp;
        *l_s +=  l_s_tmp;
        registers += registers_tmp;
      }
    }
  }
  if (max_rb_factor) // max_rb_factor was updated  
    registers = registers - max_rb_factor + 1;
  registers = in_table->number_of_Registers - registers;
  return (registers >= 0);
}

void Best_LS_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop, uint64_t *l_s,uint64_t *ls_array){
  // This function by knowing that we have RB in the RB_loop find the minimum valid l_s and RB factors.
  // valid = the registers used are less or equall to the registers of the system
  // The main idea of the code: Lets say that we wont to apply RB into 2 loops.
  // We are going to use an enumeration approach to solve problem. We will check values from "2 to number ofRegisters available by the system", in each RB loops.
  // If we have 2 RB_loops 2 of the 7 for loops will be activated.
  
    int i,j,axi_j,axi_i,k,number_of_unroll_loops,index;
    int i_size,j_size,k_size;
    int *indexes;
    uint64_t min_ls;
    bool valid;
    int unroll_fact[Max_loops]; // This are is used as as rapper of the unroll factors. I wont at  loop_un=0 to store the k as unroll/RB factors
    int sizes[Max_loops]; // The sizes that the 7 for loops will go. Initially are 3 in order not to make any iteration.
    
    //init
      //start
    sizes[0] = sizes[1] = sizes[2] = sizes[3] = sizes[4] = sizes[5] = sizes[6]  = 3;
    number_of_unroll_loops = strlen(RB_loop);
    min_ls = 9223372036854775807; // max uint64_t number.
    indexes = (int *)malloc(number_of_unroll_loops*(sizeof(int)));

    for (i=0;i<number_of_unroll_loops;i++){
      indexes[i] = findCharacter(in_table->loop_order, RB_loop[i]);
      if (indexes[i] == -1){
        printf("Unknow state. Couldn't find the RB loop on the loops\n");
        exit(1);
      }
      rb_loops[indexes[i]].unroll =  1;
      sizes[Max_loops - 1 - i] = in_table->number_of_Registers;
    }
    //end 
    

    for (int o = 2; o< sizes[0]; o++)
      for (int n = 2; n< sizes[1]; n++)
        for (int m = 2; m< sizes[2]; m++)
          for (int l = 2; l< sizes[3]; l++)
            for (i = 2; i< sizes[4]; i++){
              for (j = 2; j< sizes[5]; j++){
                for (k = 2; k< sizes[6]; k++){
                  unroll_fact[0] = k;
                  unroll_fact[1] = j;
                  unroll_fact[2] = i;
                  unroll_fact[3] = l;
                  unroll_fact[4] = m;
                  unroll_fact[5] = n;
                  unroll_fact[6] = o;
                  for (int loop_un=0;loop_un<number_of_unroll_loops;loop_un++)
                    rb_loops[indexes[loop_un]].RB_factor = unroll_fact[loop_un];

                  valid = cost_functions_F(in_table,sc_table,rb_loops, RB_loop, l_s,ls_array);
                  if (valid && *l_s<min_ls){
                    for (int loop_un=0;loop_un<number_of_unroll_loops;loop_un++)
                      printf("%c == %d\n",RB_loop[loop_un],rb_loops[indexes[loop_un]].RB_factor);
                    min_ls =  *l_s;
                    printf("l_s == %ld\n\n",*l_s);
                  }
                }
              }
            }

    *l_s = min_ls;
    free(indexes);
}

void save(int r_w,RB_loops *RB_factors,char *curr_loop_order){

}

void print_results(int min_r_w,RB_loops *RB_factors,char *curr_loop_order){

}

void deallocations(RB_loops *RB_factors,char **permut_array,int L_fuct, SR_table *sc_table,uint64_t *ls_array){
    // Free the dynamically allocated memory
    for (int i = 0; i < L_fuct; i++) {
      free(permut_array[i]);
    }
    free(permut_array);
    free(RB_factors);
    free(sc_table);
    free(ls_array);
}