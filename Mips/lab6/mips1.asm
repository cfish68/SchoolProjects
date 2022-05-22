#this program wiill only work for values that will qual under 127  
#the teacher told us we could use byte values so that is what I did
#code test below. seems to work as it should.
#1 2 
#3 4 

#5 6 
#7 8 

#19 22 
#43 50
.data
A: .space 1000
B: .space 1000
C: .space 1000


.text
#enter size of first matrix
li $v0, 5
syscall
add $t7, $v0, $zero#row A
li $v0, 5
syscall
add $t6, $v0, $zero#column A
#now get size of second matrix
#if size of row A does not equal size of Row B we will need to 
#to get new sizes for matrix B
RowNotColumn:
li $v0, 5
syscall
add $t5, $v0, $zero#row B
li $v0, 5
syscall
add $t4, $v0, $zero#column B
bne $t7, $t4 RowNotColumn #will execute jump if r=



#we got 2 kosher matrices to multiply so we may proceed
#enter values of first matrix
mult $t7 $t6
mflo $t0, #number of elements in matrix
la $t2, A
EnterA:
beq $t0, $zero, DoneEnterA
li $v0, 5
syscall
sb $v0, 0($t2)
addi $t2, $t2, 1
addi $t0, $t0, -1#increment from 0 of t1 to n of t0
j EnterA
DoneEnterA:

mult $t5 $t4
mflo $t0, #number of elements in matrix
la $t2, B
li $t1 0
EnterB:
beq $t0, $t1, DoneEnterB
li $v0, 5
syscall
sb $v0, 0($t2)
addi $t2, $t2, 1
addi $t1, $t1, 1#increment from 0 of t1 to n of t0
j EnterB


DoneEnterB:



#start calculating C

la $s6, A

la $s1, C#save begining of C
#get the appropriate row


li $t1, 0 #make counter for how many rows
nextRow:
la $s7, B#go back to begining of columns

li $t8, 0 #make counter for how many columns
nextColumn:

#calculate row*column
jal rowColumn

sb $v0, 0($s1) #save value returned from rowcolumn
addi $s1, $s1, 1#incremment to next place in mat C

addi $s7, $s7, 1#get the head of next column

addi $t8, $t8, 1#increment counter
beq $t8, $t4, nextRow1
j nextColumn
nextRow1:
add $s6, $s6, $t6#get to the next row
addi $t1, $t1, 1
beq $t1, $t7, print

j nextRow




rowColumn:
#add to t0 to stack to be used for use.
addi $sp, $sp -24
sw $a3, 4($sp)#save the begining of the row
add $a3, $zero, $s6 
sw $s7, 8($sp)#save the befininf of the column
sw $t5, 16($sp)#row B counter
add $v0, $zero, $zero
sw $t1, 0($sp)
sw $t2, 4($sp)
sw $t3, 12($sp)
calc:
lb $t1, 0($a3)#get value from row
lb $t2, 0($s7)#get value from column
mult $t1, $t2
mflo $t3
add $v0, $v0, $t3#add to the sum
addi $t5, $t5, -1 
beq $zero, $t5, doneRowColumn
add $a3, $a3, 1
add $s7, $s7, $t4
j calc

doneRowColumn:
lw $a3, 4($sp)#save the begining of the row
lw $s7, 8($sp)#save the befininf of the column
lw $t5, 16($sp)#save the befininf of the column
lw $t1, 0($sp)
lw $t2, 4($sp)
lw $t3, 12($sp)
addi $sp, $sp 24
jr $ra




print:
la $t1, A
li $a0, '\n'
li $v0, 11
add $t2, $zero, $t7
syscall 
printRowsA:
add $t3, $zero, $t6
printColumnsA:
lb $a0 ,0($t1)
li $v0, 1
syscall
li $a0, ' '
li $v0, 11
syscall
addi $t1, $t1, 1
addi $t3, $t3, -1
bne $t3, $zero, printColumnsA
li $a0, '\n'
li $v0, 11
syscall
addi $t2, $t2, -1
bne $zero, $t2, printRowsA


la $t1, B
li $a0, '\n'
li $v0, 11
add $t2, $zero, $t5
syscall 
printRowsB:
add $t3, $zero, $t4
printColumnsB:
lb $a0 ,0($t1)
li $v0, 1
syscall
li $a0, ' '
li $v0, 11
syscall
addi $t1, $t1, 1
addi $t3, $t3, -1
bne $t3, $zero, printColumnsB
li $a0, '\n'
li $v0, 11
syscall
addi $t2, $t2, -1
bne $zero, $t2, printRowsB


la $t1, C
li $a0, '\n'
li $v0, 11
syscall 
printRows:
add $t3, $zero, $t4
printColumns:
lb $a0 ,0($t1)
li $v0, 1
syscall
li $a0, ' '
li $v0, 11
syscall
addi $t1, $t1, 1
addi $t3, $t3, -1
bne $t3, $zero, printColumns
li $a0, '\n'
li $v0, 11
syscall
addi $t7, $t7, -1
bne $zero, $t7, printRows

li $v0, 10
syscall

