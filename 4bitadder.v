module fourbitadder (
	o_sum,
	o_carry,
	i_a,
	i_b,
	i_carry
);

	output wire [3:0] o_sum;
	output wire o_carry;
	input wire [3:0] i_a, i_b;
	input wire i_carry;
	
	wire [2:0] int_carry;
	
	fulladder fadd0(.o_sum(o_sum[0]), .o_carry(int_carry[0]), .i_a(i_a[0]), .i_b(i_b[0]), .i_carry(i_carry));
	fulladder fadd1(.o_sum(o_sum[1]), .o_carry(int_carry[1]), .i_a(i_a[1]), .i_b(i_b[1]), .i_carry(int_carry[0]));
	fulladder fadd2(.o_sum(o_sum[2]), .o_carry(int_carry[2]), .i_a(i_a[2]), .i_b(i_b[2]), .i_carry(int_carry[1]));
	fulladder fadd3(.o_sum(o_sum[3]), .o_carry(o_carry), .i_a(i_a[3]), .i_b(i_b[3]), .i_carry(int_carry[2]));
	
endmodule