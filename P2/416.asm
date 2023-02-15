.data
	ent:.asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $v0,5
	syscall
	move $s1,$v0
	move $t0,$s0
	loop:
	li $s2,0
	li $t1,10
	div $t0,$t1
	mfhi $t1
	mflo $t3
	mult $t1,$t1
	mflo $t2
	mult $t1,$t2
	mflo $t2
	add $s2,$s2,$t2
	li $t1,10
	div $t3,$t1
	mfhi $t1
	mflo $t3
	mult $t1,$t1
	mflo $t2
	mult $t1,$t2
	mflo $t2
	add $s2,$s2,$t2
	mult $t3,$t3
	mflo $t2
	mult $t3,$t2
	mflo $t2
	add $s2,$s2,$t2
	bne $s2,$t0,no
	move $a0,$t0
	li $v0,1
	syscall
	la $a0,ent
	li $v0,4
	syscall
	no:
	addi $t0,$t0,1
	blt $t0,$s1,loop
	