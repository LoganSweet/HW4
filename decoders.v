// 32 bit decoder with enable signal
//   enable=0: all output bits are 0
//   enable=1: out[address] is 1, all other outputs are 0

module decoder1to32
(
output[31:0]	out,
input		enable,
input[4:0]	address
);
    assign out = enable<<address; 
endmodule


/////////// 
//How the decoder1to32 module works: (DELIVERABLE 6)
//The << operator is a binary shift to the left.  
//If the enable value is zero (0), the zero is shifted and the output of the decoder remains at zero. 
//If the enable value is 1, that one is shifted by as many positions as the address dictates. 
//This makes it so that the output of the decoder is a one for that ddress, and a zero for the rest of the addresses. 


