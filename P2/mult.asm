.data
	array_1:.space 256
	array_2:.space 256
	array: .space 256
	spa: .asciiz " "
	ent: .asciiz "\n"
.macro cal(%h,%l,%ans)
	sll %ans,%h,3
	add %ans,%ans,%l
	sll %ans,%ans,2
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0
	
	li $t0,0
	li $t1,0
	loop_1_i:
	bge $t0,$s0,out_1_i
	loop_1_j:
	bge $t1,$s0,out_1_j
	li $v0,5
	syscall
	cal($t0,$t1,$t2)
	sw $v0,array_1($t2)
	addi $t1,$t1,1
	j loop_1_j
	out_1_j:
	addi $t0,$t0,1
	li $t1,0
	j loop_1_i
	out_1_i:
	
	li $t0,0
	li $t1,0
	loop_2_i:
	bge $t0,$s0,out_2_i
	loop_2_j:
	bge $t1,$s0,out_2_j
	li $v0,5
	syscall
	cal($t0,$t1,$t2)
	sw $v0,array_2($t2)
	addi $t1,$t1,1
	j loop_2_j
	out_2_j:
	addi $t0,$t0,1
	li $t1,0
	j loop_2_i
	out_2_i:
	
	li $t0,0
	li $t1,0
	li $t2,0
	for_i:
	bge $t0,$s0,end_i
	for_j:
	bge $t1,$s0,end_j
	for_lo:
	bge $t2,$s0,end_lo
	cal ($t0,$t2,$t3)
	cal ($t2,$t1,$t4)
	lw $t3,array_1($t3)
	lw $t4,array_2($t4)
	mult $t3,$t4
	mflo $t5
	add $s2,$s2,$t5
	addi $t2,$t2,1
	j for_lo
	end_lo:
	cal ($t0,$t1,$t3)
	sw $s2,array($t3)
	li $s2,0
	li $t2,0
	addi $t1,$t1,1
	j for_j
	end_j:
	li $t1,0
	addi $t0,$t0,1
	j for_i
	end_i:
	
	li $t0,0
	li $t1,0
	loop_i:
	bge $t0,$s0,out_i
	loop_j:
	bge $t1,$s0,out_j
	cal($t0,$t1,$t2)
	lw $a0,array($t2)
	li $v0,1
	syscall
	addi $t7,$s0,-1
	beq $t7,$t1,huan
	la $a0,spa
	li $v0,4
	syscall
	j jie
	huan:
	la $a0,ent
	li $v0,4
	syscall
	jie:
	addi $t1,$t1,1
	j loop_j
	out_j:
	addi $t0,$t0,1
	li $t1,0
	j loop_i
	out_i:
	
	li $v0,10
	syscall