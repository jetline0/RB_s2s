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
#define M 128
#define Y 52
#define X 52
#define D 256
float  ***out, ***test, ***in, **filter;

void conv2d_init() {
        
        float e = 0.1234, p = 0.7264, r = 0.11;
        
        out = (float**) _mm_malloc( Y * sizeof(float *),64);
        test = (float**) _mm_malloc(Y * sizeof(float *),64);
        in = (float**) _mm_malloc( Y * sizeof(float *),64);
        filter = (float**) _mm_malloc( M * sizeof(float *),64);
        
        for (int y = 0; y < Y; y++) {
            out[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
            test[y] = (float **)_mm_malloc(X * sizeof(float *), 64);
            in[y] = (float **)_mm_malloc(X * sizeof(float *), 64);

            for (int x = 0; x < X; x++) {
                out[y][x] = (float *)_mm_malloc(M * sizeof(float), 64);
                test[y][x] = (float *)_mm_malloc(M * sizeof(float), 64);
                in[y][x] = (float *)_mm_malloc(D * sizeof(float), 64);

                for (int m = 0; m < M; m++) {
                    out[y][x][m] = 0.0f; // Initialize to zero
                    test[y][x][m] = 0.0f; // Initialize to zero
                }
                for (int d = 0; d < D; d++) {
                    in[y][x][d] = (d % 7) - p; // Example initialization
                }
            }
        }

        filter = (float **)_mm_malloc(M * sizeof(float *), 64);
        for (int m = 0; m < M; m++) {
            filter[m] = (float *)_mm_malloc(D * sizeof(float), 64);
            for (int d = 0; d < D; d++) {
                filter[m][d] = (d % 5) + e; // Example initialization
            }
        }
}



void conv2d_default(){
  int t1, t2, t3, t4;
 register int lbv, ubv;
/*@ begin Loop(
transform ScalarReplace(dtype='float', overwrite_arr='in')
if ((D >= 1) && (M >= 1) && (X >= 1) && (Y >= 1)) {
  for (t1=0;t1<=Y-1-3;t1+=4) {
    for (t2=0;t2<=X-1;t2++) {
      for (t3=0;t3<=M-1-2;t3+=3) {
        for (t4=0;t4<=D-1;t4++) {
          out[t1][t2][t3] += in[t1][t2][t4] * filter[t3][t4];;
          out[(t1+1)][t2][t3] += in[(t1+1)][t2][t4] * filter[t3][t4];;
          out[(t1+2)][t2][t3] += in[(t1+2)][t2][t4] * filter[t3][t4];;
          out[(t1+3)][t2][t3] += in[(t1+3)][t2][t4] * filter[t3][t4];;
          out[t1][t2][(t3+1)] += in[t1][t2][t4] * filter[(t3+1)][t4];;
          out[(t1+1)][t2][(t3+1)] += in[(t1+1)][t2][t4] * filter[(t3+1)][t4];;
          out[(t1+2)][t2][(t3+1)] += in[(t1+2)][t2][t4] * filter[(t3+1)][t4];;
          out[(t1+3)][t2][(t3+1)] += in[(t1+3)][t2][t4] * filter[(t3+1)][t4];;
          out[t1][t2][(t3+2)] += in[t1][t2][t4] * filter[(t3+2)][t4];;
          out[(t1+1)][t2][(t3+2)] += in[(t1+1)][t2][t4] * filter[(t3+2)][t4];;
          out[(t1+2)][t2][(t3+2)] += in[(t1+2)][t2][t4] * filter[(t3+2)][t4];;
          out[(t1+3)][t2][(t3+2)] += in[(t1+3)][t2][t4] * filter[(t3+2)][t4];;
        }
      }
      for (;t3<=M-1;t3++) {
        for (t4=0;t4<=D-1;t4++) {
          out[t1][t2][t3] += in[t1][t2][t4] * filter[t3][t4];;
          out[(t1+1)][t2][t3] += in[(t1+1)][t2][t4] * filter[t3][t4];;
          out[(t1+2)][t2][t3] += in[(t1+2)][t2][t4] * filter[t3][t4];;
          out[(t1+3)][t2][t3] += in[(t1+3)][t2][t4] * filter[t3][t4];;
        }
      }
    }
  }
  for (;t1<=Y-1;t1++) {
    for (t2=0;t2<=X-1;t2++) {
      for (t3=0;t3<=M-1;t3++) {
        for (t4=0;t4<=D-1;t4++) {
          out[t1][t2][t3] += in[t1][t2][t4] * filter[t3][t4];;
        }
      }
    }
  }
}
) @*/{
  float out1, out2, out3, out4, out5, out6, out7, out8;
  float out9, in1, filter1, filter3, filter2, out12, out10, out11;
  if ((D>=1)&&(M>=1)&&(X>=1)&&(Y>=1)) {
    for (t1=0; t1<=Y-1-3; t1=t1+4) {
      for (t2=0; t2<=X-1; t2++ ) {
        for (t3=0; t3<=M-1-2; t3=t3+3) {
          out1=out[t1][t2][(t3+2)];
          out3=out[(t1+1)][t2][(t3+1)];
          out4=out[(t1+3)][t2][t3];
          out5=out[(t1+1)][t2][t3];
          out6=out[(t1+2)][t2][(t3+2)];
          out2=out[(t1+3)][t2][(t3+1)];
          out7=out[(t1+1)][t2][(t3+2)];
          out8=out[t1][t2][t3];
          out9=out[(t1+2)][t2][t3];
          out10=out[(t1+2)][t2][(t3+1)];
          out11=out[(t1+3)][t2][(t3+2)];
          out12=out[t1][t2][(t3+1)];
          for (t4=0; t4<=D-1; t4++ ) {
            filter1=filter[t3][t4];
            filter2=filter[(t3+2)][t4];
            filter3=filter[(t3+1)][t4];
            {
              in1=in[(t1+2)][t2][t4];
              out9=out9+in1*filter1;
              out10=out10+in1*filter3;
              out6=out6+in1*filter2;
            }
            {
              in1=in[(t1+3)][t2][t4];
              out4=out4+in1*filter1;
              out2=out2+in1*filter3;
              out11=out11+in1*filter2;
            }
            {
              in1=in[t1][t2][t4];
              out8=out8+in1*filter1;
              out12=out12+in1*filter3;
              out1=out1+in1*filter2;
            }
            {
              ;
              ;
              ;
              ;
              ;
              ;
              ;
              ;
              ;
              ;
              ;
              ;
            }
            {
              in1=in[(t1+1)][t2][t4];
              out5=out5+in1*filter1;
              out3=out3+in1*filter3;
              out7=out7+in1*filter2;
            }
          }
          out[t1][t2][(t3+2)]=out1;
          out[(t1+1)][t2][(t3+1)]=out3;
          out[(t1+3)][t2][t3]=out4;
          out[(t1+1)][t2][t3]=out5;
          out[(t1+2)][t2][(t3+2)]=out6;
          out[(t1+3)][t2][(t3+1)]=out2;
          out[(t1+1)][t2][(t3+2)]=out7;
          out[t1][t2][t3]=out8;
          out[(t1+2)][t2][t3]=out9;
          out[(t1+2)][t2][(t3+1)]=out10;
          out[(t1+3)][t2][(t3+2)]=out11;
          out[t1][t2][(t3+1)]=out12;
        }
        for (; t3<=M-1; t3++ ) {
          out4=out[(t1+3)][t2][t3];
          out9=out[(t1+2)][t2][t3];
          out5=out[(t1+1)][t2][t3];
          out8=out[t1][t2][t3];
          for (t4=0; t4<=D-1; t4++ ) {
            filter1=filter[t3][t4];
            {
              out9=out9+in[(t1+2)][t2][t4]*filter1;
            }
            {
              out4=out4+in[(t1+3)][t2][t4]*filter1;
            }
            {
              out8=out8+in[t1][t2][t4]*filter1;
            }
            {
              ;
              ;
              ;
              ;
            }
            {
              out5=out5+in[(t1+1)][t2][t4]*filter1;
            }
          }
          out[(t1+3)][t2][t3]=out4;
          out[(t1+2)][t2][t3]=out9;
          out[(t1+1)][t2][t3]=out5;
          out[t1][t2][t3]=out8;
        }
      }
    }
    for (; t1<=Y-1; t1++ ) {
      for (t2=0; t2<=X-1; t2++ ) {
        for (t3=0; t3<=M-1; t3++ ) {
          out8=out[t1][t2][t3];
          for (t4=0; t4<=D-1; t4++ ) {
            {
              out8=out8+in[t1][t2][t4]*filter[t3][t4];
            }
            {
              ;
            }
          }
          out[t1][t2][t3]=out8;
        }
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

unsigned short int Compare_conv2d() {
        //flops = ??
        for (int y = 0; y < Y; y++)
            for (int x = 0; x < X; x++)
                for (int m = 0; m < M; m++)
                    for (int d = 0; d < D; d++)
                        test[y][x][m] += in[y][x][d] * filter[m][d];

        for (int y = 0; y < Y; y++)
            for (int x = 0; x < X; x++)
                for (int m = 0; m < M; m++)
                    if (equal(out[y][x][m], test[y][x][m]) == 1)
                        return 1;

        return 0;
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
    conv2d_init();

    CALLGRIND_START_INSTRUMENTATION;// Start Callgrind profiling
    CALLGRIND_TOGGLE_COLLECT;

	clock_gettime(CLOCK_MONOTONIC, &start);	/* mark start time */
    conv2d_default();
	clock_gettime(CLOCK_MONOTONIC, &end);	/* mark the end time */

    CALLGRIND_TOGGLE_COLLECT; // Stop Callgrind profiling
    CALLGRIND_STOP_INSTRUMENTATION;

    if ( Compare_conv2d() == 0)
	    printf("\nCorrect Result\n");
    else 
	    printf("\nINcorrect Result\n");

	diff = BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec;
        printf("Execution time: %llu ns\n", (long long unsigned int)diff);

	
	_mm_free(out);
	_mm_free(test);
	_mm_free(in);
	_mm_free(filter);


    return 0;
}
