.data
	array:.space 4000
	ent:.asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,0
	loop:
	bge $t0,$s0,end
	li $v0,5
	syscall
	move $t1,$v0
	sll $t2,$t0,2
	sw $t1,array($t2)
	addi $t0,$t0,1
	j loop
	end:
	
	li $v0,5
	syscall
	move $s1,$v0
	li $t1,0 #s1
	
	find:
	bge $t1,$s1,final
	li $v0,5
	syscall 
	move $s2,$v0 #s2,key
	jal search
	addi $t1,$t1,1 #t1
	j find
	final:
	li $v0,10
	syscall
#s0:个数 s2 关键字 t1 已占用
search:
	li $t2,0 #low
	move $t3,$s0
	addi $t3,$t3,-1 # high
	li $t4,0 #mid
	li $t5,0 #count
	li $t6,0 #count1
	loo:
	bgt $t2,$t3,out
	addi $t5,$t5,1
	add $t4,$t2,$t3
	li $t7,2
	div $t4,$t7
	mflo $t4
	sll $t7,$t4,2
	lw $s3,array($t7)
	bge $s2,$s3,else_1
	addi $t3,$t4,-1
	j loo
	else_1:
	beq $s2,$s3,else_2
	addi $t2,$t4,1
	j loo
	else_2:
	li $a0,1
	li $v0,1
	syscall
	addi $t6,$t6,1
	j out
	j loo
	out:
	bne $t6,0,next
	li $a0,0
	li $v0,1
	syscall
	next:
	la $a0,ent
	li $v0,4
	syscall
	jr $ra