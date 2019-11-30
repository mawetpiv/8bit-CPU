`timescale 1ns / 1ps

/* 8 bit computer project
    Modules: 
     - RAM */

module RAM(mem_out, mem_in, write, addr, clk);
// memory in and out bus (mem_in, mem_out), write enable, address to read/write
    output reg [7:0] mem_out; // output mem at address location 
    input [7:0] mem_in; // memory in to write 
    input [3:0] addr; // address to r/w
    input write; // write en
    input clk;

    reg [7:0] mem0 [15:0]; // 16 Byte RAM (8 bit bytes) 
    integer i, j, f_bin, f;
    reg [7:0] r16;
    
    initial begin // fill RAM with all 0s on startup, then write program into memory
        for (i=0; i<16; i=i+1)
            mem0[i] = 8'b11111111; 
        
        $readmemb("C:/Users/pierr/verilog/8bit_cpu/prog.bin", mem0); // find assembled binary file, load into mem
    
        mem0[4'b1110] = 8'b00011100; // 28 **mem override**
        mem0[4'b1111] = 8'b00001110; // 14 **mem override**
    end 
    
    always@(*) begin 
        if(write) // allow write, feed mem_in at addr
             mem0[addr] <= mem_in;            
    end
    
    always@(*) begin 
        // output memory at addr 
        mem_out <= mem0[addr]; 
    end
    
endmodule


/* INSTRUCTIONS: 
    LDA XXXX:   load A from addr XXXX:                  0001 XXXX
    LDAI XXXX:  (LDA immediate) load A value 0000XXXX:  0010 XXXX
    ADD XXXX:   A + mem_at_XXXX:                        0011 XXXX
    SUB XXXX:   A - mem_at_XXXX:                        0100 XXXX
    AND XXXX:   A && mem_at_XXXX (bitwise&):            0101 XXXX
    OR XXXX:    A || mem_at_XXXX (bitwise|):            0110 XXXX
    NOT:        !A (bitwise!):                          0111 0000
    INC:        increment A                             1000 0000
    DEC:        decrement A                             1001 0000
    
    STA XXXX:   Store contents of A at addr_XXXX        1100 0000
    JUMP XXXX:  jump counter to XXXX:                   1101 0000
    OUT:        from A:                                 1110 0000
    NOTH:       do nothing:                             1111 0000*/