sumv3: sum_v3.o soma.o adicional.o
	gcc -o sumv3 sum_v3.o soma.o adicional.o
sum_v3.o: sum_v3.c soma.h
	gcc -c sum_v3.c
soma.o: soma.c
	gcc -c soma.c
adicional.o: adicional.c
	gcc -c adicional.c