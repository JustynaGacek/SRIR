GCC = gcc
GUPC  = gupc
CFLAGS = -lm
PROGRAM = LU.out
DIMENSION = 500
NPROCS = 4

all:
	#source /opt/nfs/config/source_gupc.sh
	$(GCC) $(CFLAGS) -o generateMatrix.out generateMatrix.c
	$(GUPC) $(CFLAGS) -o $(PROGRAM) LU.c
run:
	./generateMatrix.out ${DIMENSION}
	./$(PROGRAM) -n ${NPROCS} data.txt
clean:
	rm *.out data.txt
	
