module comparator (input a1, a0, b1, b0,
output a_gt_b, b_gt_a, a_eq_b
);

assign a_eq_b = (a1 ~^ b1) & (a0 ~^ b0);  
assign a_gt_b = (a1 & ~b1) | ((a1 ~^ b1) & (a0 & ~b0));
assign b_gt_a = (~a1 & b1) | ((a1 ~^ b1) & (~a0 & b0));

endmodule

