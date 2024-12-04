#include <math.h>
#define ceild(n,d)  (((n)<0) ? -((-(n))/(d)) : ((n)+(d)-1)/(d))
#define floord(n,d) (((n)<0) ? -((-(n)+(d)-1)/(d)) : (n)/(d))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <valgrind/callgrind.h>
#define N 256 
#define BILLION 1000000000L

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
#include <stdlib.h>

int M2;
float  *X, **Y, *Z, *test;//, *A1_vec;
void initialization_MVM() {

	X = (float*) _mm_malloc( N * sizeof(float *),64);
	Y = (float**) _mm_malloc( N * sizeof(float *),64);
	test = (float*) _mm_malloc( N * sizeof(float *),64);
	Z = (float*) _mm_malloc( N * sizeof(float *),64);

	for (unsigned int i = 0; i < N; i++) {
            Y[i] = (float*) _mm_malloc( N * sizeof(float),64);
        }
        
	float e = 0.1234, p = 0.7264, r = 0.11;
	
	for (unsigned int i = 0; i != N; i++)
		X[i] = ((i ) % 9) + p;

	for (int i=0;i<N;i++)
		for (int j=0;j<N;j++)
			Y[i][j] = ((j) % 6) + e;

	for (unsigned int j = 0; j != N; j++) {
		Z[j] = 0.0;
		test[j] = 0.0;
	}
}

#define EPSILON 0.01
unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

unsigned short int Compare_MVM() {
	//flops = ???
        for (int i=0;i<N;i++) {
		for (int j=0;j<N;j++){
			test[i]+=Y[i][j]+X[j];
		}
	}

	for (int i = 0; i < N; i++)
            if (equal(Z[i], test[i]) == 1)
                    return 1;

	return 0;
}



void MVM_default(){
  int t1, t2;
 register int lbv, ubv;
/*@ begin Loop(
transform ScalarReplace(dtype='float', overwrite_arr='')
if (N >= 1) {
  for (t1=0;t1<=N-1-13;t1+=14) {
    for (t2=0;t2<=N-1;t2++) {
      Z[t1]+=Y[t1][t2]+X[t2];;
      Z[(t1+1)]+=Y[(t1+1)][t2]+X[t2];;
      Z[(t1+2)]+=Y[(t1+2)][t2]+X[t2];;
      Z[(t1+3)]+=Y[(t1+3)][t2]+X[t2];;
      Z[(t1+4)]+=Y[(t1+4)][t2]+X[t2];;
      Z[(t1+5)]+=Y[(t1+5)][t2]+X[t2];;
      Z[(t1+6)]+=Y[(t1+6)][t2]+X[t2];;
      Z[(t1+7)]+=Y[(t1+7)][t2]+X[t2];;
      Z[(t1+8)]+=Y[(t1+8)][t2]+X[t2];;
      Z[(t1+9)]+=Y[(t1+9)][t2]+X[t2];;
      Z[(t1+10)]+=Y[(t1+10)][t2]+X[t2];;
      Z[(t1+11)]+=Y[(t1+11)][t2]+X[t2];;
      Z[(t1+12)]+=Y[(t1+12)][t2]+X[t2];;
      Z[(t1+13)]+=Y[(t1+13)][t2]+X[t2];;
    }
  }
  for (;t1<=N-1;t1++) {
    for (t2=0;t2<=N-1;t2++) {
      Z[t1]+=Y[t1][t2]+X[t2];;
    }
  }
}
) @*/

/*@ end @*/
}

int main(int argc,char **argv) {

    // Start Callgrind profiling
    struct timespec start, end;
    uint64_t diff;

    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0,&mask);
    if(sched_setaffinity(0,sizeof(mask),&mask) == -1)
                    printf("WARNING: Could not set CPU Affinity, continuing...\n");

    initialization_MVM();

    CALLGRIND_START_INSTRUMENTATION;// Start Callgrind profiling
    CALLGRIND_TOGGLE_COLLECT;

	clock_gettime(CLOCK_MONOTONIC, &start);	/* mark start time */
    MVM_default();
	clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */

    CALLGRIND_TOGGLE_COLLECT; // Stop Callgrind profiling
    CALLGRIND_STOP_INSTRUMENTATION;

    if ( Compare_MVM() == 0)
	    printf("\nCorrect Result\n");
    else 
	    printf("\nINcorrect Result\n");

	diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
  	printf("%llu\n", (long long unsigned int) diff);

    // free... if you want
    return 0;
}
