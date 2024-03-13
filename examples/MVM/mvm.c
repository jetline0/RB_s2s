#define N 256 

int M2;
float  X[N], Y[N][N], test1[N];//, *A1_vec;
void initialization_MVM() {

	float e = 0.1234, p = 0.7264, r = 0.11;
	
	for (unsigned int i = 0; i != N; i++)
		X[i] = ((i ) % 9) + p;

	for (int i=0;i<N;i++)
		for (int j=0;j<N;j++)
			Y[i][j] = ((j) % 6) + e;

	for (unsigned int j = 0; j != N; j++) {
		
		test1[j] = 0.0;
	}
}

int main(int argc,char **argv) {

    initialization_MVM();

	#pragma scop
    for (int i=0;i<N;i++) {
		for (int j=0;j<N;j++){
			test1[i]+=Y[i][j]+X[j];
		}
	}
	#pragma endscop

    return 0;
}