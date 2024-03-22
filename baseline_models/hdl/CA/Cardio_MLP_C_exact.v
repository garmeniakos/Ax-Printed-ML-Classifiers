//weights: [[[-5, 69, -3, 69, 34, -34, -69, -39, 33, -43, 59, 38, 7, 20, 19, 1, 15, 33, 6, -63, 7], [51, -51, 54, -40, 22, 16, 66, 52, -38, 61, -12, 21, -12, 20, -7, -3, 1, 7, 9, 35, -18], [-8, -8, 9, 29, 36, 39, 92, 30, 52, -37, 2, 7, -23, 19, 21, 37, -24, -21, -52, 70, -28]], [[69, -79, -53], [-44, 38, -46], [-126, 49, 73]]]
//intercepts: [[408, 164, 545], [33717, -20843, -40698]]
//act size: [4, 13, 20]
//pred num: 3
module top (inp, predo, out);
input [83:0] inp;
output [62:0] predo;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -5: 8'sb11111011
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111011;

    wire signed [11:0] n_0_0_po_1;
    //weight 69: 8'sb01000101
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000101;

    wire signed [11:0] n_0_0_po_2;
    //weight -3: 8'sb11111101
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_3;
    //weight 69: 8'sb01000101
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01000101;

    wire signed [11:0] n_0_0_po_4;
    //weight 34: 8'sb00100010
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100010;

    wire signed [11:0] n_0_0_po_5;
    //weight -34: 8'sb11011110
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11011110;

    wire signed [11:0] n_0_0_po_6;
    //weight -69: 8'sb10111011
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb10111011;

    wire signed [11:0] n_0_0_po_7;
    //weight -39: 8'sb11011001
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11011001;

    wire signed [11:0] n_0_0_po_8;
    //weight 33: 8'sb00100001
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00100001;

    wire signed [11:0] n_0_0_po_9;
    //weight -43: 8'sb11010101
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11010101;

    wire signed [11:0] n_0_0_po_10;
    //weight 59: 8'sb00111011
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00111011;

    wire signed [11:0] n_0_0_po_11;
    //weight 38: 8'sb00100110
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00100110;

    wire signed [11:0] n_0_0_po_12;
    //weight 7: 8'sb00000111
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_13;
    //weight 20: 8'sb00010100
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010100;

    wire signed [11:0] n_0_0_po_14;
    //weight 19: 8'sb00010011
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00010011;

    wire signed [11:0] n_0_0_po_15;
    //weight 1: 8'sb00000001
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000001;

    wire signed [11:0] n_0_0_po_16;
    //weight 15: 8'sb00001111
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00001111;

    wire signed [11:0] n_0_0_po_17;
    //weight 33: 8'sb00100001
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00100001;

    wire signed [11:0] n_0_0_po_18;
    //weight 6: 8'sb00000110
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00000110;

    wire signed [11:0] n_0_0_po_19;
    //weight -63: 8'sb11000001
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11000001;

    wire signed [11:0] n_0_0_po_20;
    //weight 7: 8'sb00000111
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000111;

    wire signed [13:0] n_0_0_sum;
    assign n_0_0_sum = 408 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;
    //relu
    wire [12:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_0_sum[12:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 51: 8'sb00110011
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00110011;

    wire signed [11:0] n_0_1_po_1;
    //weight -51: 8'sb11001101
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11001101;

    wire signed [11:0] n_0_1_po_2;
    //weight 54: 8'sb00110110
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00110110;

    wire signed [11:0] n_0_1_po_3;
    //weight -40: 8'sb11011000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11011000;

    wire signed [11:0] n_0_1_po_4;
    //weight 22: 8'sb00010110
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010110;

    wire signed [11:0] n_0_1_po_5;
    //weight 16: 8'sb00010000
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010000;

    wire signed [11:0] n_0_1_po_6;
    //weight 66: 8'sb01000010
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01000010;

    wire signed [11:0] n_0_1_po_7;
    //weight 52: 8'sb00110100
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00110100;

    wire signed [11:0] n_0_1_po_8;
    //weight -38: 8'sb11011010
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11011010;

    wire signed [11:0] n_0_1_po_9;
    //weight 61: 8'sb00111101
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00111101;

    wire signed [11:0] n_0_1_po_10;
    //weight -12: 8'sb11110100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_11;
    //weight 21: 8'sb00010101
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00010101;

    wire signed [11:0] n_0_1_po_12;
    //weight -12: 8'sb11110100
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_13;
    //weight 20: 8'sb00010100
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010100;

    wire signed [11:0] n_0_1_po_14;
    //weight -7: 8'sb11111001
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11111001;

    wire signed [11:0] n_0_1_po_15;
    //weight -3: 8'sb11111101
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_po_16;
    //weight 1: 8'sb00000001
    assign n_0_1_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_17;
    //weight 7: 8'sb00000111
    assign n_0_1_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00000111;

    wire signed [11:0] n_0_1_po_18;
    //weight 9: 8'sb00001001
    assign n_0_1_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00001001;

    wire signed [11:0] n_0_1_po_19;
    //weight 35: 8'sb00100011
    assign n_0_1_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00100011;

    wire signed [11:0] n_0_1_po_20;
    //weight -18: 8'sb11101110
    assign n_0_1_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11101110;

    wire signed [13:0] n_0_1_sum;
    assign n_0_1_sum = 164 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19 + n_0_1_po_20;
    //relu
    wire [12:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_1_sum[12:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -8: 8'sb11111000
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_1;
    //weight -8: 8'sb11111000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_2;
    //weight 9: 8'sb00001001
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001001;

    wire signed [11:0] n_0_2_po_3;
    //weight 29: 8'sb00011101
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011101;

    wire signed [11:0] n_0_2_po_4;
    //weight 36: 8'sb00100100
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100100;

    wire signed [11:0] n_0_2_po_5;
    //weight 39: 8'sb00100111
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00100111;

    wire signed [11:0] n_0_2_po_6;
    //weight 92: 8'sb01011100
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01011100;

    wire signed [11:0] n_0_2_po_7;
    //weight 30: 8'sb00011110
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011110;

    wire signed [11:0] n_0_2_po_8;
    //weight 52: 8'sb00110100
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00110100;

    wire signed [11:0] n_0_2_po_9;
    //weight -37: 8'sb11011011
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11011011;

    wire signed [11:0] n_0_2_po_10;
    //weight 2: 8'sb00000010
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000010;

    wire signed [11:0] n_0_2_po_11;
    //weight 7: 8'sb00000111
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00000111;

    wire signed [11:0] n_0_2_po_12;
    //weight -23: 8'sb11101001
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11101001;

    wire signed [11:0] n_0_2_po_13;
    //weight 19: 8'sb00010011
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010011;

    wire signed [11:0] n_0_2_po_14;
    //weight 21: 8'sb00010101
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00010101;

    wire signed [11:0] n_0_2_po_15;
    //weight 37: 8'sb00100101
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00100101;

    wire signed [11:0] n_0_2_po_16;
    //weight -24: 8'sb11101000
    assign n_0_2_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11101000;

    wire signed [11:0] n_0_2_po_17;
    //weight -21: 8'sb11101011
    assign n_0_2_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11101011;

    wire signed [11:0] n_0_2_po_18;
    //weight -52: 8'sb11001100
    assign n_0_2_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11001100;

    wire signed [11:0] n_0_2_po_19;
    //weight 70: 8'sb01000110
    assign n_0_2_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb01000110;

    wire signed [11:0] n_0_2_po_20;
    //weight -28: 8'sb11100100
    assign n_0_2_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11100100;

    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = 545 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_19 + n_0_2_po_20;
    //relu
    wire [12:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_2_sum[12:0]);

// layer: 1 - neuron: 0
    wire signed [20:0] n_1_0_po_0;
    //weight 69: 8'sb01000101
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb01000101;

    wire signed [20:0] n_1_0_po_1;
    //weight -79: 8'sb10110001
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb10110001;

    wire signed [20:0] n_1_0_po_2;
    //weight -53: 8'sb11001011
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11001011;

    wire signed [20:0] n_1_0_sum;
    assign n_1_0_sum = 33717 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [19:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_0_sum[19:0]);

// layer: 1 - neuron: 1
    wire signed [20:0] n_1_1_po_0;
    //weight -44: 8'sb11010100
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11010100;

    wire signed [20:0] n_1_1_po_1;
    //weight 38: 8'sb00100110
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00100110;

    wire signed [20:0] n_1_1_po_2;
    //weight -46: 8'sb11010010
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11010010;

    wire signed [20:0] n_1_1_sum;
    assign n_1_1_sum = -20843 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [19:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_1_sum[19:0]);

// layer: 1 - neuron: 2
    wire signed [20:0] n_1_2_po_0;
    //weight -126: 8'sb10000010
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb10000010;

    wire signed [20:0] n_1_2_po_1;
    //weight 49: 8'sb00110001
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00110001;

    wire signed [20:0] n_1_2_po_2;
    //weight 73: 8'sb01001001
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb01001001;

    wire signed [20:0] n_1_2_sum;
    assign n_1_2_sum = -40698 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [19:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_2_sum[19:0]);

    assign predo = {n_1_0,n_1_1,n_1_2};
// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [20:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [20:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
