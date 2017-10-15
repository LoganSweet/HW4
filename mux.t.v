// 32 mux testbench for HW4 testbench


// NEEDS A LOT OF WORK
// copied from a different testbench just to avoind too much typing
// finish the 4 input 2^2 mux, then test it using this file


`timescale 1 ns / 1 ps
`include "mux.v"

module test32MUX();

    wire sum, carryout;
    reg a, b, carryin;

  // order to follow: output out, input[4:0] address, input[31:0] inputs
	mux32to1by1 testing(out, address, inputs); 

    initial begin

    $display("a b CarIn | Sum CarO | ExSum ExCar ");

    a=0; b=0; carryin=0; #1000 
    $display("%b %b   %b   |  %b   %b   |   0   0   ", a, b, carryin, sum, carryout);
    a=1; b=0; carryin=0; #1000 
    $display("%b %b   %b   |  %b   %b   |   1   0   ", a, b, carryin, sum, carryout);
    a=0; b=1; carryin=0; #1000 
    $display("%b %b   %b   |  %b   %b   |   1   0   ", a, b, carryin, sum, carryout);
    a=1; b=1; carryin=0; #1000 
    $display("%b %b   %b   |  %b   %b   |   0   1   ", a, b, carryin, sum, carryout);
    
    a=0; b=0; carryin=1; #1000 
    $display("%b %b   %b   |  %b   %b   |   1   0   ", a, b, carryin, sum, carryout);
    a=1; b=0; carryin=1; #1000 
    $display("%b %b   %b   |  %b   %b   |   0   1   ", a, b, carryin, sum, carryout);
    a=0; b=1; carryin=1; #1000 
    $display("%b %b   %b   |  %b   %b   |   0   1   ", a, b, carryin, sum, carryout);
    a=1; b=1; carryin=1; #1000 
    $display("%b %b   %b   |  %b   %b   |   1   1   ", a, b, carryin, sum, carryout);

    end
endmodule

// test mux

// test mux functionality: 	
	FourInMux testmux(muxout, S0, S1, in0, in1, in2, in3);

	$display("S0 S1 |in0 in1 in2 in3| Output");
	S0 = 0; S1 = 0; in0 = 1'bx; in1 = 0; in2 = 0; in3 = 0; #1000
	$display(" %b %b  | %b   %b   %b   %b | %b", S0, S1, in0, in1, in2, in3, muxout);
	S0 = 1; S1 = 0; in0 = 0; in1 = 1'bx; in2 = 0; in3 = 0; #1000
	$display(" %b %b  | %b   %b   %b   %b | %b", S0, S1, in0, in1, in2, in3, muxout);
	S0 = 0; S1 = 1; in0 = 0; in1 = 0; in2 = 1'bx; in3 = 0; #1000
	$display(" %b %b  | %b   %b   %b   %b | %b", S0, S1, in0, in1, in2, in3, muxout);
	S0 = 1; S1 = 1; in0 = 0; in1 = 0; in2 = 0; in3 = 1'bx; #1000
	$display(" %b %b  | %b   %b   %b   %b | %b", S0, S1, in0, in1, in2, in3, muxout);



