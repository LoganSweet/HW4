
// Single-bit D Flip-Flop with enable
// Positive edge triggered
module register
(
output reg	q,
input		d,
input		wrenable,
input		clk
);
    always @(posedge clk) begin
        if(wrenable) begin
            q = d;
        end
    end
endmodule

// 32-bit D Flip-Flop with enable
// Positive edge triggered
module register32
(
output reg [3:0]	q,
input      [3:0]	d,
input				wrenable,
input				clk
);
parameter size = 32; 
genvar i; 
generate 
	for (i=0; i<size; i=i+1)
		begin: reg32
			register makereg32(q[i], d[i], wrenable, clk); 
	end        
endgenerate
//register r0(q[0], d[0], wrenable, clk);
endmodule

module register32zero
(
output reg [3:0]	q,
input      [3:0]	d,
input				wrenable,
input				clk
);

register r0(q[0], d[0], wrenable, clk);
parameter size = 32; 
genvar i; 
generate 
	for (i=1; i<size; i=i+1)
		begin: reg32
			register makereg32(0, d[i], wrenable, clk); 
		end        
endgenerate
//register r0(q[0], d[0], wrenable, clk);
endmodule



