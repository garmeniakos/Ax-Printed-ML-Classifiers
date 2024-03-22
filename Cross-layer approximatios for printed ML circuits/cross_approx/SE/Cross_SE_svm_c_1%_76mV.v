//weights: [[-31, -38, 21, 64, -8, -11, -71], [33, 34, 20, 48, 0, -24, -60], [14, 12, 8, 8, 15, -11, 12]]
//intercepts: [1091, -515, -781]
//act size: [5, 13]
//pred num: 3
module top (inp, predo, out);
input [34:0] inp;
output [5:0] predo;
output [1:0] out;

// classifier: 0
    wire signed [12:0] n_0_0_po_0;
    //weight -31: 8'sb11100001
    assign n_0_0_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11100001;

    wire signed [12:0] n_0_0_po_1;
    //weight -38: 8'sb11011010
    assign n_0_0_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11011010;

    wire signed [12:0] n_0_0_po_2;
    //weight 21: 8'sb00010101
    assign n_0_0_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00010101;

    wire signed [12:0] n_0_0_po_3;
    //weight 64: 8'sb01000000
    assign n_0_0_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb01000000;

    wire signed [12:0] n_0_0_po_4;
    //weight -8: 8'sb11111000
    assign n_0_0_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11111000;

    wire signed [12:0] n_0_0_po_5;
    //weight -11: 8'sb11110101
    assign n_0_0_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb11110101;

    wire signed [12:0] n_0_0_po_6;
    //weight -71: 8'sb10111001
    assign n_0_0_po_6 = $signed({1'b0, inp[34:30]}) * 8'sb10111001;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 1091 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6;
    wire n_0_0;
    assign n_0_0 = n_0_0_sum[12];

// classifier: 1
    wire signed [12:0] n_0_1_po_0;
    //weight 33: 8'sb00100001
    assign n_0_1_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00100001;

    wire signed [12:0] n_0_1_po_1;
    //weight 34: 8'sb00100010
    assign n_0_1_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00100010;

    wire signed [12:0] n_0_1_po_2;
    //weight 20: 8'sb00010100
    assign n_0_1_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00010100;

    wire signed [12:0] n_0_1_po_3;
    //weight 48: 8'sb00110000
    assign n_0_1_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00110000;

    wire signed [12:0] n_0_1_po_4;
    //weight 0: 8'sb00000000
    assign n_0_1_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00000000;

    wire signed [12:0] n_0_1_po_5;
    //weight -24: 8'sb11101000
    assign n_0_1_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb11101000;

    wire signed [12:0] n_0_1_po_6;
    //weight -60: 8'sb11000100
    assign n_0_1_po_6 = $signed({1'b0, inp[34:30]}) * 8'sb11000100;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -515 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [12:0] n_0_2_po_0;
    //weight 14: 8'sb00001110
    assign n_0_2_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00001110;

    wire signed [12:0] n_0_2_po_1;
    //weight 12: 8'sb00001100
    assign n_0_2_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00001100;

    wire signed [12:0] n_0_2_po_2;
    //weight 8: 8'sb00001000
    assign n_0_2_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00001000;

    wire signed [12:0] n_0_2_po_3;
    //weight 8: 8'sb00001000
    assign n_0_2_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00001000;

    wire signed [12:0] n_0_2_po_4;
    //weight 15: 8'sb00001111
    assign n_0_2_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00001111;

    wire signed [12:0] n_0_2_po_5;
    //weight -11: 8'sb11110101
    assign n_0_2_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb11110101;

    wire signed [12:0] n_0_2_po_6;
    //weight 12: 8'sb00001100
    assign n_0_2_po_6 = $signed({1'b0, inp[34:30]}) * 8'sb00001100;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -781 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6;
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
