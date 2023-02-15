.data
	str_1:.space 210
	str_2:.space 210
.text 
	la $a0,str_1
	li $a1,205
	li $v0,8
	syscall
	la $a0,str_2
	li $a1,205
	li $v0,8
	syscall
	
	li $t0,0
	loop:
	lb $t3,str_1($t0)
	li $s1,10
	beq $s1,$t3,end
	lb $t4,str_2($t0)
	beq $t4,$t3,conti
	li $a0,0
	li $v0,1
	syscall
	j over
	conti:
	addi $t0,$t0,1
	j loop
	end:
	li $a0,1
	li $v0,1
	syscall
	over:
	li $v0,10
	syscall
	