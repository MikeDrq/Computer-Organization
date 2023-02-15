.data
	str:.space 40
	char:.space 10
	
.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,0
	
	loop:
	bge $t0,$s0,out
	la $a0,char
	li $a1,4
	li $v0,8
	syscall
	lb $t1,char($0)
	sb $t1,str($t0)
	addi $t0,$t0,1
	j loop
	out:
	
	srl $t4,$s0,1
	li $t0,0
	addi $t1,$s0,-1
	
	judge:
	bgt $t0,$t4,end
	lb $t2,str($t0)
	lb $t3,str($t1)
	bne $t3,$t2,ou
	
	addi $t0,$t0,1
	addi $t1,$t1,-1
	j judge
	end:
	li $a0,1
	li $v0,1
	syscall
	j over
	ou:
	li $a0,0
	li $v0,1
	syscall
	over:
	li $v0,10
	syscall