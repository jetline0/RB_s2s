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
#define EPSILON 0.01
#include <valgrind/callgrind.h>

#define BILLION 1000000000L
#define N 64

float ***A, **C, ***out, ***test;

void doitgen_init() {
    float e = 0.1234, p = 0.7264;

    // Allocate and initialize 3D array `A` and `out` (output array)
    A = (float ***)_mm_malloc(N * sizeof(float **), 64);
    out = (float ***)_mm_malloc(N * sizeof(float **), 64);
    test = (float ***)_mm_malloc(N * sizeof(float **), 64);

    for (int r = 0; r < N; r++) {
        A[r] = (float **)_mm_malloc(N * sizeof(float *), 64);
        out[r] = (float **)_mm_malloc(N * sizeof(float *), 64);
        test[r] = (float **)_mm_malloc(N * sizeof(float *), 64);

        for (int q = 0; q < N; q++) {
            A[r][q] = (float *)_mm_malloc(N * sizeof(float), 64);
            out[r][q] = (float *)_mm_malloc(N * sizeof(float), 64);
            test[r][q] = (float *)_mm_malloc(N * sizeof(float), 64);

            for (int s = 0; s < N; s++) {
                A[r][q][s] = (r + q + s) % 7 + e;  // Example initialization
            }

            for (int p = 0; p < N; p++) {
                out[r][q][p] = 0.0f;  // Initialize output array
                test[r][q][p] = 0.0f; // Initialize reference output
            }
        }
    }

    // Allocate and initialize matrix `C`
    C = (float **)_mm_malloc(N * sizeof(float *), 64);
    for (int s = 0; s < N; s++) {
        C[s] = (float *)_mm_malloc(N * sizeof(float), 64);
        for (int p = 0; p < N; p++) {
            C[s][p] = (s + p) % 5 - p;  // Example initialization
        }
    }
}

void doitgen() {
  int t1, t2, t3, t4;
 register int lbv, ubv;
if (N >= 1) {
  for (t1=0;t1<=N-1-3;t1+=4) {
    for (t2=0;t2<=N-1;t2++) {
      for (t3=0;t3<=N-1-2;t3+=3) {
        for (t4=0;t4<=N-1;t4++) {
          out[t1][t2][t3] += A[t1][t2][t4] * C[t4][t3];;
          out[(t1+1)][t2][t3] += A[(t1+1)][t2][t4] * C[t4][t3];;
          out[(t1+2)][t2][t3] += A[(t1+2)][t2][t4] * C[t4][t3];;
          out[(t1+3)][t2][t3] += A[(t1+3)][t2][t4] * C[t4][t3];;
          out[t1][t2][(t3+1)] += A[t1][t2][t4] * C[t4][(t3+1)];;
          out[(t1+1)][t2][(t3+1)] += A[(t1+1)][t2][t4] * C[t4][(t3+1)];;
          out[(t1+2)][t2][(t3+1)] += A[(t1+2)][t2][t4] * C[t4][(t3+1)];;
          out[(t1+3)][t2][(t3+1)] += A[(t1+3)][t2][t4] * C[t4][(t3+1)];;
          out[t1][t2][(t3+2)] += A[t1][t2][t4] * C[t4][(t3+2)];;
          out[(t1+1)][t2][(t3+2)] += A[(t1+1)][t2][t4] * C[t4][(t3+2)];;
          out[(t1+2)][t2][(t3+2)] += A[(t1+2)][t2][t4] * C[t4][(t3+2)];;
          out[(t1+3)][t2][(t3+2)] += A[(t1+3)][t2][t4] * C[t4][(t3+2)];;
        }
      }
      for (;t3<=N-1;t3++) {
        for (t4=0;t4<=N-1;t4++) {
          out[t1][t2][t3] += A[t1][t2][t4] * C[t4][t3];;
          out[(t1+1)][t2][t3] += A[(t1+1)][t2][t4] * C[t4][t3];;
          out[(t1+2)][t2][t3] += A[(t1+2)][t2][t4] * C[t4][t3];;
          out[(t1+3)][t2][t3] += A[(t1+3)][t2][t4] * C[t4][t3];;
        }
      }
    }
  }
  for (;t1<=N-1;t1++) {
    for (t2=0;t2<=N-1;t2++) {
      for (t3=0;t3<=N-1;t3++) {
        for (t4=0;t4<=N-1;t4++) {
          out[t1][t2][t3] += A[t1][t2][t4] * C[t4][t3];;
        }
      }
    }
  }
}
}

unsigned short int Compare_doitgen() {
    // Compute reference `test` array
    for (int r = 0; r < N; r++)
        for (int q = 0; q < N; q++)
            for (int p = 0; p < N; p++)
                for (int s = 0; s < N; s++)
                    test[r][q][p] += A[r][q][s] * C[s][p];

    // Compare `out` with `test`
    for (int r = 0; r < N; r++)
        for (int q = 0; q < N; q++)
            for (int p = 0; p < N; p++)
                if (fabs(out[r][q][p] - test[r][q][p]) / fabs(out[r][q][p]) >= EPSILON)
                    return 1;

    return 0;
}

int main(int argc, char **argv) {
    struct timespec start, end;
    uint64_t diff;

    doitgen_init();

    CALLGRIND_START_INSTRUMENTATION;
    CALLGRIND_TOGGLE_COLLECT;

    clock_gettime(CLOCK_MONOTONIC, &start);
    doitgen();
    clock_gettime(CLOCK_MONOTONIC, &end);

    CALLGRIND_TOGGLE_COLLECT;
    CALLGRIND_STOP_INSTRUMENTATION;

    if (Compare_doitgen() == 0)
        printf("Correct Result\n");
    else
        printf("Incorrect Result\n");

    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
    printf("Execution time: %llu ns\n", (long long unsigned int)diff);

    // Free allocated memory
    for (int r = 0; r < N; r++) {
        for (int q = 0; q < N; q++) {
            _mm_free(A[r][q]);
            _mm_free(out[r][q]);
            _mm_free(test[r][q]);
        }
        _mm_free(A[r]);
        _mm_free(out[r]);
        _mm_free(test[r]);
    }
    _mm_free(A);
    _mm_free(out);
    _mm_free(test);

    for (int s = 0; s < N; s++) {
        _mm_free(C[s]);
    }
    _mm_free(C);

    return 0;
}

