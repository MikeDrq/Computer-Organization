.data
	word: .space 30

.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,0
	loop:
		li $v0,12
		syscall
		sb $v0,word($t0)
		addi $t0,$t0,1
		beq $t0,$s0,end
		j loop
	end:
	li $t0,0
	move $t1,$s0
	addi $t1,$t1,-1
	loop_match:
		lb $t2,word($t0)
		lb $t3,word($t1)
		bne $t2,$t3,out
		add $t0,$t0,1
		add $t1,$t1,-1
		bgt $t0,$t1,success
		j loop_match
		
	out:
		li $a0,0
		li $v0,1
		syscall
		j endofall
	success:
		li $a0,1
		li $v0,1
		syscall
	 
endofall:
li $v0,10
syscall
		
		