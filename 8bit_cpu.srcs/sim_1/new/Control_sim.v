`timescale 1ns / 1ps
`define STRLEN 32


module Control_sim;

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
	
	reg [3:0] addr_prog;// load, en;
	reg write_prog, clk;
	reg [7:0] mem_write_prog; 
	wire [7:0] mem_read, bus, outD;
	reg [5:0] passed; 
	//reg addr_en;
	//reg start;

    bus_8bit uut(.clk(clk), .bus_reg(bus), .mem_read_data(mem_read), .mem_write_data_prog(mem_write_prog), .addr_write_prog(addr_prog), .write_prog(write_prog), .out_DISP(outD));
    
    always
        #5 clk <= ~clk;
        
    initial begin
        //load = 0;
        //en = 0;
        passed = 0;
        write_prog = 0;
        //addr_en = 1'b1;
        clk = 0;
        //start = 0;
        #130;
        passTest(outD, 8'b00101010, "LDA14+ADD15+OUT: OP-28+14=42", passed);
        #100;
        passTest(outD, 8'b00011100, "SUB15+OUT: OP-42-14=28", passed);
        #100; 
        passTest(outD, 8'b00001000, "LDAI8+OUT: 18", passed);
        #210;
        passTest(outD, 8'b00101010, "2 LDA14+ADD15+OUT: OP-28+14=42", passed);
        #100;
        passTest(outD, 8'b00011100, "2 SUB15+OUT: OP-42-14=28", passed);
        #100; 
        passTest(outD, 8'b00001000, "2 LDAI8+OUT: 18", passed);
       // start = 1;
        //#1000;
        #20;
        allPassed(passed, 6);
    end 

endmodule
