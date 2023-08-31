module fulladder (
	o_sum,
	o_carry,
	i_a,
	i_b,
	i_carry
);

	output wire o_sum, o_carry;
	input wire i_a, i_b, i_carry;
	
	wire int_sum, int_carry0, int_carry1;
	
	halfadder hadd0(.o_sum(int_sum), .o_carry(int_carry0), .i_a(i_a), .i_b(i_b));
	halfadder hadd1(.o_sum(o_sum), .o_carry(int_carry1), .i_a(i_carry), .i_b(int_sum));
	assign o_carry = int_carry0 | int_carry1;

endmodule