# RDCManComputerRange
Quickly creates an rdg file with a range of computers based off the dash commands used when running the script.

The point of these scripts is to automate adding a lab/classroom of computers to RDCMan.

How to use:
- Open PowerShell ISE and Open Script
- Now you will run the ComputerNameRangeScript.ps1. Note there are 4 parameters that must be entered.
	-base (this will be the repeating part in the computer names. For example "UHB3113-")
	-start (this is the starting number in the range of computers)
	-end (this is the ending number in the range of computers)
	-file (this is where the list of computer names will be saved)
-That is all that you should have to do.

Below is an example of running the scripts.
	
.\ComputerNameRangeScript.ps1 -base COMPUTERLAB- -start 20 -end 30 -file .\Test
