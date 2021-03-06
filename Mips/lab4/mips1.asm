.data
Enter_n: .asciiz "Enter a number: "
Enter_o: .asciiz "Enter an operator: "
.text 
la $a0, Enter_n #enter number
li $v0, 4
syscall
li $v0, 5
syscall #get first number
add $t4, $v0, $zero#first number save to t4

la $a0, Enter_o#enter operator
li $v0, 4
syscall#output string
li $v0, 12 #enter char
syscall
add $t0, $v0, $zero#save operator to $t0
la $a0, Enter_n #enter number
add $t0, $v0, $zero#save operator to $t0
li $v0, 4
syscall
li $v0, 5
syscall
add $t6, $v0, $zero
add $a1, $v0, $zero#save second number to a1
#choose correct function for operator
add $a0, $t4, $zero
li $t1, '+'
li $t2, '*'
li $t3 '^'
beq $t0, $t1 adding
beq $t0, $t2 multiplying
beq $t0, $t3 powers
adding:
jal adder
j endOfProgram
multiplying:
jal multiply
j endOfProgram
powers: 
jal power
j endOfProgram



li $a0, -3
li $a1, 4
#jal adder
#jal multiply
jal power
j endOfProgram
adder:
add $v0, $a0, $a1
jr $ra

multiply:
li $v0, 0

#save t1 and a0
addi $sp, $sp, -16
sw $a0, 12($sp)#save $a0
sw $ra, 8($sp)#only need to save it once
sw $t1, 0($sp)#save $t1 to stack
slt $t1, $a1, $zero#mulitple is negative
beq $t1, $zero NotNegative
sub $a1, $zero, $a1#change to negative
sub $a0, $zero, $a0#change to negative

NotNegative:
sw $t2, 4($sp)#save value into stack
add $t2, $a1, $zero#save counter
loopMult:
beq $t2, $zero endMult#if counter=0

add $a1, $v0, $zero#save value last returned (starts with 0)
#was saved above.  lw $ra, 8($sp)
jal adder
addi $t2, $t2, -1#decrement the counter
j loopMult

endMult:
lw $t1, 0($sp)#move t1 back to t1
lw $t2, 4($sp)#give t2 back
lw $ra, 8($sp)#get the correct register back
lw $a0, 12($sp)
addi $sp, $sp, 16#take space back
jr $ra


power:
li $v0, 1#value x^0
#while $a0>0 as per lectuerer assume raised to positive
addi $sp, $sp, -16 #make room in stack to save $v0 and last jal
sw $t1, 8($sp)#save t1
add $t1, $a1, $zero
sw $a1, 12($sp)
sw $ra, 4($sp)#store the address we want to go back to

PowerLoop:
beq $t1, $zero endPowerLoop
sw $v0, 0($sp)
add $a1, $v0, $zero
jal multiply
lw $a1, 0($sp)
addi $t1, $t1, -1
j PowerLoop
#put all values back where they belong

endPowerLoop:
lw $t1, 8($sp)
lw $a1, 12($sp)
lw $ra 4($sp)
addi $sp, $sp, 16
jr $ra

endOfProgram:

add $t1, $v0, $zero
li $v0, 1
syscall
add $a0, $t0, $zero
li $v0, 11
syscall
add $a0, $t6, $zero
li $v0, 1
syscall 
addi $a0, $zero, '='
li $v0, 11
syscall 
add $a0, $t1, $zero
li $v0, 1
syscall
li $v0, 10
syscall
