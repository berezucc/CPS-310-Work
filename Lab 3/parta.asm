! Prints "Hello, world!\n" in the message area. 
  .begin  
! Starts assembling
BASE  .equ  0x3fffc0  !Starting point of the memory mapped region 
COUT  .equ  0x0   !0xffff0000 Console Data Port 
COSTAT .equ  0x4   !0xffff0004 Console Status Port 
  .org  2048 ! Change location counter to 2048
  add  %r0, %r0, %r2 ! %r2 <-- %r0 + %r0
  add  %r0, %r0, %r4 ! %r4 <-- %r0 + %r0
  sethi   BASE, %r4 ! Sets 22 MSB of %r4 to BASE and 10 LSB to zero
Loop:   ld  [%r2 + String], %r3  !Load next char into r3 
  addcc  %r3,%r0,%r3 ! %r3 <-- %r3 + %r0
  be  End   ! stop if null (Checks when %r3 is zero)
Wait:  ld [%r4+COSTAT], %r1 ! Loads 
  andcc  %r1, 0x80, %r1 ! %r1 <-- And operation between %r1 and 0x80
  be  Wait ! If equal to zero, repeats Wait label
  st  %r3, [%r4+COUT] !Print to console (Store %r3 in %r4+COUT)
  add  %r2, 4, %r2  !increment String offset (r2) 
  ba  Loop ! Branch always, loops back to Loop label
End:  halt   !A non-standard instruction to stop the simulator 
.org  3000 ! Change location counter to 3000
! The "Hello, world!" string 
String:  0x48, 0x65, 0x6c, 0x6c, 0x6f 
  0x2c, 0x20, 0x77, 0x6f, 0x72  
  0x6c, 0x64, 0x21, 0x0a, 0 
! Stops assembling
  .end

