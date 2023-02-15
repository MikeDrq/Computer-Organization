.data
	a: .space 256
	symbol: .space 256
.macro cal(%res,%h,%l)
	sll %res,%h,3
	add %res,%res,%l
	sll %res,%res,2
.end_macro
.macro push(%res)
	sw %res,0($sp)
	addi $sp,$sp,-4
.end_macro
.macro pop(%res)
	addi $sp,$sp,4
	lw %res,0($sp)
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0 #m
	li $v0,5
	syscall
	move $s1,$v0 #n
	li $t0,0
	li $t1,0
	loop_i:
		loop_j:
			cal($t3,$t0,$t1)
			li $v0,5
			syscall
			move $t4,$v0
			sw $t4,a($t3)
			beq $t4,1,equal
				j unequal
			equal:
				sw $t4,symbol($t3)
			unequal:
			addi $t1,$t1,1
			beq $t1,$s1,end_j
				j loop_j
			end_j:
			addi $t0,$t0,1
			beq $t0,$s0,end_i
				li $t1,0
				j loop_i
		end_i:
	li $v0,5
	syscall
	move $s2,$v0
	addi $t0,$s2,-1 #x
	li $v0,5
	syscall
	move $s3,$v0
	addi $t1,$s3,-1 #y
	li $v0,5
	syscall
	move $s4,$v0 
	addi $t2,$s4,-1 #dx
	li $v0,5
	syscall
	move $s5,$v0
	addi $t3,$s5,-1 #dy
	jal search	
	move $a0,$s7
	li $v0,1
	syscall
	li $v0,10
	syscall

search:
	push($ra)
	cal($t4,$t0,$t1)
	lw $t5,symbol($t4)
	beq $t5,0,else_one
		pop($ra)
		jr $ra
	else_one:
		blt $t0,$s0,else_o
		pop($ra)
		jr $ra
		else_o:
		blt $t1,$s1,else_t
		pop($ra)
		jr $ra
		else_t:
		bgez $t0,else_th
		pop($ra)
		jr $ra
		else_th:
		bgez $t1,else_f
		pop($ra)
		jr $ra
		else_f:
	bne $t2,$t0,notgood
		bne $t3,$t1,alittle
		addi $s7,$s7,1
		pop($ra)
		jr $ra
	notgood:
	alittle:
	cal($t4,$t0,$t1)
	li $t5,1
	sw $t5,symbol($t4)
	push($t0)
	push($t1)
	addi $t1,$t1,1
	jal search
	pop($t1)
	pop($t0)
	push($t0)
	push($t1)
	addi $t1,$t1,-1
	jal search
	pop($t1)
	pop($t0)
	push($t0)
	push($t1)
	addi $t0,$t0,1
	jal search
	pop($t1)
	pop($t0)
	push($t0)
	push($t1)
	addi $t0,$t0,-1
	jal search
	pop($t1)
	pop($t0)
 	cal($t4,$t0,$t1)
 	sw $0,symbol($t4)
 	pop($ra)
 	jr $ra
 
	
	
		
		
		
		
	
			