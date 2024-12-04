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
#define M 128
#define Y 52
#define X 52
#define D 256
#define EPSILON 0.01

float ***in, ***out, ***test, **filter;

void gradient_descent_init() {
    float e = 0.1234, p = 0.7264;

    // Allocate and initialize `in`
    in = (float ***)_mm_malloc(Y * sizeof(float **), 64);
    test = (float ***)_mm_malloc(Y * sizeof(float **), 64);
    out = (float ***)_mm_malloc(Y * sizeof(float **), 64);
    for (int y = 0; y < Y; y++) {
        in[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
        test[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
        out[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
        for (int x = 0; x < X; x++) {
            in[y][x] = (float *)_mm_malloc(D * sizeof(float), 64);
            test[y][x] = (float *)_mm_malloc(D * sizeof(float), 64);
            out[y][x] = (float *)_mm_malloc(M * sizeof(float), 64);
            for (int d = 0; d < D; d++) in[y][x][d] = 0.0f;
            for (int d = 0; d < D; d++) test[y][x][d] = 0.0f;
            for (int m = 0; m < M; m++) out[y][x][m] = (m % 5) + e;
        }
    }

    // Allocate and initialize `filter`
    filter = (float **)_mm_malloc(M * sizeof(float *), 64);
    for (int m = 0; m < M; m++) {
        filter[m] = (float *)_mm_malloc(D * sizeof(float), 64);
        for (int d = 0; d < D; d++) filter[m][d] = (d % 3) + e;
    }
}

void gradient_descent() {
  int t1, t2, t3, t4;
 register int lbv, ubv;
if ((D >= 1) && (M >= 1) && (X >= 1) && (Y >= 1)) {
  for (t1=0;t1<=Y-1-3;t1+=4) {
    for (t2=0;t2<=X-1;t2++) {
      for (t3=0;t3<=D-1-2;t3+=3) {
        for (t4=0;t4<=M-1;t4++) {
          in[t1][t2][t3] += out[t1][t2][t4] * filter[t4][t3];;
          in[(t1+1)][t2][t3] += out[(t1+1)][t2][t4] * filter[t4][t3];;
          in[(t1+2)][t2][t3] += out[(t1+2)][t2][t4] * filter[t4][t3];;
          in[(t1+3)][t2][t3] += out[(t1+3)][t2][t4] * filter[t4][t3];;
          in[t1][t2][(t3+1)] += out[t1][t2][t4] * filter[t4][(t3+1)];;
          in[(t1+1)][t2][(t3+1)] += out[(t1+1)][t2][t4] * filter[t4][(t3+1)];;
          in[(t1+2)][t2][(t3+1)] += out[(t1+2)][t2][t4] * filter[t4][(t3+1)];;
          in[(t1+3)][t2][(t3+1)] += out[(t1+3)][t2][t4] * filter[t4][(t3+1)];;
          in[t1][t2][(t3+2)] += out[t1][t2][t4] * filter[t4][(t3+2)];;
          in[(t1+1)][t2][(t3+2)] += out[(t1+1)][t2][t4] * filter[t4][(t3+2)];;
          in[(t1+2)][t2][(t3+2)] += out[(t1+2)][t2][t4] * filter[t4][(t3+2)];;
          in[(t1+3)][t2][(t3+2)] += out[(t1+3)][t2][t4] * filter[t4][(t3+2)];;
        }
      }
      for (;t3<=D-1;t3++) {
        for (t4=0;t4<=M-1;t4++) {
          in[t1][t2][t3] += out[t1][t2][t4] * filter[t4][t3];;
          in[(t1+1)][t2][t3] += out[(t1+1)][t2][t4] * filter[t4][t3];;
          in[(t1+2)][t2][t3] += out[(t1+2)][t2][t4] * filter[t4][t3];;
          in[(t1+3)][t2][t3] += out[(t1+3)][t2][t4] * filter[t4][t3];;
        }
      }
    }
  }
  for (;t1<=Y-1;t1++) {
    for (t2=0;t2<=X-1;t2++) {
      for (t3=0;t3<=D-1;t3++) {
        for (t4=0;t4<=M-1;t4++) {
          in[t1][t2][t3] += out[t1][t2][t4] * filter[t4][t3];;
        }
      }
    }
  }
}
}

unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

unsigned short int Compare_gradient_descent() {
        //flops = ??
        for (int y = 0; y < Y; y++)
            for (int x = 0; x < X; x++)
                for (int d = 0; d < D; d++)
                    for (int m = 0; m < M; m++)
                        test[y][x][d] += out[y][x][m] * filter[m][d];

        for (int y = 0; y < Y; y++)
            for (int x = 0; x < X; x++)
                for (int m = 0; m < M; m++)
                    if (equal(in[y][x][m], test[y][x][m]) == 1)
                        return 1;

        return 0;
}

int main(int argc, char **argv) {
    struct timespec start, end;
    uint64_t diff;

    gradient_descent_init();

    CALLGRIND_START_INSTRUMENTATION;
    CALLGRIND_TOGGLE_COLLECT;

    clock_gettime(CLOCK_MONOTONIC, &start);
    gradient_descent();
    clock_gettime(CLOCK_MONOTONIC, &end);

    CALLGRIND_TOGGLE_COLLECT;
    CALLGRIND_STOP_INSTRUMENTATION;

    if (Compare_gradient_descent() == 0)
        printf("Correct Result\n");
    else
        printf("Incorrect Result\n");

    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
    printf("Execution time: %llu ns\n", (long long unsigned int)diff);

    _mm_free(in);
    _mm_free(out);
    _mm_free(filter);

    return 0;
}

