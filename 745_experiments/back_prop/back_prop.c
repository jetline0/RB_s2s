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
#define EPSILON 0.01


#include <valgrind/callgrind.h>

#define BILLION 1000000000L
#define M 128
#define Y 60
#define X 60
#define D 256

float **filter_FP, ***out, ***in_FP, **test_filter;

void backpropagation_init() {
    float e = 0.1234, p = 0.7264;

    // Allocate and initialize `filter_FP`
    filter_FP = (float **)_mm_malloc(M * sizeof(float *), 64);
    test_filter = (float **)_mm_malloc(M * sizeof(float *), 64);
    for (int m = 0; m < M; m++) {
        filter_FP[m] = (float *)_mm_malloc(D * sizeof(float), 64);
        test_filter[m] = (float *)_mm_malloc(D * sizeof(float), 64);
        for (int d = 0; d < D; d++) {
            filter_FP[m][d] = 0.0f;  // Initialize to zero
            test_filter[m][d] = 0.0f;  // Initialize to zero
        }
    }

    // Allocate and initialize `out` and `in_FP`
    out = (float ***)_mm_malloc(Y * sizeof(float **), 64);
    in_FP = (float ***)_mm_malloc(Y * sizeof(float **), 64);
    for (int y = 0; y < Y; y++) {
        out[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
        in_FP[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
        for (int x = 0; x < X; x++) {
            out[y][x] = (float *)_mm_malloc(M * sizeof(float), 64);
            in_FP[y][x] = (float *)_mm_malloc(D * sizeof(float), 64);
            for (int m = 0; m < M; m++) {
                out[y][x][m] = (m % 5) + e;  // Example initialization
            }
            for (int d = 0; d < D; d++) {
                in_FP[y][x][d] = (d % 7) - p;  // Example initialization
            }
        }
    }
}

void backpropagation() {
    #pragma scop
    for (int m = 0; m < M; m++)
        for (int d = 0; d < D; d++)
            for (int y = 0; y < Y; y++)
                for (int x = 0; x < X; x++)
                    filter_FP[m][d] += out[y][x][m] * in_FP[y][x][d];
    #pragma endscop
}

unsigned short int equal(float const a, float const b) {
	
	if (fabs(a-b)/fabs(a) < EPSILON)
		return 0; //success
	else
		return 1;
}

unsigned short int Compare_backpropagation() {
    // Compute reference `test_filter`
    for (int m = 0; m < M; m++)
        for (int d = 0; d < D; d++)
            for (int y = 0; y < Y; y++)
                for (int x = 0; x < X; x++)
                    test_filter[m][d] += out[y][x][m] * in_FP[y][x][d];

    // Compare `filter_FP` with `test_filter`
    for (int m = 0; m < M; m++)
        for (int d = 0; d < D; d++)
            if (equal(filter_FP[m][d], test_filter[m][d]) == 1)
                return 1;

    return 0;
}

int main(int argc, char **argv) {
    struct timespec start, end;
    uint64_t diff;

    backpropagation_init();

    CALLGRIND_START_INSTRUMENTATION;
    CALLGRIND_TOGGLE_COLLECT;

    clock_gettime(CLOCK_MONOTONIC, &start);
    backpropagation();
    clock_gettime(CLOCK_MONOTONIC, &end);

    CALLGRIND_TOGGLE_COLLECT;
    CALLGRIND_STOP_INSTRUMENTATION;

    if (Compare_backpropagation() == 0)
        printf("Correct Result\n");
    else
        printf("Incorrect Result\n");

    diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
    printf("Execution time: %llu ns\n", (long long unsigned int)diff);

    // Free allocated memory
    for (int m = 0; m < M; m++) {
        _mm_free(filter_FP[m]);
        _mm_free(test_filter[m]);
    }
    _mm_free(filter_FP);
    _mm_free(test_filter);

    for (int y = 0; y < Y; y++) {
        for (int x = 0; x < X; x++) {
            _mm_free(out[y][x]);
            _mm_free(in_FP[y][x]);
        }
        _mm_free(out[y]);
        _mm_free(in_FP[y]);
    }
    _mm_free(out);
    _mm_free(in_FP);

    return 0;
}

