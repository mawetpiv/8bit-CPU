`timescale 1ns / 1ps

/* 8 bit computer project
    Modules: 
     - program counter 
     - control unit */


module prog_counter(count_out, count_in, jump, en, clk);

    output reg [7:0] count_out;//, bus_out;
    input [3:0] count_in; // count in for jump op
    input jump, en, clk;

    initial begin count_out = 8'b00000000; end 
    
    always@(posedge clk) begin
        if(jump) // jump to count in
            count_out[3:0] <= count_in;
    end 
    
    always@(posedge clk) begin
        if(en) // increment counter
            count_out = count_out + 1;
    end 

endmodule 

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

module control_unit(load, en, mem_write_en, count_en, opCode, addr_en, count, instr, clk);
    
    // control signals out: 
    output reg [3:0] load, opCode;
    output reg [7:0] en;
    output reg mem_write_en, count_en, addr_en;
    
    input [7:0] count;
    input [3:0] instr; // instruction to decode 
    input clk;
    reg [2:0] count2; // internal instruction counter (sperate from overall PC)
    wire [2:0] count2_wire;
    
    assign count2_wire = count2; // feed count2 register to wire to be concatenated w/ instr for control signal 
    
    initial begin 
        en = 0; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
        count2 = 0;
    end 
    
    wire [6:0] case_sel = {instr, count2_wire}; // group instruction and internal counter for signal decode
    
    parameter 
        LDA  = 4'b0001, 
        LDAI = 4'b0010, 
        ADD  = 4'b0011, 
        SUB  = 4'b0100, 
        AND  = 4'b0101, 
        OR   = 4'b0110, 
        NOT  = 4'b0111, 
        INC  = 4'b1000, 
        DEC  = 4'b1001, 
        STA  = 4'b1100, 
        JUMP = 4'b1101,
        OUT  = 4'b1110,
        NOTH = 4'b1111;
    
    always@(negedge clk) begin
                // FETCH
            if(count2 == 0) begin // count->bus, bus->addr
                en = 4; addr_en = 1;
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                $display("fetch begin");
            end    
            
            else if(count2 == 1) begin // mem->bus, bus->instr, count_en
                en = 5; load[2] = 1; count_en = 1;
                load[3] = 0; load[1:0] = 0; mem_write_en = 0; opCode = 0; addr_en = 0;
                $display("fetch complete");
            end
        else begin 
        case(case_sel) // after fetch, check instruction+counter
                // LOAD A
            {LDA, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 5; addr_en = 1;
                $display("lda begin");
            end 
            {LDA, 3'b011}: begin // mem->bus, bus->A
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 5; load[0] = 1;
                $display("lda 2");
            end 
            {LDA, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("lda end");
            end 
                // LOAD A IM
            {LDAI, 3'b010}: begin // instr(addr)->bus, bus->A
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 8; addr_en = 0; load[0] = 1;
                $display("ldai begin");
            end 
            {LDAI, 3'b011}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("ldai 2");
            end 
            {LDAI, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("ldai end");
            end 
                // ADD 
            {ADD, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 2; addr_en = 1;
                $display("add1");
            end 
            {ADD, 3'b011}: begin // mem->bus, bus->b, opCode: 0001 (1)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 1;
                $display("add2");
            end 
            {ADD, 3'b100}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("add3");
            end 
                // SUB
            {SUB, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 2; addr_en = 1;
                $display("sub1");
            end 
            {SUB, 3'b011}: begin // mem->bus, bus->b, opCode: 0010 (2)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 2;
                $display("sub2");
            end 
            {SUB, 3'b100}: begin // alu->bus, bus->a
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("sub3");
            end 
                // AND 
            {AND, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 2; addr_en = 1;
                $display("and1");
            end 
            {AND, 3'b011}: begin // mem->bus, bus->b, opCode: 0011 (3)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 3;
                $display("and2");
            end 
            {AND, 3'b100}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("and3");
            end 
                // OR
            {OR, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 2; addr_en = 1;
                $display("or1");
            end 
            {OR, 3'b011}: begin // mem->bus, bus->b, opCode: 0100 (4)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 4;
                $display("or2");
            end 
            {OR, 3'b100}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("or3");
            end 
                // NOT
            {NOT, 3'b010}: begin // opCode: 0101 (5)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 5;
                $display("not1");
            end 
            {NOT, 3'b011}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("not2");
            end 
            {NOT, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("not3");
            end 
                // Increment A
            {INC, 3'b010}: begin // opCode: 0110 (6)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 6;
                $display("inc1");
            end 
            {INC, 3'b011}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("inc2");
            end 
            {INC, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("inc3");
            end 
                // Decrement A
            {DEC, 3'b010}: begin // opCode: 0111 (7)
                load[3:2] = 0; load[0] = 0; mem_write_en = 0; count_en = 0; addr_en = 0;
                en = 5; load[1] = 1; opCode = 7;
                $display("not1");
            end 
            {DEC, 3'b011}: begin // alu->bus, bus->a
                load[3:1] = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 3; load[0] = 1;
                $display("not2");
            end 
            {DEC, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("not3");
            end 
                // STORE A
            {STA, 3'b010}: begin // instr->bus, bus->addr
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 5; addr_en = 1;
                $display("sta begin");
            end 
            {STA, 3'b011}: begin // A->bus, bus->mem
                load = 0; mem_write_en = 1; count_en = 0; opCode = 0; addr_en = 0;
                en = 0; 
                $display("sta 2");
            end 
            {STA, 3'b100}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("sta end");
            end 
                // JUMP
            {JUMP, 3'b010}: begin // instr->bus, bus->count
                load[3] = 1; load[2:0] = 0; mem_write_en = 0; count_en = 0; opCode = 0;
                en = 5; addr_en = 0;
                $display("jump begin");
            end 
            {JUMP, 3'b011}: begin // nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
            end 
            {JUMP, 3'b100}: begin // nothing 
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
            end 
                // OUT
            {OUT, 3'b010}: begin // output enable from A
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 7;
                $display("out1");
            end 
            {OUT, 3'b011}: begin // output enable from A
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 7; 
                $display("out2");
            end 
            {OUT, 3'b100}: begin // output enable from A
                load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                en = 7; 
                $display("out3");
            end 
                // NOTH 
            {NOTH, 3'b010}: begin // do nothing
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
            end 
            {NOTH, 3'b011}: begin 
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
            end 
            {NOTH, 3'b100}: begin 
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
            end 
            default: begin
                en = 16; load = 0; mem_write_en = 0; count_en = 0; opCode = 0; addr_en = 0;
                $display("default");
            end 
        endcase
    end 
    end 
    
    always@(negedge clk) begin
            count2 = count2 + 1; // counter increment
            if(count2 == 5) count2 = 0; // counter rollover (cutoff before bit overflow)
    end

endmodule 


