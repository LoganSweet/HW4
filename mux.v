// Deliverable 4 
// 32 by 1 mux
// some code recycled from lab1 "FourInMux"

/// use this one to test using mux.t.v testbench! 
module mux4to1by1
(
output      out,
input[2:0]  address,
input[3:0] inputs
);

wire[3:0] inputsofmux;
wire       outputofmux;
assign outputofmux=inputsofmux[address];
endmodule

// check this one after using mux.t.v to test that the idea works 
module mux32to1by1
(
output      out,
input[4:0]  address,
input[31:0] inputs
);

wire[31:0] inputsofmux;
wire       outputofmux;

assign outputofmux=inputsofmux[address];

endmodule



/*
module FourInMux // this module is a four input mux that takes in four inputs (in0, in1, in2, and in3) and uses switches S0 and S1 to pick the value for out
(
    output out,
    input S0, S1,
    input in0, in1, in2, in3
);
    wire nS0; 
    wire nS1; 

    wire out0; 
    wire out1; 
    wire out2; 
    wire out3; 

    `NOT S0inv(nS0, S0);
    `NOT S1inv(nS1, S1);
    `NAND n0(out0, nS0, nS1, in0);
    `NAND n1(out1, S0,  nS1, in1);
    `NAND n2(out2, nS0, S1, in2);
    `NAND n3(out3, S0,  S1, in3);

    `NAND addthem(out, out0, out1, out2, out3);
endmodule

*/ 
