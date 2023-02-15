.data
	array:.space 400
	ent:.asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $v0,5
	syscall
	move $s1,$v0
	li $t0,0
	loop:
	bge $t0,$s0,out
	li $t2,1
	sll $t1,$t0,2
	sw $t2,array($t1)
	addi $t0,$t0,1
	j loop
	out:
	li $t0,0 #i
	li $t1,0 #cnt
	li $t2,0 #mark
	li $t7,1
	while:
	div $t0,$s0
	mfhi $t0
	addi $s2,$s1,-1
	bne $t1,$s2,else
	sll $t5,$t0,2
	lw $t4,array($t5)
	bne $t4,$t7,else_1
	sw $0,array($t5)
	li $t1,0
	addi $t2,$t2,1
	addi $t0,$t0,1
	move $a0,$t0
	li $v0,1
	syscall
	la $a0,ent
	li $v0,4
	syscall
	j judge
	else_1:
	addi $t0,$t0,1
	j judge
	else:
	sll $t5,$t0,2
	lw $t4,array($t5)
	bne $t4,$t7,else_2
	addi $t0,$t0,1
	addi $t1,$t1,1
	j judge
	else_2:
	addi $t0,$t0,1
	judge:
	blt $t2,$s0,while
	j end
	j while
	end:
	li $v0,10
	syscall