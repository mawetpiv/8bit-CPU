`timescale 1ns / 1ps

/* 8 bit computer project
    Modules: 
     - A and B registers template: data_register
     - Instruction register: instruction_register */
    
    
module data_register(out, load, data_in, clk); // data register module for A and B reg
// takes input data (data_in), load enable (load)
// outputs value of reg (out, const)
    output reg [7:0] out;//, bus_out;
    input [7:0] data_in;
    input load, clk;
        
    always@(*) begin
        if(load) // load data into register
            out <= data_in;
    end 

endmodule

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module instruction_register(out, instr, load, data_in, clk); // instruction register module 
// takes same inputs as data_reg., splits output into 4LSB: bus write (out) and 4MSB: instruction write (instr)
    output reg [7:0] out;
    output reg [3:0] instr;
    input  [7:0] data_in;
    input load, clk;
        
    always@(*) begin
        if(load) begin // load data into register 
            out <= {4'b0000, data_in[3:0]}; // 4lsb to bus_out 
            instr <= data_in[7:4]; // 4MSB to instruction register out 
        end 
    end 

endmodule

