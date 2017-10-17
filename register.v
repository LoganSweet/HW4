
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
output reg [31:0]	q,
input      [31:0]	d,
input				wrenable,
input				clk
);
genvar i; 
generate 
	for (i=0; i<32; i=i+1)
		begin: rr32
			 always @(posedge clk) begin
        		if(wrenable) begin
            q[i] = d[i];
				end 
        	end
    end 

endgenerate


//register r0(q[0], d[0], wrenable, clk);
endmodule

module register32zero
(
output reg [31:0]	q,
input      [31:0]	d,
input				wrenable,
input				clk
);
always @(posedge clk) begin
	if(wrenable) begin
		q = 32'd0;
	end 
end 

endmodule



