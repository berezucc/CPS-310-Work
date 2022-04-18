! Read a character from keyboard 
! Start assembling
  .begin 
BASE     .equ  0x3fffc0            !Starting point of the memory mapped region 
COUT     .equ  0x0                 !0xffff0000 Console Data Port 
COSTAT   .equ  0x4                 !0xffff0004 Console Status Port. 
CIN  .equ  0x8   !0xffff0008 Keyboard Data Port 
CICTL  .equ  0xc   !0xffff000c Keyboard Control Port 
  .org  2048 ! Change location counter to 2048
  add  %r0, %r0, %r4 !Clear r4, adds %r0 with %r0 --> %r4 
  sethi   BASE, %r4 !Stores BASE --> %r4 as 22 MSB and 10 zeros
InWait: halt 
  ld  [%r4 + CICTL], %r1 ! Loads content of %r4+CICTL --> %r1 (Flag to see if keyboard input is 1)
  andcc  %r1, 0x80, %r1 ! Performs logical and operation of %r1 and 0x80 (10000000) --> %r1 (Checks for keyboard status port)
  be  InWait ! If it is equal to 0, loops back up to InWait label (Waits for a keyboard input)
  ld  [%r4 + CIN], %r3 ! Loads content of %r4+CIN --> %r3 (Reads input)
  subcc  %r3, 27, %r5  ! 27 is Escape, subtracts %r3 with 27 --> %r5
  be  End   ! stop if it is. 
Wait:  ld  [%r4 + COSTAT], %r1 ! Loads contnt of $r4+COSTAT --> %r1
  andcc  %r1, 0x80, %r1  ! Performs logical and operation of %r1 and 0x80 (Printer Trap Handler) --> %r1
  be  Wait ! If equal to zero, repeats Wait label
  st  %r3, [%r4 + COUT] ! Stores %r3 --> %r4+COUT (Print)
  ba  InWait ! Always branches back to InWait for next keyboard input
End:  halt ! Ends simulator
! Stop assembling
  .end
