#include "../inc/RB_analysis.h"
#define true 1
#define false 0
#define DEBUG 1

// Result of our methodology
char *loop_order;
int *RB_factors_rsl;
char RB_loop_rsl[Max_loops+1];
int number_of_unroll_loops_rls;
int *result_index;

void print_sctable_array(SR_table* sc_table) {
    // Print the content of a single SR_table entry
    printf("Name: %s\n", sc_table->name);
    printf("Degree: %d\n", sc_table->degree);
    printf("Loop Iterations: %lu\n", sc_table->loop_iterations);
    printf("Registers per Reference: %lu\n", sc_table->reg_per_ref);
    printf("Overwrite: %d\n", sc_table->overwrite);
    printf("\n"); // Add a newline for readability
}

// n is number of arrays
void print_sctable(SR_table* sc_table, int n) {
    for (int i = 0; i < n; i++) {
        print_sctable_array(&sc_table[i]);
    }
}

// n is number of arrays
void reset_reg_per_ref_and_overwrite(SR_table* sc_table, int n) {
    for (int i = 0; i < n; i++) {
        sc_table[i].reg_per_ref = 0;
        sc_table[i].overwrite = false;
    }
}

void main_algorithm(input_table *in_table){
  int i,j,const_part;
  uint64_t min_l_s,l_s;
  char *curr_loop_order;
  int *indexes; // indexes of the applied RB loops
  int *RB_factors; // RB factors of each RB loop
  char RB_loop[Max_loops+1]; // The loop(s) to apply Reg. blocking.
  char **permut_array;  // Dym. array where the loop permutations will be stored
  SR_table *best_sc_table;  //Dym. Scalar Replacement table for best LS
  SR_table *sc_table;  //Dym. Scalar Replacement table.
  RB_loops *rb_loops; // Dym. array where the Reg. blocking factors will be stored for each loop. If no RB will be applied "bool unroll = 0" & RB_factor = 1. 
  uint64_t *ls_array; // Dyn. allocated array that has laods and stores for each array. 
  
  min_l_s = 9223372036854775807;


  // Data allocations TODO: Create a function that do all that!!
  ////////////////////////////// START /////////////////////////////////////////
  rb_loops = (RB_loops *) malloc((in_table->number_of_Loops)*sizeof(RB_loops));
  ls_array = (uint64_t *) malloc((in_table->number_of_Arrays)*sizeof(uint64_t));
  permut_array = (char**)malloc(in_table->number_of_Arrays * sizeof(char*));
  best_sc_table = (SR_table *) malloc(in_table->number_of_Arrays * sizeof(SR_table));
  sc_table = (SR_table *) malloc(in_table->number_of_Arrays * sizeof(SR_table));
  for (int i = 0; i < in_table->number_of_Arrays; i++)
        permut_array[i] = (char*)malloc((in_table->number_of_Loops+1)* sizeof(char));
  indexes = (int *)malloc(1*(sizeof(int)));
  result_index = (int *)malloc(1*(sizeof(int)));
  RB_factors_rsl = (int *) malloc(1*sizeof(int));
  RB_factors = (int *) malloc(1*sizeof(int));
  ////////////////////////////// END ////////////////////////////////////////////

  gen_perm_effect_RB(in_table,permut_array);
  init_RB_loops(in_table,rb_loops);

  for (i=0; i<in_table->number_of_Arrays; i++){// for all loop permutations
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
      Best_LS_F(in_table, sc_table,rb_loops,RB_loop,&l_s,ls_array,indexes,RB_factors);

      //if better combination was found save it.
      if (l_s < min_l_s){
        min_l_s = l_s;
        number_of_unroll_loops_rls = strlen(RB_loop);
        memcpy(RB_factors_rsl, RB_factors, (in_table->number_of_Loops)*sizeof(RB_loops));
        strcpy(RB_loop_rsl,RB_loop);
        loop_order=curr_loop_order;
        result_index= realloc(result_index, number_of_unroll_loops_rls*(sizeof(int)));
        memcpy(result_index, indexes, sizeof(int)*number_of_unroll_loops_rls);
        // copy sc_table into best_sc_table
        memcpy(best_sc_table, sc_table, in_table->number_of_Arrays * sizeof(SR_table));
      }
      // reset sc_table's reg_per_ref
      reset_reg_per_ref_and_overwrite(sc_table, in_table->number_of_Arrays);
    }
  }
  printf("RESULTS:\n\tMinimum l/s instruction found of: %ld \n",min_l_s);
  print_results();
  print_sctable(best_sc_table, in_table->number_of_Arrays);
  deallocations(rb_loops,permut_array,in_table->number_of_Arrays,sc_table,ls_array);
  free(indexes);
  free(result_index);
  free(RB_factors_rsl);

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
    sc_table[i].reg_per_ref = 0;
    if (sc_table[i].degree)
      printf("Info:\n\tAppling Scleral Replacement on %s with degree = %d\n\n",sc_table[i].name,sc_table[i].degree);
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
    if (in_table->arrays[i].L_S_status == 0 || (in_table->arrays[i].L_S_status == 1)){ // if we laod array
      if (sc_table[i].degree){
        if ((strchr(in_table->arrays[i].subscript_iter, in_table->vect_loop) == NULL) ){ // if the vectorised loop is not in the array's subscript
          ls_array[i] = sc_table[i].loop_iterations;     // vectorization do not benefit loads
        }
        else
          ls_array[i] = sc_table[i].loop_iterations/in_table->vect_unroll;
      }
      else
        ls_array[i] = in_table->loop_iterations/in_table->vect_unroll;
    }
    if (in_table->arrays[i].L_S_status == 2 || (in_table->arrays[i].L_S_status == 1)){ // if we store array
      if ((strchr(in_table->arrays[i].subscript_iter, in_table->vect_loop) != NULL)) //  we use store_ps
        ls_array[i] += sc_table[i].loop_iterations/in_table->vect_unroll;
      else // we use store_ss
        ls_array[i] += sc_table[i].loop_iterations;
    }
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
#ifdef DEBUG
    printf("\tAppling RB in the %s loop(s)..\n", RB_loop);
#endif
}

bool cost_functions_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop, uint64_t *l_s,uint64_t *ls_array){
  // For each array:
  // • Calculates the registers needed for appling Register Blocking.
  //    If the needed registers are more than the system can provide it returns 0 else 1
  // • Calculates loads and stores aka., array acceses and updates the l_s values.
  int common_chars,fact_mul,l_s_mul,max_reg, max_it, registers,registers_tmp;
  uint64_t l_s_tmp;

  *l_s=0;
  registers = 0;
  max_reg = 0; // maximum  RB factor that is used
  max_it = -1;

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
      sc_table[i].reg_per_ref = sr_registers;
      registers += sr_registers;
      *l_s +=  ls_array[i]; 
    } 
    else {
      common_chars = countCommonCharacters(in_table->arrays[i].subscript_iter,RB_loop);
      if (common_chars == strlen(RB_loop)){ // Array is not reused. Register blocking is no beneficial for this array
        sc_table[i].reg_per_ref = 1;
        registers +=1;
        *l_s += ls_array[i]; // Accesses of this array did not change. Before I had e.g., N^6 now I also have N^6 accesses.
      }
      else if (common_chars == 0){ // if array is reused and no dependencies were detected
        sc_table[i].reg_per_ref = 1;
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
        if (max_reg< registers_tmp) {// Finds the the biggest registers needed for and array removes it when the for loops end
          max_reg = registers_tmp;
          max_it = i;
        }
        *l_s +=  l_s_tmp;
        sc_table[i].reg_per_ref = registers_tmp;
        registers += registers_tmp;
      }
    }
  }
  if (max_reg) // max_reg was updated  
    registers = registers - max_reg + 1;
  if (max_it != -1) {
    sc_table[max_it].overwrite = true;
    sc_table[max_it].reg_per_ref = 1;
  }
  registers = in_table->number_of_Registers - registers;
  return (registers >= 0);
}

void Best_LS_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop, uint64_t *l_s,uint64_t *ls_array,int *indexes,int *RB_factors){
  // This function by knowing that we have RB in the RB_loop find the minimum valid l_s and RB factors.
  // valid = the registers used are less or equall to the registers of the system
  // The main idea of the code: Lets say that we wont to apply RB into 2 loops.
  // We are going to use an enumeration approach to solve problem. We will check values from "2 to number ofRegisters available by the system", in each RB loops.
  // If we have 2 RB_loops 2 of the 7 for loops will be activated.
  
    int i,j,axi_j,axi_i,k,number_of_unroll_loops,index;
    int i_size,j_size,k_size;
    uint64_t min_ls;
    bool valid;
    int unroll_fact[Max_loops]; // This are is used as as rapper of the unroll factors. I wont at  loop_un=0 to store the k as unroll/RB factors
    int sizes[Max_loops]; // The sizes that the 7 for loops will go. Initially are 3 in order not to make any iteration.
    SR_table* best_sc_table;
    
    //init
      //start
    sizes[0] = sizes[1] = sizes[2] = sizes[3] = sizes[4] = sizes[5] = sizes[6]  = 3;
    number_of_unroll_loops = strlen(RB_loop);
    min_ls = 9223372036854775807; // max uint64_t number.
    indexes = realloc(indexes, number_of_unroll_loops*(sizeof(int)));
    RB_factors = realloc(RB_factors, number_of_unroll_loops*(sizeof(int)));
    best_sc_table = (SR_table *) malloc(in_table->number_of_Arrays * sizeof(SR_table));

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
    
    // enumerarion to find min ls inst.
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
                    min_ls =  *l_s;
                    for (int loop_un=0;loop_un<number_of_unroll_loops;loop_un++){
                      RB_factors[loop_un] = rb_loops[indexes[loop_un]].RB_factor;
                    }
                    memcpy(best_sc_table, sc_table, in_table->number_of_Arrays * sizeof(SR_table));
#ifdef DEBUG
                    for (int loop_un=0;loop_un<number_of_unroll_loops;loop_un++)
                      printf("%c == %d\n",RB_loop[loop_un],rb_loops[indexes[loop_un]].RB_factor);
                    printf("l_s == %ld\n\n",*l_s);
#endif
                  }
                }
              }
            }
    
    memcpy(sc_table, best_sc_table, in_table->number_of_Arrays * sizeof(SR_table));
    *l_s = min_ls;
}
void gen_perm_effect_RB(input_table *in_table,char **permut_array){

  int L_fuct,sum_of_loc,best_perm,max_loc;
  char **remain_permutations;
  char tmp_perm[Max_loops + 1];
  char* remaining_chars = (char*)malloc((strlen(in_table->loop_order) + 1) * sizeof(char));
  
  for (size_t i = 0; i < in_table->number_of_Arrays; i++){

    // Loop permutations depend on the arrays that can be moved out of the three innermost loop(s).
    // Initially for each array the first loops of the permutation are the same with the array's subscript  
    strcpy(permut_array[i], in_table->arrays[i].subscript_iter);
    int size_remain = get_remaining_chars(in_table->loop_order, permut_array[i], remaining_chars);

    // Generates all the permutaions 
    L_fuct = Factorial(size_remain);
    remain_permutations = (char**)malloc(L_fuct * sizeof(char*));
    for (int j = 0; j < L_fuct; j++)
        remain_permutations[j] = (char*)malloc(in_table->number_of_Loops* sizeof(char));
    permutations(remaining_chars,size_remain,remain_permutations);

    // fing the permutation that has the maximum permutation locality
    max_loc=0;
    for (int j = 0; j < L_fuct; j++){
      strcpy(tmp_perm, permut_array[i]);  // concatenate the two strings
      strcat(tmp_perm,remain_permutations[j]);
      sum_of_loc = sum_of_perm_locality(tmp_perm,in_table);
      if (sum_of_loc>max_loc){ 
        best_perm = j;
        max_loc = sum_of_loc;
      }
    }
    strcat(permut_array[i],remain_permutations[best_perm]);
    for (int j = 0; j < L_fuct; j++)
      free(remain_permutations[j]);
    free(remain_permutations);
  }

  free(remaining_chars);
}

int sum_of_perm_locality(char *loop_perm, input_table *in_table){
  int i,perm_it,arr_it,sum;
  sum=0;
  for (size_t i = 0; i < in_table->number_of_Arrays; i++){
    int len_loop_perm = strlen(loop_perm);
    int len_array_sub = strlen(in_table->arrays[i].subscript_iter);
    perm_it = 0; arr_it = 0;
    while (perm_it < len_loop_perm && arr_it < len_array_sub) {
        if (loop_perm[perm_it] == in_table->arrays[i].subscript_iter[arr_it]) {
            arr_it++;
        }
        perm_it++;
    }
    if (arr_it == len_array_sub) // If all array's subscripts are found in loop permutation and in the same order
       sum++;
  }
  
  return sum;
}

void print_results(){
  printf("\tLoop order: %s\n",loop_order);
  for (int loop_un=0;loop_un<number_of_unroll_loops_rls;loop_un++)
    printf("\tRB factor for %c == %d\n",RB_loop_rsl[loop_un],RB_factors_rsl[loop_un]);
}

void deallocations(RB_loops *RB_factors,char **permut_array,int number_of_Arrays, SR_table *sc_table,uint64_t *ls_array){
    // Free the dynamically allocated memory
    for (int i = 0; i < number_of_Arrays; i++) {
      free(permut_array[i]);
    }
    free(permut_array);
    free(RB_factors);
    free(sc_table);
    free(ls_array);
}
