#this program will only work for nubmers -128 through 127
#this is becuase its a signed byte
.data 
array: .byte 30, 2, 55, 5, -128, 3, 7, 6, 10, 127 

.text
la $a0, array
#to change loop size add to 9 if added elements..
li $a1, 9#is really 10 but we load teh first before the loop
lb $v0, 0($a0)
#start comparing
FindLargest:
addi $a0, $a0, 1
lb $t0, 0($a0)
#compare
slt $t1, $v0, $t0
beq $t1, $zero Skip
add $v0, $t0, $zero
Skip:
addi $a1, $a1, -1
beq $a1, $zero Display
j FindLargest
#we've found our largest value
Display:
add $a0, $v0, $zero
li $v0 1#syscall is 1 becuase now I want to print the value stored which unless it's more then 4 bytes will work fine
syscall
li $v0, 10
syscall

