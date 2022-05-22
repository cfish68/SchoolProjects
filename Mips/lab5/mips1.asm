.data
Message: .asciiz "Enter the length of the code followed by numbers in code\n"
List: .byte 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
Code: .space 500
Found: .asciiz "Code was found "
Times: .asciiz " time"
NotFound: .asciiz "Code was not found\n"

.text
li $a1, 32
la $a2 Code
la $a0, Message
li $v0, 4
syscall
li $v0, 5
syscall #get size
add $a3, $v0, $zero#save size
li $s0, 0
inputCode:
beq $s0, $a3 checkCode
li $v0, 5
syscall
sb $v0, 0($a2)
addi $a2, $a2, 1
addi $s0, $s0, 1
j inputCode

checkCode:
addi $a2, $a2, -1#a2 is "pointing" to the last element of code
#la $a2, code a2 should remain the last in the end
la $t0, Code
la $a0, List

check:
beq $a1, $t4, endCheck
addi $t4, $t4, 1
lb $t1, 0($a0)#get number from list
addi $a0, $a0, 1#next element on list
lb $t2, 0($t0)#get number from code
beq $t1, $t2 numberEqual

la $t0, List
j check
numberEqual:
beq $t0, $a2 setEqual
addi $t0, $t0, 1
j check


setEqual:
addi $t5, $t5, 1#how many times its in list t5
la $t0 Code #we got a set now go back to the begining and see if there are any more
j check


endCheck:
#print the code in the list
la $t1, Code
print:
beq $t1, $a2 endPrint
lb $a0, 0($t1)
addi $t1, $t1, 1
li $v0, 1
syscall
li $a0, ' '
li $v0, 11
j print

endPrint:
beq $t5, $zero, nocode
la $a0 Found
li $v0, 4
syscall 
add $a0, $t5, $zero
li $v0, 1
syscall
la $a0, Times
li $v0, 4
syscall
li $v0, 10
syscall

nocode:
la $a0, NotFound
li $v0, 4 
syscall
li $v0, 10
syscall


