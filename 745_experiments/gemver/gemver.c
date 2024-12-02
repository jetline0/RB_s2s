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
    #pragma scop
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            A[i][j] += u1[i] * v1[j] + u2[i] * v2[j];
    #pragma endscop
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

