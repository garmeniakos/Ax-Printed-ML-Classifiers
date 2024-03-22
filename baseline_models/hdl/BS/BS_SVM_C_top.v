//weights: [[64, 64, -64, -64], [127, 127, -128, -128], [-128, -128, 127, 127]]
//intercepts: [0, -256, -256]
//act size: [4, 13]
//pred num: 3
module top (inp, predo, out);
input [15:0] inp;
output [5:0] predo;
output [1:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 64: 8'sb01000000
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_1;
    //weight 64: 8'sb01000000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_2;
    //weight -64: 8'sb11000000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11000000;

    wire signed [11:0] n_0_0_po_3;
    //weight -64: 8'sb11000000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11000000;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 0 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    wire n_0_0;
    assign n_0_0 = n_0_0_sum[12];

// classifier: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 127: 8'sb01111111
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb01111111;

    wire signed [11:0] n_0_1_po_1;
    //weight 127: 8'sb01111111
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01111111;

    wire signed [11:0] n_0_1_po_2;
    //weight -128: 8'sb10000000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb10000000;

    wire signed [11:0] n_0_1_po_3;
    //weight -128: 8'sb10000000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10000000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -256 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -128: 8'sb10000000
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb10000000;

    wire signed [11:0] n_0_2_po_1;
    //weight -128: 8'sb10000000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb10000000;

    wire signed [11:0] n_0_2_po_2;
    //weight 127: 8'sb01111111
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb01111111;

    wire signed [11:0] n_0_2_po_3;
    //weight 127: 8'sb01111111
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01111111;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -256 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3;
    wire n_0_2;
    assign n_0_2 = n_0_2_sum[12];

// decisionMatrix inp: n_0_0, n_0_1, n_0_2
    wire dm_cmp_0_1, dm_cmp_1_0;
    assign dm_cmp_0_1 = ~n_0_0;
    assign dm_cmp_1_0 = n_0_0;

    wire dm_cmp_0_2, dm_cmp_2_0;
    assign dm_cmp_0_2 = ~n_0_1;
    assign dm_cmp_2_0 = n_0_1;

    wire dm_cmp_1_2, dm_cmp_2_1;
    assign dm_cmp_1_2 = ~n_0_2;
    assign dm_cmp_2_1 = n_0_2;

    wire [1:0] dm_sum_0;
    assign dm_sum_0 = dm_cmp_0_1 + dm_cmp_0_2;
    wire [1:0] dm_sum_1;
    assign dm_sum_1 = dm_cmp_1_0 + dm_cmp_1_2;
    wire [1:0] dm_sum_2;
    assign dm_sum_2 = dm_cmp_2_0 + dm_cmp_2_1;

    assign predo = {dm_sum_0,dm_sum_1,dm_sum_2};
// argmax: 3 classes, need 2 bits
// argmax inp: dm_sum_0, dm_sum_1, dm_sum_2
    //comp level 0
    wire cmp_0_0;
    wire [1:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( dm_sum_0 >= dm_sum_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? dm_sum_0 : dm_sum_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [1:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= dm_sum_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : dm_sum_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
