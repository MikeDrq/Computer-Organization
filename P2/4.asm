.data
	symbol: .space 28
	array: .space 28
	str_enter: .asciiz "\n"
	str_space: .asciiz " "
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,0 #index
	jal FullArray
	li $v0,10
	syscall

FullArray:
	sw $ra,0($sp)
	addi $sp,$sp,-4
	li $t1,0  #i
	blt $t0,$s0,else
		loop_one:
			sll $t2,$t1,2
			lw $a0,array($t2)
			li $v0,1
			syscall
			la $a0,str_space
			li $v0,4
			syscall
			addi $t1,$t1,1
			beq $t1,$s0,out
				j loop_one
			out:
			la $a0,str_enter
			li $v0,4
			syscall
			addi $sp,$sp,4
			lw $ra,0($sp)
		jr $ra	
	else:
		loop_two:
			sll $t2,$t1,2
			lw $t3,symbol($t2)
			bne $t3,0,else_two
				sll $t3,$t0,2
				addi $t4,$t1,1
				sw $t4,array($t3)
				sll $t3,$t1,2
				li $t4,1
				sw $t4,symbol($t3)
				sw $t0,0($sp)
				addi $sp,$sp,-4
				addi $t0,$t0,1
				sw $t1,0($sp)
				addi $sp,$sp,-4
				jal FullArray
				addi $sp,$sp,4
				lw $t1,0($sp)
				addi $sp,$sp,4
				lw $t0,0($sp)
				li $t5,0
				sll $t6,$t1,2
				sw $t5,symbol($t6)
			else_two:
				addi $t1,$t1,1	
				beq $t1,$s0,outloop
				j loop_two
			outloop:
				addi $sp,$sp,4
				lw $ra,0($sp)
				jr $ra
	
	

	