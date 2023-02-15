.data
	array_one :.space 256
	array_two :.space 256
	str_space : .asciiz " "
	str_enter : .asciiz "\n"
.macro cal(%res,%h,%l)
	sll %res,%h,3
	add %res,%res,%l
	sll %res,%res,2
.end_macro 
.text
	li $v0,5
	syscall
	move $s0,$v0  #¸öÊýn
	li $t0,0
	li $t1,0
	mult $s0,$s0
	mflo $s1
	li $t2,2
	mult $s1,$t2
	mflo $s2  #2*n*n
	li $t2,0
	loop :
		li $v0,5
		syscall
		move $t3,$v0
		bge $t2,$s1,else
			cal($t4,$t0,$t1)
			sw $t3,array_one($t4)
			jal save
			j endof
		else:	
			bne $t2,$s1,e
				li $t0,0
				li $t1,0
			e:
			cal($t4,$t0,$t1)
			sw $t3,array_two($t4)
			jal save
		endof:
		addi $t2,$t2,1
	beq $t2,$s2,end_loop
		j loop
	end_loop:
	li $s1,0 #sum
	li $t0,0
	li $t1,0
	li $t2,0
	loop_one:
		loop_two:
			loop_three:
				cal($t3,$t0,$t2)
				lw $s2,array_one($t3)
				cal($t3,$t2,$t1)
				lw $s3,array_two($t3)
				addi $t2,$t2,1
				mult $s2,$s3
				mflo $s4
				add $s1,$s1,$s4
			beq $t2,$s0,end_three
				j loop_three
			end_three:
			move $a0,$s1
			li $v0,1
			syscall
			li $s1,0
			addi $t5,$s0,-1
			bne $t1,$t5,else_char
				la $a0,str_enter
				li $v0,4
				syscall
				j ifchar_end
			else_char:
				la $a0,str_space
				li $v0,4
				syscall
			ifchar_end:
			addi $t1,$t1,1
			li $t2,0
			beq $t1,$s0,end_two
			j loop_two
		end_two:
		addi $t0,$t0,1
		li $t1,0
		beq $t0,$s0,end_one
		j loop_one
	end_one:
	
li $v0,10
syscall
		
save:
	addi $t5,$t2,1
	rem $t5,$t5,$s0	
	bne $t5,0,el
		li $t1,0
		addi $t0,$t0,1
		j endofbne
	el:
		addi $t1,$t1,1
	endofbne:
jr $ra
			
		