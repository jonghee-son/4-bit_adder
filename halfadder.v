module halfadder (
	o_sum,
	o_carry,
	i_a,
	i_b,
);

	output wire o_sum, o_carry;
	input wire i_a, i_b;
	
	assign o_sum = i_a ^ i_b;
	assign o_carry = i_a & i_b;
	
endmodule