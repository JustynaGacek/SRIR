#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void main (int argc, char* argv[]) {
	
	long matrix_size;
    srand(time(NULL));

  	if(argc !=2) {
		printf("Please define the size of matrix (N x N) where N = ");
		scanf("%lu",&matrix_size);
	}
	else{
		matrix_size=atol(argv[1]);
    }
  	  
	FILE *file = fopen("data.txt", "w");
	if (file == NULL) {	
   		 printf("Error during opening file!\n");
   		 return;
	}
	else {
		fprintf(file, "%lu\n", matrix_size);
		long i, j;
		for(i = 0 ; i < matrix_size ; i++) {
			for(j = 0; j < matrix_size ; j++) {
			    fprintf(file, "%2.1f ", (double)(rand()%2)+1);
			}
			fprintf(file, "\n");
		}
	}
  	return;
}
