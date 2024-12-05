#include <math.h>
#define ceild(n,d)  (((n)<0) ? -((-(n))/(d)) : ((n)+(d)-1)/(d))
#define floord(n,d) (((n)<0) ? -((-(n)+(d)-1)/(d)) : (n)/(d))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

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

#include <valgrind/callgrind.h>

#define BILLION 1000000000L
#define N 128
#define EPSILON 0.01

float **A, *u1, *v1, *u2, *v2, **test_A;

void gemver_init() {
    float e = 0.1234, p = 0.7264;

    // Allocate and initialize `A`
    A = (float **)_mm_malloc(N * sizeof(float *), 64);
    test_A = (float **)_mm_malloc(N * sizeof(float *), 64);
    for (int i = 0; i < N; i++) {
        A[i] = (float *)_mm_malloc(N * sizeof(float), 64);
        test_A[i] = (float *)_mm_malloc(N * sizeof(float), 64);
        for (int j = 0; j < N; j++) {
            A[i][j] = 0.0f;  // Example initialization
            test_A[i][j] = A[i][j];    // Copy initial values for comparison
        }
    }

    // Allocate and initialize vectors `u1`, `v1`, `u2`, `v2`
    u1 = (float *)_mm_malloc(N * sizeof(float), 64);
    v1 = (float *)_mm_malloc(N * sizeof(float), 64);
    u2 = (float *)_mm_malloc(N * sizeof(float), 64);
    v2 = (float *)_mm_malloc(N * sizeof(float), 64);
    for (int i = 0; i < N; i++) {
        u1[i] = (i % 7) + p;  // Example initialization
        v1[i] = (i % 5) - e;
        u2[i] = (i % 3) + e;
        v2[i] = (i % 4) - p;
    }
}

void gemver() {
  int t1, t2;
 register int lbv, ubv;
/*@ begin Loop(
transform ScalarReplace(dtype='float', overwrite_arr='')
if (N >= 1) {
  for (t1=0;t1<=N-1-5;t1+=6) {
    for (t2=0;t2<=N-1;t2++) {
      A[t1][t2] += u1[t1] * v1[t2] + u2[t1] * v2[t2];;
      A[(t1+1)][t2] += u1[(t1+1)] * v1[t2] + u2[(t1+1)] * v2[t2];;
      A[(t1+2)][t2] += u1[(t1+2)] * v1[t2] + u2[(t1+2)] * v2[t2];;
      A[(t1+3)][t2] += u1[(t1+3)] * v1[t2] + u2[(t1+3)] * v2[t2];;
      A[(t1+4)][t2] += u1[(t1+4)] * v1[t2] + u2[(t1+4)] * v2[t2];;
      A[(t1+5)][t2] += u1[(t1+5)] * v1[t2] + u2[(t1+5)] * v2[t2];;
    }
  }
  for (;t1<=N-1;t1++) {
    for (t2=0;t2<=N-1;t2++) {
      A[t1][t2] += u1[t1] * v1[t2] + u2[t1] * v2[t2];;
    }
  }
}
) @*/{
  float v21, v11, A1, A3, A2, A5, A4, A6;
  float u11, u21;
  if (N>=1) {
    for (t1=0; t1<=N-1-5; t1=t1+6) {
      for (t2=0; t2<=N-1; t2++ ) {
        A1=A[(t1+3)][t2];
        A2=A[(t1+1)][t2];
        A3=A[(t1+5)][t2];
        A4=A[t1][t2];
        v11=v1[t2];
        A5=A[(t1+2)][t2];
        v21=v2[t2];
        A6=A[(t1+4)][t2];
        {
          A4=A4+u1[t1]*v11+u2[t1]*v21;
          A2=A2+u1[(t1+1)]*v11+u2[(t1+1)]*v21;
          A5=A5+u1[(t1+2)]*v11+u2[(t1+2)]*v21;
          A1=A1+u1[(t1+3)]*v11+u2[(t1+3)]*v21;
          A6=A6+u1[(t1+4)]*v11+u2[(t1+4)]*v21;
          A3=A3+u1[(t1+5)]*v11+u2[(t1+5)]*v21;
        }
        A[(t1+3)][t2]=A1;
        A[(t1+1)][t2]=A2;
        A[(t1+5)][t2]=A3;
        A[t1][t2]=A4;
        A[(t1+2)][t2]=A5;
        A[(t1+4)][t2]=A6;
      }
    }
    for (; t1<=N-1; t1++ ) {
      for (t2=0; t2<=N-1; t2++ ) {
        A4=A[t1][t2];
        {
          A4=A4+u1[t1]*v1[t2]+u2[t1]*v2[t2];
          ;
        }
        A[t1][t2]=A4;
      }
    }
  }
}
/*@ end @*/
}

unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

unsigned short int Compare_gemver() {
    // Compute reference `test_A`
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            test_A[i][j] += u1[i] * v1[j] + u2[i] * v2[j];

    // Compare `A` with `test_A`
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            if (equal(A[i][j], test_A[i][j]) == 1)
                return 1;

    return 0;
}

int main(int argc, char **argv) {
    struct timespec start, end;
    uint64_t diff;

    gemver_init();

    CALLGRIND_START_INSTRUMENTATION;
    CALLGRIND_TOGGLE_COLLECT;

    clock_gettime(CLOCK_MONOTONIC, &start);
    gemver();
    clock_gettime(CLOCK_MONOTONIC, &end);

    CALLGRIND_TOGGLE_COLLECT;
    CALLGRIND_STOP_INSTRUMENTATION;

    if (Compare_gemver() == 0)
        printf("Correct Result\n");
    else
        printf("Incorrect Result\n");

    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
    printf("Execution time: %llu ns\n", (long long unsigned int)diff);

    // Free allocated memory
    for (int i = 0; i < N; i++) {
        _mm_free(A[i]);
        _mm_free(test_A[i]);
    }
    _mm_free(A);
    _mm_free(test_A);
    _mm_free(u1);
    _mm_free(v1);
    _mm_free(u2);
    _mm_free(v2);

    return 0;
}

