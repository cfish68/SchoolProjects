.data 
List: .byte 3 9 27 81
arithmetic_s: .asciiz "d= "
geo_s:.asciiz "q= " 
neither: .asciiz "Not a progression\n"


.text
la $a0, List#adress of the list
li $a1, 4#size of the list
#$t3 bool for arithmetic 0 for sequence -1 for not
li $t3, 0
#$t4 bool for geometric // assume arithemitc until it isn't
li $t4, 0

lb $t1, 0($a0)
lb $t2, 1($a0)
sub $s1, $t2, $t1
#$s1 will be value to compare for arithmetic

div $t2, $t1
mflo $s2 #$s2 will have the result of division
#According to instructions the hi should 
#always be 0, we are not required to check
#for remainder other then 0. 
mfhi $t5
beq $t5, $zero skip #if it equals 0 next thing doesn't need to happen
li $t4, -1 #remainder wasn't 0 so geometric will be false 
skip:


addi $a1, $a1, -2#only n-2 left to check
#check arithmetic and geometric
loop:
addi $a1, $a1, -1#a1 is counter for loop

#first and second was checked so now 
#we must check the second and third and so on
addi $a0, $a0, 1#point pointer to next byte
lb $t0, 0($a0)
lb $t1, 1($a0)
sub $t7, $t1, $t0 #everything sub should be equal to $s1

beq $t7, $s1 arith_good#branch equal
li $t3, -1
arith_good:
div $t1, $t0
mfhi $s0
beq $s0, $zero hi_good
li $t4, -1
hi_good:
mflo $s6
beq $s6, $s2 lo_good
li $t4, -1
lo_good:
bne $a1, $zero loop
#“d = “ followed by the difference between each element

bne $t3, $t4 not_same
bne $t3, $zero, printNeither#if they are both the same number and the number is not 0 neither..
not_same:
bne $t3, $zero, no_arithmetic
li $v0, 4
la $a0 arithmetic_s#load string
syscall
add $a0, $zero, $s1
li $v0, 1 
syscall
#print \n incase geo is also
li $a0, '\n'
li $v0, 11
syscall
no_arithmetic:
bne $t4, $zero no_geometric
li $v0, 4
la $a0 geo_s
syscall
add $a0, $zero, $s2
li $v0, 1 
syscall
no_geometric:
li $v0 10
syscall
printNeither:
li $v0, 4
la $a0, neither
syscall
li $v0, 10
syscall


