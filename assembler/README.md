# ASSEMBLER

To write program in assembly for this cpu:  
+ seperate line for each instruction  
instr_code _space_ addr/val (in dec)  
Filename: name.as8

For list of instructions, see INSTRUCTIONS.txt 

Format: INSTR XXXX  
Write XXXX in decimal value  

Example:  
LDA 14 // load the mem at address 14 into A_reg  

All text after will be ignored  
For instructions that do not require addr/val (ie. OUT), write 0

See prog1.as8 for example 
