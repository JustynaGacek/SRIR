GCC = gcc
GUPC  = gupc
CFLAGS = -lm
PROGRAM = LU
DIMENSION = 3
NPROCS = 4

all:
	$(GCC) $(CFLAGS) -o generateMatrix generateMatrix.c
	$(GUPC) $(CFLAGS) -o $(PROGRAM) LU.c
data:
	chmod 764 ./generateMatrix
	./generateMatrix ${DIMENSION}
run:
	chmod 764 ./LU
	./LU -n ${NPROCS} data.txt
clean:
	rm *.out data.txt
	
