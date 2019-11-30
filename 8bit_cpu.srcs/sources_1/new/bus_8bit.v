`timescale 1ns / 1ps

/* 8 bit computer project
    Modules: 
     - CPU datapath (bus_8bit) */
     
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

module bus_8bit(
    input clk, write_prog,// write_prog: select bit for manual programming
    output reg [7:0] bus_reg, mem_read_data, out_DISP, // bus and memory read registers 
    input [7:0]  mem_write_data_prog, // data entry for manual programming  
    input [3:0] addr_write_prog); // overall connections for CPU
    
    wire [3:0] load; // control signals to load from bus
    wire [7:0] en, result_ALU; // en: enable write to bus signals 
    wire [7:0] A_out, B_out, Instr_out, Mem_out, count;  
    wire [3:0] instr, opCode;
    reg write_en; // feed into RAM
    wire mem_write_en, count_en, addr_en; // control signals 
    reg [3:0] addr_reg; // feed into RAM
    reg [7:0] Mem_in_reg; // feed into RAM 
    
    initial begin
        bus_reg = 8'b00000000;
    end 
    
    /* ENABLE WRITE TO BUS (en): 
        0: A
        1: B
        2: instr
        3: ALU
        4: count 
        5: mem 
        6: mem addr
        7: out display*/
    /* LOAD FROM BUS (load):
        0: A
        1: B
        2: instr
        3: count jump*/
    /* CONTROL SIGNALS: 
        load [3:0] - see above
        en [7:0] - see above
        mem_write_en - RAM en
        count_en - counter en 
        opCode (feed ALU, cntrl)*/
    /* FEED SIGNALS: 
        addr_reg - RAM
        Mem_in_reg - RAM
        opCode - ALU (cntrl)*/
        
    // instantiate modules 
        // A and B registers 
    data_register A_reg(A_out, load[0], bus_reg, clk);
    data_register B_reg(B_out, load[1], bus_reg, clk);
        // instruction register 
    instruction_register INSTR_REG(Instr_out, instr, load[2], bus_reg, clk);
        // arithmetic logic unit 
    ALU ALU0(result_ALU, A_out, B_out, opCode, clk);
        // RAM (16 Byte) 
    RAM RAM0(Mem_out, Mem_in_reg, write_en, addr_reg, clk);
        // program counter
    prog_counter P_Counter(count, bus_reg[3:0], load[3], count_en, clk);
        // control unit
    control_unit CTRL_UNIT(load, en, mem_write_en, count_en, opCode, addr_en, count, instr, clk);
    
    always@(posedge clk) begin
        if(write_prog) begin
        // manual programming into RAM 
            addr_reg = addr_write_prog;
            write_en = write_prog;
            Mem_in_reg = mem_write_data_prog;
        end 
        if(~write_prog) begin 
        // bus/instruction programming into RAM 
            if(addr_en) begin
                addr_reg = bus_reg[3:0]; end
            write_en = mem_write_en;
            Mem_in_reg = bus_reg;
        end 
    end
    
    always@(*) begin
        case(en) // enable write to bus from: 
            0: bus_reg = A_out;
            1: bus_reg = B_out;
            2: bus_reg = Instr_out; 
            3: bus_reg = result_ALU;
            4: bus_reg = count;
            5: bus_reg = Mem_out;
            6: bus_reg = addr_reg;
            7: out_DISP = A_out; // special case: not write to bus, A->out
            8: bus_reg = {4'b0000, Mem_out[3:0]};
            default: begin bus_reg = 0; out_DISP = 0; end // default: bus 8'b0, no DISP
       endcase
    end 
    
    always@(posedge clk) begin 
        mem_read_data <= Mem_out; // always display current mem value in reg
    end 

endmodule

