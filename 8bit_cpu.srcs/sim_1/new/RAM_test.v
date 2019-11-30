`timescale 1ns / 1ps
`define STRLEN 32


module RAM_test;

    task passTest;
        input [7:0] actualOut, expectedOut;
        input [`STRLEN*8:0] testType;
		inout [5:0] passed;
	
		if(actualOut == expectedOut) begin $display ("%s passed", testType); passed = passed + 1; end
		else $display ("%s failed: %x should be %x", testType, actualOut, expectedOut);
    endtask
    
    task allPassed;
        input [5:0] passed;
        input [5:0] numTests;
        
        if(passed == numTests) $display ("All tests passed");
		else $display("Some tests failed");
	endtask
	
	reg [3:0] addr, load, en;
	reg write_prog, clk;
	reg [7:0] mem_write; 
	wire [7:0] mem_read, bus;
	reg [5:0] passed; 
	//reg addr_en;

    bus_8bit uut(.clk(clk), .load(load), .en(en), .bus_reg(bus), .mem_read_data(mem_read), .mem_write_data_prog(mem_write), .addr_write_prog(addr), .write_prog(write_prog));
    
    always
        #5 clk <= ~clk;
        
    initial begin
        load = 0;
        en = 0;
        passed = 0;
        write_prog = 1;
        //addr_en = 1'b1;
        clk = 0;
        
        addr = 4'b0000;
        #40
        mem_write = 8'b00001000;
        #40;
        addr = 4'b0001;
        #40;
        mem_write = 8'b11111111;
        #40;
        addr = 4'b0100;
        #40;
        mem_write = 8'b10101010;
        #40;
        addr = 4'b1111; 
        #40;
        mem_write = 8'b01010101;
        #40;
        //mem_write = 8'bxxxxxxxx;
        //#40;
        write_prog = 0;
        #40;
        addr = 4'b0000;
        #40;
        passTest(mem_read, 8'b00001000, "mem test 1", passed);
        #40;
        addr = 4'b0001;
        #40;
        passTest(mem_read, 8'b11111111, "mem test 2", passed);
        #40;
        addr = 4'b0010;
        #40;
        passTest(mem_read, 8'b00000000, "mem test 3", passed);
        #40;
        addr = 4'b0100;
        #40;
        passTest(mem_read, 8'b10101010, "mem test 4", passed);
        #40;
        addr = 4'b1111;
        #40;
        passTest(mem_read, 8'b01010101, "mem test 5", passed);
        #40;
        addr = 4'b1000;
        #40;
        passTest(mem_read, 8'b00000000, "mem test 6", passed);
        #40;
        allPassed(passed, 6);
        //$stop;

    end 

endmodule
