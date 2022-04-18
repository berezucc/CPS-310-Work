Authors:
Vincent P. Heuring, Ann Root, Robert Kanick, Shane Neuville and Ross Zwisler
Department of Electrical and Computer Engineering
University of Colorado-Boulder
Boulder CO 80309-0425

ASSEMBLING ARC PROGRAMS
Note: we recommend that you begin by assembling one of the files in
the examples directory.

To assemble an ARC assembly language program, click on the 'Edit' button.
In the Edit window that appears you may load a program that is already
edited or you may type the program directly in the Edit window.
Note that assembly language programs must have a .asm suffix.
Click on the Assemble button to assemble.  (If the file has not been
saved you will be given a Save dialog.)

If the program assembles successfully you will be shown the listing file,
ending with the .lst suffix.  A .bin file will also be generated. The .bin
file is not actually a binary file, but rather its ASCII equivalent, for
readability. All three of these files, .asm, .lst, and .bin, can be
viewed in the Edit window by clicking the appropriate button at the top
of the window.

When you have generated a .bin file, click on the 'Bin->Sim' button in the
edit window to load the .bin file into the simulator. You may now run the
simulator using either the 'Step' button or the 'Run' button. If you do the
latter, be sure your program ends with a halt instruction! You can also stop
the simulation with the 'Stop' button.

You can also load a program by pressing the 'Load' button on the main window.
Select a .bin file and it will be loaded into the simulator; it will also load
the corresponding .asm and .lst files in the edit window.

The other buttons behave as expected.  The 'Hex' and 'Dec' radio buttons
allow you to display register contents in either Hexadecimal or Decimal form.
You can modify the contents of registers and memory by typing in a new
value.

If you wish to rerun the program, click on the Reload button to restore
the simulator to its default state.

After any further edit-assemble cycles you can use the Reload button
to reload the newly assembled program.

Bugs, questions, and suggestions should be reported to neuville@colorado.edu
