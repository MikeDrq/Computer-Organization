.data 
	f:.space 1024
	g:.space 1024
	str_enter: .asciiz "\n"
	str_space: .asciiz " "
.macro cal(%res,%h,%l)
	sll %res,%h,4
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
	li $v0,5
	syscall
	move $s2,$v0
	li $v0,5
	syscall
	move $s3,$v0
	li $t0,0
	li $t1,0
	li $t2,0
	li $t3,0
	loop_f_h:
		loop_f_l:
			li $v0,5
			syscall
			cal($t4,$t0,$t1)
			sw $v0,f($t4)
			addi $t1,$t1,1	
			beq $t1,$s1,end_f_l
			j loop_f_l
		end_f_l:
			li $t1,0
			addi $t0,$t0,1
			beq $t0,$s0,end_f_h
			j loop_f_h
		end_f_h:
	loop_g_h:
		loop_g_l:
			li $v0,5
			syscall
			cal($t4,$t2,$t3)
			sw $v0,g($t4)
			addi $t3,$t3,1	
			beq $t3,$s3,end_g_l
			j loop_g_l
		end_g_l:
			li $t3,0
			addi $t2,$t2,1
			beq $t2,$s2,end_g_h
			j loop_g_h
		end_g_h:
	li $s4,0 #sum
	li $t0,0
	li $t1,0
	li $t2,0
	li $t3,0
	loop_one:
		loop_two:
			loop_three:
				loop_four:
					add $t4,$t0,$t2
					add $t5,$t1,$t3
					cal($t6,$t4,$t5)
					lw $t4,f($t6)
					cal($t6,$t2,$t3)
					lw $t5,g($t6)
					mult $t4,$t5
					mflo $t4
					add $s4,$s4,$t4
					add $t3,$t3,1
					beq $t3,$s3,end_four
					j loop_four
				end_four:
				addi $t2,$t2,1
				li $t3,0
				beq $t2,$s2,end_three
				j loop_three
			end_three:
				move $a0,$s4
				li $v0,1
				syscall
				li $s4,0
				li $t2,0
			sub $t4,$s1,$s3
			beq $t1,$t4,else
				la $a0,str_space
				li $v0,4
				syscall
				j end_if
			else:
				la $a0,str_enter
				li $v0,4
				syscall
			end_if:
			beq $t1,$t4,end_two #÷ÿ∏¥
				addi $t1,$t1,1
				j loop_two
		end_two:
			li $t1,0
			sub $t4,$s0,$s2
			beq $t0,$t4,end_one
				addi $t0,$t0,1
				j loop_one		
	end_one:									
li $v0,10
syscall		
