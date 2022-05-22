.text

li $s1, 0x31
li $s2, 0x30
li $s3, 0x48

GetNum:
li $v0, 5#get number from user
syscall
beq $v0, $zero, endProgram

srl $t0, $v0, 24
beq $t0, $s1, case1
#beq $t0, $s2, case2
#beq $t0, $s3, case3
#beq $t0, $s4, case4



case1:
li $a0, 195
or $t0, $a0, $v0#overwrite t0 with new number. since we don't need it anymore
j print




print:
add $a0, $v0, $zero
li $v0, 34
syscall
#add $a0, '\n'
#li $v0, 





endProgram:
