! Program 2
 .begin
!Starts assembling
 .org 2048 !Changes location counter to start at address 2048
m_start: ld [x], %r1 !Loads memory address of variable x into register 1										11 00001 000000 00000 1 0100000100100
 ld [y], %r2 !Loads memory address of variable y into register 2											11 00010 000000 00000 1 0100000101000
 subcc %r1, %r2, %r0 !Subtracts data from register 1 with register 2 into register 0 (discard)							10 00000 010100 00001 0 0000000000010
 bneg else !If subtraction results in negative value (N flag), jumps to else label									00 0 0110 010	0000000000000000000011
 andcc %r1, %r2, %r3 !If subtraction is positive, does an logic and operation with register 1 and register 2 into register 3		10 00011 010001 00001 0 0000000000010	
 ba done !Branch always, will always jump to the done label												00 0 1000 010	0000000000000000000010
else: orcc %r1, %r2, %r3 !When subtraction is negative, performs logic or operation with register 1 and register 2 into register 3		10 00011 010010 00001 0 0000000000010
done: st %r3, [a] !Always branches to this, stores data from register 3 into variable a								11 00001 000100 00000 1 0100000101100
 jmpl %r15+4, %r0 !Return																	10 00000 111000 01111 1 0000000000100
x: 30 !Declare x as 30 (0000000011110)
y: 48 !Declare y as 48 (0000000110000)
a: 0 !Declare a as 0 (0000000000000)
!Stops assembling
 .end

