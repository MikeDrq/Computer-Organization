.data
	str_1:.asciiz "move disk" 
	str_2:.asciiz "from"
	str_3:.asciiz "to"
	spa:.asciiz " "
	ent:.asciiz "\n"
	A:.asciiz "ABC"
.macro push(%save)
	sw %save,0($sp)
	addi $sp,$sp,-4
.end_macro 
.macro pop(%store)
	addi $sp,$sp,4
	lw %store,0($sp)
.end_macro	
.text
	li $v0,5
	syscall
	move $s0,$v0
	lb $s1,A($0)
	li $t0,1
	lb $s2,A($t0)
	li $t0,2
	lb $s3,A($t0)
	jal hanoi
	li $v0,10
	syscall
	
	
hanoi:
	push($ra)
	
	bne $s0,0,else
	move $s4,$s1
	move $s5,$s2
	jal mo
	move $s4,$s2
	move $s5,$s3
	jal mo
	pop($ra)
	jr $ra
	
	else:
	push($s1)
	push($s2)
	push($s3)
	push($s0)
	addi $s0,$s0,-1
	jal hanoi
	pop($s0)
	pop($s3)
	pop($s2)
	pop($s1)
	move $s4,$s1
	move $s5,$s2
	push($s1)
	push($s2)
	push($s3)
	push($s0)
	jal mo
	pop($s0)
	move $t0,$s0
	addi $s0,$s0,-1
	pop($s3)
	pop($s2)
	pop($s1)
	move $t1,$s1
	move $t2,$s2
	move $t3,$s3
	push($t1)
	push($t2)
	push($t3)
	push($t0)
	move $t7,$s1
	move $s1,$s3
	move $s3,$t7
	jal hanoi
	pop($s0)
	pop($s3)
	pop($s2)
	pop($s1)
	move $s4,$s2
	move $s5,$s3
	push($s1)
	push($s2)
	push($s3)
	push($s0)
	jal mo
	pop($s0)
	move $t0,$s0
	addi $s0,$s0,-1
	pop($s3)
	pop($s2)
	pop($s1)
	push($s1)
	push($s2)
	push($s3)
	push($t0)
	jal hanoi
	pop($s0)
	pop($s3)
	pop($s2)
	pop($s1)
	pop($ra)
	jr $ra	
mo:
 	push($ra)
 	la $a0,str_1
 	li $v0,4
 	syscall
 	la $a0,spa
 	li $v0,4
 	syscall
 	move $a0,$s0
 	li $v0,1
 	syscall
 	la $a0,spa
 	li $v0,4
 	syscall
 	la $a0,str_2
 	li $v0,4
 	syscall
 	la $a0,spa
 	li $v0,4
 	syscall
 	move $a0,$s4
 	li $v0,11
 	syscall
 	la $a0,spa
 	li $v0,4
 	syscall
 	la $a0,str_3
 	li $v0,4
 	syscall
 	la $a0,spa
 	li $v0,4
 	syscall
 	move $a0,$s5
 	li $v0,11
 	syscall
 	la $a0,ent
 	li $v0,4
 	syscall
 	pop($ra)
 	jr $ra
