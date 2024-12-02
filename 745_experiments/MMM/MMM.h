#pragma once


#include <math.h>
#include <stdio.h>
#include <emmintrin.h>
#include <limits.h>
#include <pmmintrin.h>
#include <immintrin.h>
#include <stdint.h>	/* for uint64 definition */
#include <sched.h>
#include <pthread.h>
#include <sys/syscall.h>
#include <sys/mman.h>
//#include <omp.h>
#include <stdlib.h>


void MMM_init();
void MMM_default();
void MMM_RB();
unsigned short int Compare_MMM();

extern unsigned short int equal(float const a, float const b); //used extern as this is defined in MVM.h

#define EPSILON 0.01