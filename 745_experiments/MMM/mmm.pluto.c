#include <math.h>
#define ceild(n,d)  (((n)<0) ? -((-(n))/(d)) : ((n)+(d)-1)/(d))
#define floord(n,d) (((n)<0) ? -((-(n)+(d)-1)/(d)) : (n)/(d))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <valgrind/callgrind.h>
#include "MMM.h"
#define BILLION 1000000000L
#define N 256
float  **C, **test, **A, **B, **Btranspose;

void MMM_init() {

	float e = 0.1234, p = 0.7264, r = 0.11;

	C = (float**) _mm_malloc( N * sizeof(float *),64);
	test = (float**) _mm_malloc(N * sizeof(float *),64);
	A = (float**) _mm_malloc( N * sizeof(float *),64);
	B = (float**) _mm_malloc( N * sizeof(float *),64);
	Btranspose =(float**)  _mm_malloc( N * sizeof(float *),64);
	
	for (unsigned int i = 0; i < N; i++) {
		C[i] = (float*) _mm_malloc( N * sizeof(float),64);
		test[i] = (float*) _mm_malloc(N * sizeof(float),64);
		A[i] = (float*) _mm_malloc( N * sizeof(float),64);
		B [i]= (float*) _mm_malloc( N * sizeof(float),64);
		Btranspose[i] =(float*)  _mm_malloc( N * sizeof(float),64);
	} 
	//MMM
	for (unsigned int i = 0; i < N; i++) { //printf("\n");
		for (unsigned int j = 0; j < N; j++) {
			C[i][j] = 0.0;
			test[i][j] = 0.0;
			A[i][j] = (j % 9) + p; //printf(" %3.1f",A[i][j]);
			B[i][j] = (j % 7) - p; //printf(" %3.1f",B[i][j]);
		}
	}

	for (int j = 0; j != N; j++)
		for (int k = 0; k != N; k++) {
			Btranspose[k][j] = B[j][k];
		}
	   

}



void MMM_RB() { 
    //l_s = 2*240^2 + 240^3/2 + 240^3/4 = 10,483,200 the same with Vagrid
    float C_00,C_01,C_02,C_03,a,b,a1,C_10,C_11,C_12,C_13;
    int i,j,k;
	for (i=0;i!=N;i+=2){
        for (j=0;j!=N;j+=4){
            C_00 =  C[i][j];
            C_10 =  C[i + 1][j];
            C_01 =  C[i][j + 1];
            C_11 =  C[i + 1][j + 1];
            C_02 =  C[i][j + 2];
            C_12 =  C[i + 1][j + 2];
            C_03 =  C[i][j + 3];
            C_13 =  C[i + 1][j + 3];
            for (k=0;k!=N;k++) {
            
                a = A[i][k]; a1 = A[i + 1][k]; // 2 registers for A 
                
                b = B[k][j];            // 1 register N
                C_00+=a*b;
                C_10+=a1*b;

                b = B[k][j + 1];
                C_01+=a*b;
                C_11+=a1*b;
                
                b = B[k][j + 2];
                C_02+=a*b;
                C_12+=a1*b;
                
                b = B[k][j + 3];
                C_03+=a*b;
                C_13+=a1*b;

            }
            C[i][j] = C_00;
            C[i + 1][j] = C_10;
            C[i][j + 1] = C_01;
            C[i + 1][j + 1] = C_11;
            C[i][j + 2] = C_02;
            C[i + 1][j + 2] = C_12;
            C[i][j + 3] = C_03;
            C[i + 1][j + 3] = C_13;
        } 

};

}

#define S1(i,j,k)	out_0 = _mm256_load_ps(&C[i][j]);\
					B0 = _mm256_load_ps(&B[k][j]);\
					tmp = A[i][k];\
					A0 =_mm256_set1_ps(tmp);\ 
					out_0 += _mm256_mul_ps(A0, B0);\
					_mm256_store_ps(&C[i][j], out_0);

void MMM_default(){
	__m256 out_0,B0,A0;
	float tmp;
  int t1, t2, t3;
 register int lbv, ubv;
if (N >= 1) {
  for (t1=0;t1<=N-1-3;t1+=4) {
    for (t2=0;t2<=N-1-2;t2+=3) {
      for (t3=0;t3<=N-1;t3++) {
        C[t1][t2] += A[t1][t3] * B[t3][t2];;
        C[(t1+1)][t2] += A[(t1+1)][t3] * B[t3][t2];;
        C[(t1+2)][t2] += A[(t1+2)][t3] * B[t3][t2];;
        C[(t1+3)][t2] += A[(t1+3)][t3] * B[t3][t2];;
        C[t1][(t2+1)] += A[t1][t3] * B[t3][(t2+1)];;
        C[(t1+1)][(t2+1)] += A[(t1+1)][t3] * B[t3][(t2+1)];;
        C[(t1+2)][(t2+1)] += A[(t1+2)][t3] * B[t3][(t2+1)];;
        C[(t1+3)][(t2+1)] += A[(t1+3)][t3] * B[t3][(t2+1)];;
        C[t1][(t2+2)] += A[t1][t3] * B[t3][(t2+2)];;
        C[(t1+1)][(t2+2)] += A[(t1+1)][t3] * B[t3][(t2+2)];;
        C[(t1+2)][(t2+2)] += A[(t1+2)][t3] * B[t3][(t2+2)];;
        C[(t1+3)][(t2+2)] += A[(t1+3)][t3] * B[t3][(t2+2)];;
      }
    }
    for (;t2<=N-1;t2++) {
      for (t3=0;t3<=N-1;t3++) {
        C[t1][t2] += A[t1][t3] * B[t3][t2];;
        C[(t1+1)][t2] += A[(t1+1)][t3] * B[t3][t2];;
        C[(t1+2)][t2] += A[(t1+2)][t3] * B[t3][t2];;
        C[(t1+3)][t2] += A[(t1+3)][t3] * B[t3][t2];;
      }
    }
  }
  for (;t1<=N-1;t1++) {
    for (t2=0;t2<=N-1;t2++) {
      for (t3=0;t3<=N-1;t3++) {
        C[t1][t2] += A[t1][t3] * B[t3][t2];;
      }
    }
  }
}
}

unsigned short int Compare_MMM() {
	//flops = 2*N^3/ex_time
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			for (int k = 0; k < N; k++)
				test[i][j] += A[i][k] * B[k][j];

	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			if (equal(C[i][j], test[i][j]) == 1)
				return 1;

	return 0;
}

unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

int main(int argc, char **argv) {
    // Start Callgrind profiling
	struct timespec start, end;
  	uint64_t diff;

	cpu_set_t mask;
	CPU_ZERO(&mask);
	CPU_SET(0,&mask);
	if(sched_setaffinity(0,sizeof(mask),&mask) == -1)
			printf("WARNING: Could not set CPU Affinity, continuing...\n");
    //N = atoi(argv[1]);
    MMM_init();

    CALLGRIND_START_INSTRUMENTATION;// Start Callgrind profiling
    CALLGRIND_TOGGLE_COLLECT;

	clock_gettime(CLOCK_MONOTONIC, &start);	/* mark start time */
    MMM_default();
	clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */

    CALLGRIND_TOGGLE_COLLECT; // Stop Callgrind profiling
    CALLGRIND_STOP_INSTRUMENTATION;

    if ( Compare_MMM() == 0)
	    printf("\nCorrect Result\n");
    else 
	    printf("\nINcorrect Result\n");

	diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
  	printf("%llu\n", (long long unsigned int) diff);

	
	_mm_free(C);
	_mm_free(test);
	_mm_free(A);
	_mm_free(B);
	_mm_free(Btranspose);


    return 0;
}
