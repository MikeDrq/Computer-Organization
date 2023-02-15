.data
	array:.space 32
	symbol:.space 32
	spa:.asciiz " "
	ent:.asciiz "\n"
.macro push(%store)
	sw %store,0($sp)
	addi $sp,$sp,-4
.end_macro
.macro pop(%store)
	addi $sp,$sp,4
	lw %store,0($sp)
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0 #n
	li $s1,0 #k
	move $s2,$s0 #index
	addi $s2,$s2,-1
	jal FullArray
	li $v0,10
	syscall
	
FullArray:
	push($ra)
	addi $t0,$s0,-1 #i
	bge $s2,$0,make
	li $t0,0
	print:
	bge $t0,$s0,out
	sll $t2,$t0,2
	lw $a0,array($t2)
	li $v0,1
	syscall
	addi $t7,$s0,-1
	beq $t0,$t7,no
	la $a0,spa
	li $v0,4
	syscall
	no:
	addi $t0,$t0,1
	j print
	out:
	la $a0,ent
	li $v0,4
	syscall
	pop($ra)
	jr $ra
	make:
	loop:
	blt $t0,0,re
	sll $t2,$t0,2
	lw $t3,symbol($t2)
	bne $t3,0,con
	sll $t2,$s1,2
	addi $t4,$t0,1
	sw $t4,array($t2)
	add $s1,$s1,1
	sll $t2,$t0,2
	li $t7,1
	sw $t7,symbol($t2)
	push($t0)
	push($s2)
	addi $s2,$s2,-1
	jal FullArray
	pop($s2)
	pop($t0)
	sll $t2,$t0,2
	sw $0,symbol($t2)
	add $s1,$s1,-1
	con:
	addi $t0,$t0,-1
	j loop
	re:
	pop($ra)
	jr $ra