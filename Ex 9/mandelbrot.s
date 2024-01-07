	.data
	
	.text
	.globl	Mandelbrot

	
Mandelbrot:
	# start of prologue
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	# end of prologue 

	li $t0, 0
	move $t1, $a1
	move $t4, $a0
	loop:
		beq $t0, $t1, end_Mandelbrot
		move $a0, $t0
		jal Square
		move $t2, $v0
		add $t3, $t2, $t4
		addi $t0, $t0, 1
		j loop

		
	end_Mandelbrot:
		lw $ra, 0($sp)
		move $v0, $t3
		jr	$ra


Square:
	mul $v0, $a0, $a0
	jr $ra