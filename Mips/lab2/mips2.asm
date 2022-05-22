#only checks overflow for multiplication.
.data
enterNum: .asciiz "ENTER VALUE\n"
enterOp: .asciiz "ENTER OP-CODE\n"
Problem: .asciiz "ERROR overflow\n"
.text
#$t1 will be stored value.
loop:
la $a0, enterNum
li $v0, 4
syscall #print string for value request
li $v0, 5
syscall#get value
add $t0, $v0, $zero
la $a0, enterOp
li $v0, 4
syscall
li $v0, 12
syscall
#if @
beq $v0, '@' end
beq $v0, '+' addition
beq $v0, '-' subtraction
beq $v0, '*' multiplication
addition:
add $t1, $t1, $t0
j loop
subtraction:
sub $t1, $t1, $t0
j loop
multiplication:
#nedd to add legal parameters

mult $t1, $t0
mflo $s1
mfhi $s2
j check

end:
add $a0, $t1, $zero
li $v0, 1
syscall
li $v0 10
syscall


check:
beq $s2, $zero positive
li $t4, -1
bne $t4, $s2 negative 
positive:
slt $t4, $zero, $s1
beq $t4, $zero, problem#t4 was set to 0 if s1 is <0
add $t1, $s1, $zero
negative:
slt $t4, $s1, $zero
beq $t4, $zero, problem
add $t1, $s1, $zero
j loop
problem:
la $a0, Problem
li $v0, 4
syscall
li $v0 10
syscall
