.data
list: .word -1 -2 -3 55 -5 -6 -7 -8 -9 -10
.text

li $a1, 10#size
sort:
addi $a1, $a1, -1
beq $a1,$zero Print
la $a0, list#begining of the list
addi $a2,$a0,4#list++..
li $t0, 0 #for i=0
check:
lw $t3, 0($a0)
lw $t4 0($a2)
slt $t7 $t4 $t3
beq $t7 $zero  DontSwap
sw $t4, 0($a0)
sw $t3 0($a2)
DontSwap:
addi $a0, $a0, 4
addi $a2, $a0, 4
addi $t0, $t0, 1
bne $a1, $t0 check
j sort
Print:
la $t1, list
Itarate:
li $v0, 1
lw $a0, 0($t1)
addi $t1, $t1, 4
syscall 
li $v0 11
li $a0, ' '
syscall
addi $a1, $a1, 1
bne $a1, 10 Itarate
li $v0, 10
syscall


