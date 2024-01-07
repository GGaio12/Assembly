		.data

		.text
		.globl	manipula_tabela
manipula_tabela:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	li $t0, 0
	li $t2, 2
	loop:
		beq $t0, $a1, end_mul_tab
		lw $t1, 0($a0)
		mul $t1, $t1, $t2
		sw $t1, 0($a0)
		addi $a0, $a0, 4
		addi $t0, $t0, 1
		j loop

	end_mul_tab:
		jal inverte_tabela
		lw $ra ,0($sp)
		jr	$ra

inverte_tabela:
	mul $t0, $a1, 4
	addi $t0, $t0, 4
	subu $sp, $sp, $t0
	sw $ra, 0($sp)
	sw $a0, 4($sp)
