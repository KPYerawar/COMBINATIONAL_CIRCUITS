module tb_comparator;
reg a1, a0, b1, b0;
wire a_gt_b, b_gt_a, a_eq_b;

comparator uut (
    .a1(a1),
    .a0(a0),
    .b1(b1),
    .b0(b0),
    .a_gt_b(a_gt_b),
    .b_gt_a(b_gt_a),
    .a_eq_b(a_eq_b)
  );

initial begin
    $dumpfile ("tb_out.vvp");
    $dumpvars(0, tb_comparator);
    a1 = 0; a0 = 0; b1 = 0; b0 = 0; #10;
    a1 = 0; a0 = 1; b1 = 0; b0 = 0; #10;
    a1 = 1; a0 = 0; b1 = 0; b0 = 1; #10;
    a1 = 1; a0 = 1; b1 = 0; b0 = 1; #10;
    a1 = 1; a0 = 1; b1 = 1; b0 = 1; #10;
    a1 = 0; a0 = 1; b1 = 1; b0 = 0; #10;
    a1 = 0; a0 = 0; b1 = 1; b0 = 1; #10;
$finish;
     end

endmodule

