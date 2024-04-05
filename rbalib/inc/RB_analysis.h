#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

#include "utils.h"

typedef struct Scleral_Replacement_table{
    char name[Max_string_size]; //name of the array
    int degree; //load elimination degree of the SR transformation
    uint64_t loop_iterations; //total number of nested loop iterations. For equal loop sizes = N, the loop_iterations = n^(number_of_for_loops - degree) 
} SR_table;

// Describes if the loop "loop_name" will be unrolled in order to apply Register Blocking.
// If the specific will be unrolled unroll bool == true and RB_factor>1.
typedef struct Register_Bloking_loops{
    bool unroll;      // bool that Describes if this "loop_name" loop will be unrolled
    char loop_name;
    int RB_factor; // The register blocking factor
} RB_loops;

/**
 * @brief  The main alogirm that calulates the loop oder and the Register blocking factors
*/
void main_algorithm(input_table *in_table);

// TODOO not used
void allocations(int *RB_factors,int number_of_Loops,char **permut_array,int L_fuct);

/**
 * @brief Calculate the SR table. Allocates a number_of_arrays SR_table stract.
 * If scelar replacement can be applyed it calculates the degree of this array.
 * degree: is a scalar number that describes the load elimination degree of the SR transformation
 * @param[in] curr_loop_order Current loop order.
 * @param[in] in_table Pointer to the input_table.
 * @return   sc_table : Pointer Scalar replacement table. 
 */
void SC_table_F(char *curr_loop_order, input_table *in_table, SR_table *sc_table);

/**
 * @brief Calculate the sum of permutation locality for all arrays.
 * Given a permutation of ijk and an array[i][j] the permutation locality of this arrays is 1.
 * Given a permutation of ijk and an array[j][i] the permutation locality of this arrays is 0 
 * (bad strides because array is accesed columnwise). 
 * @param[in] curr_loop_order loop permutaion.
 * @param[in] in_table Pointer to the input_table.
 */
int sum_of_perm_locality(char *curr_loop_order, input_table *in_table);


/**
 * @brief Calculates the loads and stores for each array. When we apply vectorization by usinf specific intrinsics the loads and stores are deicresed.
 * @param[in] sc_table Pointer Scalar replacement table. 
 * @param[in] in_table Pointer to the input_table.
 * @return   ls_array : Dyn. allocated array that has laods and stores for each array. 
 */
void vect_ls_F(input_table *in_table,SR_table *sc_table,uint64_t *ls_array);

/**
 * @brief Initilize the RB_loops. 
 * @param[in] in_table Pointer to the input_table.
 * @return   rb_loops : Pointer to the initialised rb_loops. 
 */
void init_RB_loops(input_table *in_table,RB_loops *rb_loops);

/**
 * @brief Next loop(s) to apply Register Blocking.
 * @param[in] axi Current axi of the code. Example: In 3 loops I can 2^3-1 combinations to apply RB
 * @param[in] number_of_loops The number of loops.
 * @param[in] loop_order String of the loop oder.
 * @param[in] rb_loops Pointer to the initialised rb_loops.
 * @return   RB_loop: The loop(s) as a string to apply RB. 
 */
void RB_loop_F(int axi, char *loop_order,RB_loops *rb_loops, char *RB_loop);


/**
 * @brief For each array:
 * • Calculates the registers needed for appling Register Blocking.
 *  If the needed registers are more than the system can provide it returns 0 else 1
 * • Calculates loads and stores aka., array acceses and updates the l_s values.
 * @param[in] in_table Pointer to the input_table.
 * @param[in] sc_table Pointer Scalar replacement table. 
 * @param[in] rb_loops Pointer to the initialised rb_loops.
 * @param[in] RB_loop  The loop(s) to apply RB.
 * @return   l_s number of load stores
 * @return   boolian: If the registers that were used where more that the machine can provide
 */
bool cost_functions_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop,uint64_t *l_s, uint64_t *ls_array);

/**
 * @brief For each array:
 * • This function by knowing that we have RB in the RB_loop find the minimum valid l_s and RB factors
 * • valid = the registers used are lees or equall to the registers of the system
 * @param[in] in_table Pointer to the input_table.
 * @param[in] sc_table Pointer Scalar replacement table. 
 * @param[in] rb_loops Pointer to the initialised rb_loops.
 * @param[in] RB_loop  The loop(s) to apply RB.
 * @return   l_s number of load stores
 * @return   indexes the index of each loop 
 * @return   RB_factors the RB factor for each loop
 */
void Best_LS_F(input_table *in_table,SR_table *sc_table,RB_loops *rb_loops, char *RB_loop, uint64_t *l_s, uint64_t *ls_array,int *indexes,int *RB_factors);

/**
 * @brief Saves the current best Registers Blocking factors and loop permutaion.
 * @param[in] r_w Number of load and store stores that needs to be strored
 * @param[in] RB_factors The current RB factors
 * @param[in] curr_loop_order: The current loop order.
 */
void save(RB_loops *RB_factors,char *curr_loop_order);


/**
 * @brief Print the final results to stdio.
 * @param[in] r_w Number of load and stores.
 * @param[in] RB_factors The best RB factors.
 * @param[in] curr_loop_order: The best current loop order.
 */
void print_results();

// Free a malloc arrays
void deallocations(RB_loops *RB_factors,char **permut_array,int L_fuct, SR_table *sc_table,uint64_t *ls_array);