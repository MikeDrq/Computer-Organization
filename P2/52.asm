.data
	array:.space 256
	remind:.asciiz "The result is:\n"
	ent:.asciiz "\n"
	spa:.asciiz " "
.macro cal(%h,%l,%res)
	sll %res,%h,3
	add %res,%res,%l
	sll %res,%res,2
.end_macro	
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $v0,5
	syscall
	move $s1,$v0
	li $t0,0 #ÐÐ
	li $t1,0 #ÁÐ
	loop_i:
	bge $t0,$s0,out_i
	loop_j:
	bge $t1,$s1,out_j
	li $v0,5
	syscall
	move $t2,$v0
	cal($t1,$t0,$t3)
	sw $t2,array($t3)
	addi $t1,$t1,1
	j loop_j
	out_j:
	addi $t0,$t0,1
	li $t1,0
	j loop_i
	out_i:
	li $t0,0
	li $t1,0
	loop_i_2:
	bge $t0,$s0,out_i_2
	loop_j_2:
	bge $t1,$s1,out_j_2
	li $v0,5
	syscall
	move $t2,$v0
	cal($t1,$t0,$t3)
	lw $t4,array($t3)
	add $t2,$t2,$t4
	sw $t2,array($t3)
	addi $t1,$t1,1
	j loop_j_2
	out_j_2:
	addi $t0,$t0,1
	li $t1,0
	j loop_i_2
	out_i_2:
	
	la $a0,remind
	li $v0,4
	syscall
	li $t0,0
	li $t1,0
	loop_i_ans:
	bge $t0,$s1,out_i_ans
	loop_j_ans:
	bge $t1,$s0,out_j_ans
	cal($t0,$t1,$t3)
	lw $a0,array($t3)
	li $v0,1
	syscall
	addi $s2,$s0,-1
	beq $t1,$s2,make
	la $a0,spa
	li $v0,4
	syscall
	j con
	make:
	la $a0,ent
	li $v0,4
	syscall
	con:
	addi $t1,$t1,1
	j loop_j_ans
	out_j_ans:
	addi $t0,$t0,1
	li $t1,0
	j loop_i_ans
	out_i_ans: