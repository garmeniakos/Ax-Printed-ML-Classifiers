//weights: [[-12, 64, -28, 40, 8, -4, -34, -42, 9, -24, -8, -7, -16, -24, -16, 8, -12, -32, -8, -32, 0], [-32, 24, -14, 34, -4, 0, -56, -46, -8, -32, 0, -4, -4, -8, 8, 0, 24, 28, 32, -40, -8], [1, 8, -12, -8, -14, -16, -31, -24, -8, -32, 12, -4, 8, 0, 24, -12, 20, 33, 28, -20, 0]]
//intercepts: [1374, 346, -231]
//act size: [4, 13]
//pred num: 3
module top (inp, predo, out);
input [83:0] inp;
output [5:0] predo;
output [1:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -12: 8'sb11110100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_1;
    //weight 64: 8'sb01000000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_2;
    //weight -28: 8'sb11100100
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11100100;

    wire signed [11:0] n_0_0_po_3;
    //weight 40: 8'sb00101000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00101000;

    wire signed [11:0] n_0_0_po_4;
    //weight 8: 8'sb00001000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_5;
    //weight -4: 8'sb11111100
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_6;
    //weight -34: 8'sb11011110
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11011110;

    wire signed [11:0] n_0_0_po_7;
    //weight -42: 8'sb11010110
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11010110;

    wire signed [11:0] n_0_0_po_8;
    //weight 9: 8'sb00001001
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001001;

    wire signed [11:0] n_0_0_po_9;
    //weight -24: 8'sb11101000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_10;
    //weight -8: 8'sb11111000
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_11;
    //weight -7: 8'sb11111001
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_12;
    //weight -16: 8'sb11110000
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_13;
    //weight -24: 8'sb11101000
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_14;
    //weight -16: 8'sb11110000
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_15;
    //weight 8: 8'sb00001000
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_16;
    //weight -12: 8'sb11110100
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_17;
    //weight -32: 8'sb11100000
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_18;
    //weight -8: 8'sb11111000
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_19;
    //weight -32: 8'sb11100000
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_20;
    //weight 0: 8'sb00000000
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000000;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 1374 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;
    wire n_0_0;
    assign n_0_0 = n_0_0_sum[12];

// classifier: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -32: 8'sb11100000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100000;

    wire signed [11:0] n_0_1_po_1;
    //weight 24: 8'sb00011000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_2;
    //weight -14: 8'sb11110010
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110010;

    wire signed [11:0] n_0_1_po_3;
    //weight 34: 8'sb00100010
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100010;

    wire signed [11:0] n_0_1_po_4;
    //weight -4: 8'sb11111100
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_5;
    //weight 0: 8'sb00000000
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_6;
    //weight -56: 8'sb11001000
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11001000;

    wire signed [11:0] n_0_1_po_7;
    //weight -46: 8'sb11010010
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11010010;

    wire signed [11:0] n_0_1_po_8;
    //weight -8: 8'sb11111000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_9;
    //weight -32: 8'sb11100000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11100000;

    wire signed [11:0] n_0_1_po_10;
    //weight 0: 8'sb00000000
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_11;
    //weight -4: 8'sb11111100
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_12;
    //weight -4: 8'sb11111100
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_13;
    //weight -8: 8'sb11111000
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_14;
    //weight 8: 8'sb00001000
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00001000;

    wire signed [11:0] n_0_1_po_15;
    //weight 0: 8'sb00000000
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_16;
    //weight 24: 8'sb00011000
    assign n_0_1_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_17;
    //weight 28: 8'sb00011100
    assign n_0_1_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00011100;

    wire signed [11:0] n_0_1_po_18;
    //weight 32: 8'sb00100000
    assign n_0_1_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00100000;

    wire signed [11:0] n_0_1_po_19;
    //weight -40: 8'sb11011000
    assign n_0_1_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11011000;

    wire signed [11:0] n_0_1_po_20;
    //weight -8: 8'sb11111000
    assign n_0_1_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11111000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 346 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19 + n_0_1_po_20;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 1: 8'sb00000001
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000001;

    wire signed [11:0] n_0_2_po_1;
    //weight 8: 8'sb00001000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_2;
    //weight -12: 8'sb11110100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110100;

    wire signed [11:0] n_0_2_po_3;
    //weight -8: 8'sb11111000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_4;
    //weight -14: 8'sb11110010
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110010;

    wire signed [11:0] n_0_2_po_5;
    //weight -16: 8'sb11110000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110000;

    wire signed [11:0] n_0_2_po_6;
    //weight -31: 8'sb11100001
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11100001;

    wire signed [11:0] n_0_2_po_7;
    //weight -24: 8'sb11101000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101000;

    wire signed [11:0] n_0_2_po_8;
    //weight -8: 8'sb11111000
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_9;
    //weight -32: 8'sb11100000
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11100000;

    wire signed [11:0] n_0_2_po_10;
    //weight 12: 8'sb00001100
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00001100;

    wire signed [11:0] n_0_2_po_11;
    //weight -4: 8'sb11111100
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111100;

    wire signed [11:0] n_0_2_po_12;
    //weight 8: 8'sb00001000
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_13;
    //weight 0: 8'sb00000000
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_14;
    //weight 24: 8'sb00011000
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_po_15;
    //weight -12: 8'sb11110100
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11110100;

    wire signed [11:0] n_0_2_po_16;
    //weight 20: 8'sb00010100
    assign n_0_2_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00010100;

    wire signed [11:0] n_0_2_po_17;
    //weight 33: 8'sb00100001
    assign n_0_2_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00100001;

    wire signed [11:0] n_0_2_po_18;
    //weight 28: 8'sb00011100
    assign n_0_2_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00011100;

    wire signed [11:0] n_0_2_po_19;
    //weight -20: 8'sb11101100
    assign n_0_2_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11101100;

    wire signed [11:0] n_0_2_po_20;
    //weight 0: 8'sb00000000
    assign n_0_2_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000000;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -231 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_19 + n_0_2_po_20;
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
