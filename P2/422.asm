.text
li $v0,5
syscall
move $s0,$v0
li $t0,2
loop:
ble $s0,2,out
div $s0,$t0
mfhi $t1
beq $t1,0,no
mult $t0,$t0
mflo $t1
bgt $t1,$s0,out
addi $t0,$t0,1
blt $t0,$s0,loop
no:
li $a0,0
li $v0,1
syscall
j end
out:
li $a0,1
li $v0,1
syscall
end:
li $v0,10
syscall