`timescale 1ns / 1ps

/* 8 bit computer project
    Modules: 
     - Arithmetic Logic Unit (ALU) */

module ALU(result, A, B, opCode, clk);
// takes two sets of 8bit values (A, B), depending on opCode performse various operations 
    input [7:0] A, B; // data inputs 
    input [3:0] opCode; // operation select 
    input clk;
    output reg [7:0] result; // final output reg
    
    always@(posedge clk) begin 
            case(opCode) // ALU MUX
                4'b0001: result = A + B; //1: ADD
                4'b0010: result = A - B; // 2: SUB
                4'b0011: result = A & B; // 3: AND (bitwise&)
                4'b0100: result = A | B; // 4: OR (bitwise|)
                4'b0101: result = !A; // 5: NOT (bitwise inverse A)
                4'b0110: result = A + 1; // 6: INC (increment A)
                4'b0111: result = A - 1; // 7: DEC (decrement A)
                default: result = A; // other: passthrough 
        endcase     
    end
    
endmodule


