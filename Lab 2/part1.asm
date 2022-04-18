! Program 1
! Hint: op3 for subcc is 010100
.begin
!Starts assembling
.org 2048 !Changes location counter to address 2048
dstart .equ 4000 !Tells assembler to equate 4000 to dstart
ld [a], %r1 !Loads data from variable a to register 1 								11 00001 000000 00000 1 0111110100000
ld [b], %r2 !Loads data from variable b to register 2 								11 00010 000000 00000 1 0111110100100
ld [c], %r3 !Loads data from variable c to register 3 								11 00011 000000 00000 1 0111110101000
addcc %r2, %r3, %r0 !Adds binary value data of register 2 and 3, storing the result in register 0	10 00000 010000 00010 0 0000000000011
addcc %r1, %r0, %r4 !Adds binary value data of register 1 and 0, storing the result in register 4	10 00100 010000 00001 0 0000000000000
subcc %r2, %r4, %r2 !Adds binary value data of register 2 and 4, storing the result in register 2	10 00010 010100 00010 0 0000000000100
st %r0, [a] !Stores (writes) data from register 0 into a.							11 00000 000100 00000 1 0111110100000
st %r2, [y] !Stores (writes) data from register 2 into y.							11 00010 000100 00000 1 0111110101100
jmpl %r15 + 4, %r0 !Return												10 00000 111000 01111 1 0000000000100
.org dstart !Changes location counter to address of dstart
a: 15 !Declare a as 15 (0000000001111)
b: 54 !Declare b as 54 (0000000110110)
c: -29 !Declare c as -29 (1111111100011)
y: 0 !Declare y as 0 (0000000000000)
!Stops assembling
.end
