.data
Error: .asciiz "Error:\n"
.text

li $s1, 0x31#for case 1
li $s2, 0x30#.
li $s3, 0x48#.
li $s4, 0x74#case 4
GetNum:
li $v0, 5#get number from user, should be read in as decimal number
syscall
beq $v0, $zero, endProgram#if number entered=0 just end

srl $t0, $v0, 24#shift to see what case we are dealing with
beq $t0, $s1, case1
beq $t0, $s2, case2
beq $t0, $s3, case3
beq $t0, $s4, case4
j caseDefualt


case1:
li $a0, 195
or $t0, $a0, $v0#overwrite t0 with new number. since we don't need it anymore
j print

case2:
li $a0, 0xffffff3c
and $t0, $a0, $v0
j print

case3:
sll $t0, $v0, 17
srl $t0, $t0, 25
li $t4, 0x00007f80#hw asks for 8-15 bits i assume inculusive1224736767
xor $t0, $t4, $v0
j print

case4: 
sll $t4, $v0, 8
srl $t4, $t4, 26
add $t0, $v0, $zero
shiftLeft:
beq $t4, $zero, print
sll $t0, $t0, 1
addi $t4, $t4, -1
j shiftLeft


print:
add $a0, $v0, $zero
li $v0, 1#print int recieved as is
syscall
li $a0, '\n'
li $v0, 11
syscall
add $a0, $t0, $zero #new number to be printed
li $v0, 34
syscall
li $a0, '\n'
li $v0, 11
syscall
j GetNum


caseDefualt:
la $a0, Error
li $v0, 4
syscall 
j GetNum

endProgram:
li $v0, 10
syscall
