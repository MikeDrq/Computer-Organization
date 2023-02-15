.data
	array:.space 32
	num:.space 128
	spa:.asciiz " "
	ent:.asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,0
	loop:
	li $v0,12
	syscall
	move $s1,$v0
	li $t1,0
	loop_j:
	sll $t2,$t1,2
	lb $t3,array($t1)
	bne $t3,$s1,else
	lw $t4,num($t2)
	addi $t4,$t4,1
	sw $t4,num($t2)
	j con
	else:
	bne $t3,0,lo
	sb $s1,array($t1)
	addi $t4,$0,1
	sw $t4,num($t2)
	j con
	lo:
	addi $t1,$t1,1
	blt $t1,$s0,loop_j
	
	con:
	addi $t0,$t0,1
	blt $t0,$s0,loop
	li $t0,0
	out:
	sll $t1,$t0,2
	lb $t2,array($t0)
	lw $t3,num($t1)
	beq $t2,0,end
	move $a0,$t2
	li $v0,11
	syscall
	la $a0,spa
	li $v0,4
	syscall
	move $a0,$t3
	li $v0,1
	syscall
	la $a0,ent
	li $v0,4
	syscall
	addi $t0,$t0,1
	bne $t0,$s0,out
	
	end:
	li $v0,10
	syscall
