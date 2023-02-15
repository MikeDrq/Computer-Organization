li $v0,5
syscall
move $t0,$v0
li $t1,0
loop:
li $v0,12
syscall
move $s0,$v0
addi $t1,$t1,1
bne $t1,$t0,loop
li $v0,10
syscall