! Program 4
!Starts assembling
 .begin 
 .org 2048!Changes location counter to start at address 2048
main: ld [a], %r1 !Main label, loads memory address of variable a into register 1 						11 00001 000000 00000 1 0101110111000
 ld [b], %r2 !Loads memory address of variable b into register 2 							11 00010 000000 00000 1 0101110111100
 ld [c], %r3 !Loads memory address of variable c into register 3 							11 00010 000000 00000 1 0101111000000
top: subcc %r4, 3, %r0 !Top label, subtracts content from register 4 with constant 3, storing it in register 0 (discard) 	10 00000 010100 00100 1 0000000000011
 be done !When equal to zero, branches to done label 								00 0 0001 010 0000000000000000001010
 subcc %r5, %r6, %r0 !If not, subtracts content from register 5 and register 6 into register 0 				10 00000 010100 00101 0 0000000000110
 bneg else !If subtraction raises negative flag, branches into else label 						00 0 0110 010 0000000000000000000100
 orcc %r1, %r2, %r1 !If not, logic or operation between register 1 and 2, storing it into register 1 			10 00001 010010 00001 0 0000000000010
 addcc %r6, 1, %r6 !Then, adds register 6 with constant 1 into register 6 							10 00111 010000 00111 1 0000000000001
 ba bottom !Branches always to bottom label 										00 0 1000 010 000000000000000000011
else: andcc %r1, %r3, %r1 !Else label, performs logic and operation between register 1 and 3 into register 1 			10 00001 010001 00001 0 0000000000011
 addcc %r5, 1, %r5 !Also, adds content of register 5 with constant 1, storing it into register 5 			10 00101 010000 00101 1 0000000000001
bottom: addcc %r4, 1, %r4 !Bottom label, performs addition of content in register 4 with constant 1 into register 4 		10 00100 010000 00100 1 0000000000001
 ba top !Will always branch to top label 										00 0 1000 010 1111111111111111111010
done: st %r3, [y] !Done label, stores content from register 3 into variable y 						11 00011 000100 00000 1 0101111000100 
 jmpl %r15+4, %r0 !Return 														10 00000 111000 01111 1 0000000000100
 .org 3000 !Changes location counter to start at address 3000
a: 0xa0 !Declare a as 0xa0 (0000000000000)
b: 0x33 !Declare b as 0x33 (0000000110011)
c: 0x52 !Declare c as 0x52 (0000001010010)
y: 2 !Declare y as 2 (0000000000010)
!Stops assembling
 .end
