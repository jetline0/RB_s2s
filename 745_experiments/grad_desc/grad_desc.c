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
    #pragma scop
    for (int y = 0; y < Y; y++)
        for (int x = 0; x < X; x++)
            for (int d = 0; d < D; d++)
                for (int m = 0; m < M; m++)
                    in[y][x][d] += out[y][x][m] * filter[m][d];
    #pragma endscop
}

unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

unsigned short int Compare_gradient_descent() {
        //flops = ??
        for (int m = 0; m < M; m++)
            for (int y = 0; y < Y; y++)
                for (int x = 0; x < X; x++)
                    for (int d = 0; d < D; d++)
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

