.text
li $v0,5
syscall
move $s0,$v0
li $t0,1
li $t1,1
loop:
mult $t1,$t0
mflo $t1
addu $s2,$s2,$t1
addi $t0,$t0,1
ble $t0,$v0,loop
move $a0,$s2
li $v0,36
syscall
li $v0,10
syscall