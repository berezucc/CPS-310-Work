! Program 3
 .begin
!Starts assembling
 .org 2048 !Changes location counter to start at address 2048
main: ld [x], %r2 !Loads memory address of variable x into register 2			11 00010 000000 00000 1 0101110111000		
top: subcc %r1, 4, %r0 !Subtracts register 1 with constant 4 into register 0		10 00000 010100 00001 1 0000000000100
 be done !Branch to label done if equal to zero							00 0 0001 010 0000000000000000000100
 srl %r2, 1, %r2 !Shifts register 2 to the right by 1 bit and stores into register 2 	10 00010 100110 00010 1 0000000000001
 addcc %r1, 1, %r1 !Adds content of register 1 with constant 1 storing it in register 1 	10 00001 010000 00001 1 0000000000001
 ba top !Branches always back to label top (loop) until be condition is met			00 0 1000 010 1111111111111111111100
done: st %r3, [y] !Branches once equal to zero, stores register 3 into memory location y 	11 00011 000100 00000 1 0101110111100
 jmpl %r15+4, %r0 !Return 										10 00000 111000 01111 1 0000000000100
 .org 3000 !Changes location counter to start at address 3000
x: 800 !Declare x as 800 (0001100100000)
y: 0 !Declare y as 0 (0000000000000)
!Stops assembling
 .end

