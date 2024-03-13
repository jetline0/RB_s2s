#include "../inc/utils.h"

int input_wrapper(int argc, char **argv, input_table *in_table){
    char ch;
    char tmp_str[20];
    int64_t loop_iterations = 1; //total number of nested loop iterations
    int number_of_Loops,number_of_Arrays, tmp_int,i,j,cache_lane;

    if (argc != 2){
        printf("ERROR reading file (argc != 2)\n");
        return 1;
    }

    FILE *fp = fopen(argv[1], "r");
    if (fp == NULL){
        printf("Error: could not open file %s", argv[1]);
        return 1;
    }
    // Read arrays
    fscanf(fp, "%d", &in_table->number_of_Arrays);
    in_table->arrays = malloc(in_table->number_of_Arrays * sizeof(array));
    if (in_table->arrays == NULL){
        printf("Error: in_table.arrays == NULL\n");
        return 1;
    }
    for (i=0; i < in_table->number_of_Arrays; i++){
        fscanf(fp, "%d", &in_table->arrays[i].subscript_len);
        fscanf(fp, "%s", in_table->arrays[i].name);
        fscanf(fp, "%s", in_table->arrays[i].subscript_iter);
        fscanf(fp, "%d", &in_table->arrays[i].L_S_status);
        
     }

    fscanf(fp, "%d", &in_table->number_of_Loops);
    if (in_table->number_of_Loops > Max_loops){
        printf("Error: The maximum number of loops that the anlysis suport is 7.\n");
        return 1;
    }

    fscanf(fp, "%s", in_table->loop_order);

    for (i=0; i < in_table->number_of_Loops; i++){
        fscanf(fp, "%d", &in_table->loop_sizes[i]);
        loop_iterations = loop_iterations*in_table->loop_sizes[i];
    }
    in_table->loop_iterations = loop_iterations;
    fscanf(fp, "%d", &in_table->number_of_Registers);
    fscanf(fp, "%s", &in_table->vect_loop);
    fscanf(fp, "%d", &cache_lane);


    in_table->vect_unroll = (int) cache_lane/32; // 32 because the arrays are floats

    // close the file
    fclose(fp);

    return 0;
}

int Factorial(int number) // returns number!    
{    
  int i,fact=1;    
  for(i=1;i<=number;i++)    
      fact=fact*i;        
  return fact;  
}

void swap(char *x, char *y) {
    char temp = *x;
    *x = *y;
    *y = temp;
}

void generatePermutations(char *loops, int size, int index, char **permutations, int *count) {
    if (index == size) {
        if (permutations[*count] == NULL) {
            printf("Memory allocation failed.\n");
            exit(1);
        }
        for (int i = 0; i < size; i++) {
            permutations[*count][i] = loops[i];
        }
        permutations[*count][size] = '\0';
        (*count)++;
        return;
    }

    for (int i = index; i < size; i++) {
        swap((loops + index), (loops + i));
        generatePermutations(loops, size, index + 1, permutations, count);
        swap((loops + index), (loops + i));  // backtrack
    }
}

void permutations(char loops[],int num_loops,char **permutations) {
    int num_permutations = Factorial(num_loops);    // Calculate the number of permutations

    if (permutations == NULL) {
        printf("Memory allocation failed.\n");
        exit(1);
    }

    int count = 0;
    generatePermutations(loops, num_loops, 0, permutations, &count);

    return ;
}

int countCommonCharacters(const char* str1, const char* str2) {
    int count = 0;

    // Iterate through each character of str2
    for (int i = 0; str2[i] != '\0'; i++) {
        bool found = 0;

        // Iterate through each character of str1
        for (int j = 0; str1[j] != '\0'; j++) {
            // If a character from str2 is found in str1, increment the count
            if (str1[j] == str2[i]) {
                found = 1;
                break;
            }
        }

        if (found) {
            count++;
        }
    }

    return count;
}


int findCharacter(const char *string, char c) {
    int index = 0;
    while (string[index] != '\0') {
        if (string[index] == c) {
            return index;
        }
        index++;
    }
    return -1; // Character not found
}

