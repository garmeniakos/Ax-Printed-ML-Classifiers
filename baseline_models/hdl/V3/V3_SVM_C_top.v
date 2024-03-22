//weights: [[-6, 4, -2, -8, -2, -67], [-5, 15, -8, -13, -14, 2], [1, -1, 2, 1, -2, 78]]
//intercepts: [222, 191, -163]
//act size: [5, 13]
//pred num: 3
module top (inp, predo, out);
input [29:0] inp;
output [5:0] predo;
output [1:0] out;

// classifier: 0
    wire signed [12:0] n_0_0_po_0;
    //weight -6: 8'sb11111010
    assign n_0_0_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11111010;

    wire signed [12:0] n_0_0_po_1;
    //weight 4: 8'sb00000100
    assign n_0_0_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00000100;

    wire signed [12:0] n_0_0_po_2;
    //weight -2: 8'sb11111110
    assign n_0_0_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11111110;

    wire signed [12:0] n_0_0_po_3;
    //weight -8: 8'sb11111000
    assign n_0_0_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11111000;

    wire signed [12:0] n_0_0_po_4;
    //weight -2: 8'sb11111110
    assign n_0_0_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11111110;

    wire signed [12:0] n_0_0_po_5;
    //weight -67: 8'sb10111101
    assign n_0_0_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb10111101;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 222 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    wire n_0_0;
    assign n_0_0 = n_0_0_sum[12];

// classifier: 1
    wire signed [12:0] n_0_1_po_0;
    //weight -5: 8'sb11111011
    assign n_0_1_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11111011;

    wire signed [12:0] n_0_1_po_1;
    //weight 15: 8'sb00001111
    assign n_0_1_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00001111;

    wire signed [12:0] n_0_1_po_2;
    //weight -8: 8'sb11111000
    assign n_0_1_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11111000;

    wire signed [12:0] n_0_1_po_3;
    //weight -13: 8'sb11110011
    assign n_0_1_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11110011;

    wire signed [12:0] n_0_1_po_4;
    //weight -14: 8'sb11110010
    assign n_0_1_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11110010;

    wire signed [12:0] n_0_1_po_5;
    //weight 2: 8'sb00000010
    assign n_0_1_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb00000010;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 191 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [12:0] n_0_2_po_0;
    //weight 1: 8'sb00000001
    assign n_0_2_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00000001;

    wire signed [12:0] n_0_2_po_1;
    //weight -1: 8'sb11111111
    assign n_0_2_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11111111;

    wire signed [12:0] n_0_2_po_2;
    //weight 2: 8'sb00000010
    assign n_0_2_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00000010;

    wire signed [12:0] n_0_2_po_3;
    //weight 1: 8'sb00000001
    assign n_0_2_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00000001;

    wire signed [12:0] n_0_2_po_4;
    //weight -2: 8'sb11111110
    assign n_0_2_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11111110;

    wire signed [12:0] n_0_2_po_5;
    //weight 78: 8'sb01001110
    assign n_0_2_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb01001110;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -163 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
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
