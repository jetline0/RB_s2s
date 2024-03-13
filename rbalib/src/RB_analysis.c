#include "../inc/RB_analysis.h"


int main(int argc, char **argv) {

    input_table in_table; 
    //wraps the input information to the input table.
    input_wrapper(argc,argv,&in_table);

    // run the main algorithm
    main_algorithm(&in_table);

    free(in_table.arrays);

    return 0;
}