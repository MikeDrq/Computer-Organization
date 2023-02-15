.data
	array_1:.space 1024
	array_2:.space 1024
	spa: .asciiz " "
	ent: .asciiz "\n"
.macro cal(%h,%l,%ans)
	sll %ans,%h,4
	add %ans,%ans,%l
	sll %ans,%ans,2
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $v0,5
	syscall
	move $s1,$v0
	li $v0,5
	syscall
	move $s2,$v0
	li $v0,5
	syscall
	move $s3,$v0
	#s6 sum
	
	li $t0,0
	li $t1,0
	loop_1_i:
	bge $t0,$s0,end_1_i
	loop_1_j:
	bge $t1,$s1,end_1_j
	li $v0,5
	syscall
	move $t2,$v0
	cal ($t0,$t1,$t3)
	sw $t2,array_1($t3)
	addi $t1,$t1,1
	j loop_1_j
	end_1_j:
	li $t1,0
	addi $t0,$t0,1
	j loop_1_i
	end_1_i:
	
	li $t0,0
	li $t1,0
	loop_2_i:
	bge $t0,$s2,end_2_i
	loop_2_j:
	bge $t1,$s3,end_2_j
	li $v0,5
	syscall
	move $t2,$v0
	cal ($t0,$t1,$t3)
	sw $t2,array_2($t3)
	addi $t1,$t1,1
	j loop_2_j
	end_2_j:
	li $t1,0
	addi $t0,$t0,1
	j loop_2_i
	end_2_i:
	
	li $t0,0 #i
	li $t1,0 #j
	li $t2,0 #k
	li $t3,0 #z
	sub $s4,$s0,$s2
	addi $s4,$s4,1
	sub $s5,$s1,$s3
	addi $s5,$s5,1
	loop_i:
	bge $t0,$s4,end_i
	loop_j:
	bge $t1,$s5,end_j
	loop_k:
	bge $t2,$s2,end_k
	loop_z:
	bge $t3,$s3,end_z
	
	add $t4,$t0,$t2
	add $t5,$t1,$t3
	cal ($t4,$t5,$t6)
	cal ($t2,$t3,$t7)
	lw $t6,array_1($t6)
	lw $t7,array_2($t7)
	mult $t6,$t7
	mflo $t6
	add $s6,$s6,$t6
	
	addi $t3,$t3,1
	j loop_z
	end_z:
	addi $t2,$t2,1
	li $t3,0
	
	j loop_k
	end_k:
	li $t2,0
	move $a0,$s6
	li $v0,1
	syscall
	li $s6,0
	sub $t4,$s1,$s3
	beq $t1,$t4,huan
	la $a0,spa
	li $v0,4
	syscall
	j over
	huan:
	la $a0,ent
	li $v0,4
	syscall
	over:
	addi $t1,$t1,1
	j loop_j
	end_j:
	addi $t0,$t0,1
	li $t1,0
	
	j loop_i
	end_i:
	
	li $v0,10
	syscall