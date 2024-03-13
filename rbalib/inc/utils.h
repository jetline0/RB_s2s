#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define Max_string_size 50
#define Max_loops 7 //The maximum number of for loops that a kernel can have.

#ifndef __cplusplus
typedef unsigned char bool;
static const bool False = 0;
static const bool True = 1;
#endif

// Informations about an array of the code.
typedef struct Array {
    // e.g. A[i][j][k] => name='A', subscript_len = 3, subscript_iter = 'ijk' 
    char name[Max_string_size];
    int subscript_len;
    char subscript_iter[Max_loops];    
    int L_S_status; //L_S_status = 0 if laod_only, L_S_status = 1 if load and store, L_S_status = 2 if store only. For example in "A[i]+=1;" L_S_status = 2.
} array;

// Main table that describes the code
typedef struct Input_table {
    int number_of_Registers;    // Available registers of the CPU
    int number_of_Loops;       // The number of loops that the given code has
    char loop_order[Max_loops];       // The loops order that this number_of_Loops have. For example is [i,j] or [j,i]
    int loop_sizes[Max_loops];      //The maximum number of iterations 
    int number_of_Arrays;   // The number of arrays that the given code has
    uint64_t loop_iterations; //total number of nested loop iterations. E.g., for two nested for loops {i,j} -> {n,n}: loop_iterations = O(n²)
    array *arrays;
    char vect_loop;           // loop to apply vectorization
    int vect_unroll;          // Unroll factor that vectorization has. vect_unroll = cache_lane/32
} input_table; 

/**
 * @brief Main input wrapper. The functions will open the argv[1] txt file and will wraps the
 * information of the code to the input table.
 * @param[in] argc Must be 2. The executable and the txt file that describes the code.
 * @param[in] argv Pointer to the input argumnets.
 * @return   in_table : Pointer to the input table. 
 */
int input_wrapper(int argc, char **argv, input_table *in_table);

//Calculates the fuctorial of number (number!).
int Factorial(int number);

//Returns all the combinations of loop permutations
// More info here: 
//https://www.geeksforgeeks.org/write-a-c-program-to-print-all-permutations-of-a-given-string/
void permutations(char loops[],int num_loops,char **permutations);

//Swap x with y
void swap(char *x, char *y);

//Generate the Permutations
void generatePermutations(char *loops, int size, int index, char **permutations, int *count);

//Calculates the common chataters of str1 and str2
int countCommonCharacters(const char* str1, const char* str2);

//function iterates through each character of the input string until it finds a match with the specified character c. 
//If a match is found, it returns the index of that character. If the character is not found, it returns -1.
int findCharacter(const char *string, char c);