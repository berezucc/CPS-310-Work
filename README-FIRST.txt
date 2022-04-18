Authors:
Vincent P. Heuring, Ann Root, Robert Kanick, Shane Neuville, Ross Zwisler and
Michael Wilson
Department of Electrical and Computer Engineering
University of Colorado-Boulder
Boulder CO 80309-0425

This directory contains all the files needed to run the Java 1.4.1 versions of
the ARC Assembler and Simulator, along with an examples directory
containing some sample ARC programs. Both the assembler and simulator 
are invoked from the simulator.  PC/Unix users must be running Java
version 1.4 or higher. Macintosh users must be running MRJ 2.0 or higher. 

DOWNLOADING THE JAVA ARC TOOLS
Set your ftp client to binary download mode.
All platforms should download the examples directory.
PC and Unix users should download ARCTools.jar
Macintosh users should download ARCSimulatorForMacintosh.

RUNNING THE JAVA SRC TOOLS - NOTE CHANGE FROM EARLIER VERSIONS.
PC and MAC users running the latest version of JAVA (1.4.1) should be able to run
ARCTools by simply double clicking the JAR file. If this does not work then read on.
PC and Unix users with a Java version greater than 1.1 can invoke the ARC 
Assembler and Simulator by a command similar to:

java -jar DirPathTo/jarfile.jar

So for example, if you are IN the directory containing ARCToolsv2.0.2.jar, you
would type:

java -jar ARCToolsv2.0.2.jar
                                      
Users using Java version 1.1 must use the 'jre' program as follows:

jre -cp jarfile.jar MainClass

So for example, if you are IN the directory containing ARCToolsv2.0.2.jar, you
would type:

jre -cp ARCToolsv2.0.2.jar ARCTools.ARCSim

See your java documentation for details.

Macintosh users can simply double-click on ARCSimulatorForMacintosh

For information on supported platforms, and to download the Java Runtime
Environment for your platform, see http://www.javasoft.com for PC/Unix users,
http://asu.info.apple.com/swupdates.nsf/ for Macintosh users. 

If all is working OK the ARC Simulator window should appear, displaying
the CPU registers, an array of buttons, and the machine memory.
