//weights: [[[15, 19, 10, 15, -3, -7, -24, -17, -16, -24, 2, -18, 0, 27, -38, 31], [31, 21, 10, 16, -15, -4, -15, -5, 22, -12, 44, -1, 19, -41, -44, -37], [-14, 7, -22, 0, 35, -7, 8, -22, -44, 12, -8, 18, -5, 29, 31, 17], [-30, 7, 4, 30, 25, 14, 19, -7, 24, -28, -12, -31, -7, -15, 0, -28], [-18, 33, -14, 15, 3, -13, -1, -21, 16, -17, 5, 9, -3, 38, -9, 44]], [[-1, -8, -51, -50, 38], [5, -17, -39, 25, -50], [4, -30, 30, 23, -54], [-26, 8, -37, 20, 0], [-33, 14, -40, -31, 24], [-2, 17, 35, -7, -20], [29, 5, -26, -20, 4], [-6, -18, -15, 19, 18], [24, -33, -27, -1, 14], [-65, 29, 49, -20, -31]]]
//intercepts: [[377, -72, -97, 208, -34], [281, 7576, -1618, -10440, 6413, -1190, -7701, -4225, 6749, 5072]]
//act size: [4, 12, 19]
//pred num: 10
module top (inp, predo, out);
input [63:0] inp;
output [199:0] predo;
output [3:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 15: 8'sb00001111
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001111;

    wire signed [11:0] n_0_0_po_1;
    //weight 19: 8'sb00010011
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010011;

    wire signed [11:0] n_0_0_po_2;
    //weight 10: 8'sb00001010
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001010;

    wire signed [11:0] n_0_0_po_3;
    //weight 15: 8'sb00001111
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001111;

    wire signed [11:0] n_0_0_po_4;
    //weight -3: 8'sb11111101
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_5;
    //weight -7: 8'sb11111001
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_6;
    //weight -24: 8'sb11101000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_7;
    //weight -17: 8'sb11101111
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101111;

    wire signed [11:0] n_0_0_po_8;
    //weight -16: 8'sb11110000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_9;
    //weight -24: 8'sb11101000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_10;
    //weight 2: 8'sb00000010
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000010;

    wire signed [11:0] n_0_0_po_11;
    //weight -18: 8'sb11101110
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11101110;

    wire signed [11:0] n_0_0_po_12;
    //weight 0: 8'sb00000000
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_13;
    //weight 27: 8'sb00011011
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00011011;

    wire signed [11:0] n_0_0_po_14;
    //weight -38: 8'sb11011010
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11011010;

    wire signed [11:0] n_0_0_po_15;
    //weight 31: 8'sb00011111
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00011111;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 377 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 31: 8'sb00011111
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00011111;

    wire signed [11:0] n_0_1_po_1;
    //weight 21: 8'sb00010101
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010101;

    wire signed [11:0] n_0_1_po_2;
    //weight 10: 8'sb00001010
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001010;

    wire signed [11:0] n_0_1_po_3;
    //weight 16: 8'sb00010000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00010000;

    wire signed [11:0] n_0_1_po_4;
    //weight -15: 8'sb11110001
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110001;

    wire signed [11:0] n_0_1_po_5;
    //weight -4: 8'sb11111100
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_6;
    //weight -15: 8'sb11110001
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110001;

    wire signed [11:0] n_0_1_po_7;
    //weight -5: 8'sb11111011
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111011;

    wire signed [11:0] n_0_1_po_8;
    //weight 22: 8'sb00010110
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010110;

    wire signed [11:0] n_0_1_po_9;
    //weight -12: 8'sb11110100
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_10;
    //weight 44: 8'sb00101100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00101100;

    wire signed [11:0] n_0_1_po_11;
    //weight -1: 8'sb11111111
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_12;
    //weight 19: 8'sb00010011
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00010011;

    wire signed [11:0] n_0_1_po_13;
    //weight -41: 8'sb11010111
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11010111;

    wire signed [11:0] n_0_1_po_14;
    //weight -44: 8'sb11010100
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11010100;

    wire signed [11:0] n_0_1_po_15;
    //weight -37: 8'sb11011011
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11011011;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -72 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -14: 8'sb11110010
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110010;

    wire signed [11:0] n_0_2_po_1;
    //weight 7: 8'sb00000111
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000111;

    wire signed [11:0] n_0_2_po_2;
    //weight -22: 8'sb11101010
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11101010;

    wire signed [11:0] n_0_2_po_3;
    //weight 0: 8'sb00000000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_4;
    //weight 35: 8'sb00100011
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100011;

    wire signed [11:0] n_0_2_po_5;
    //weight -7: 8'sb11111001
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111001;

    wire signed [11:0] n_0_2_po_6;
    //weight 8: 8'sb00001000
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_7;
    //weight -22: 8'sb11101010
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101010;

    wire signed [11:0] n_0_2_po_8;
    //weight -44: 8'sb11010100
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11010100;

    wire signed [11:0] n_0_2_po_9;
    //weight 12: 8'sb00001100
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001100;

    wire signed [11:0] n_0_2_po_10;
    //weight -8: 8'sb11111000
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_11;
    //weight 18: 8'sb00010010
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00010010;

    wire signed [11:0] n_0_2_po_12;
    //weight -5: 8'sb11111011
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111011;

    wire signed [11:0] n_0_2_po_13;
    //weight 29: 8'sb00011101
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00011101;

    wire signed [11:0] n_0_2_po_14;
    //weight 31: 8'sb00011111
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00011111;

    wire signed [11:0] n_0_2_po_15;
    //weight 17: 8'sb00010001
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00010001;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -97 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 0 - neuron: 3
    wire signed [11:0] n_0_3_po_0;
    //weight -30: 8'sb11100010
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100010;

    wire signed [11:0] n_0_3_po_1;
    //weight 7: 8'sb00000111
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000111;

    wire signed [11:0] n_0_3_po_2;
    //weight 4: 8'sb00000100
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000100;

    wire signed [11:0] n_0_3_po_3;
    //weight 30: 8'sb00011110
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011110;

    wire signed [11:0] n_0_3_po_4;
    //weight 25: 8'sb00011001
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011001;

    wire signed [11:0] n_0_3_po_5;
    //weight 14: 8'sb00001110
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001110;

    wire signed [11:0] n_0_3_po_6;
    //weight 19: 8'sb00010011
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00010011;

    wire signed [11:0] n_0_3_po_7;
    //weight -7: 8'sb11111001
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111001;

    wire signed [11:0] n_0_3_po_8;
    //weight 24: 8'sb00011000
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00011000;

    wire signed [11:0] n_0_3_po_9;
    //weight -28: 8'sb11100100
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11100100;

    wire signed [11:0] n_0_3_po_10;
    //weight -12: 8'sb11110100
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110100;

    wire signed [11:0] n_0_3_po_11;
    //weight -31: 8'sb11100001
    assign n_0_3_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11100001;

    wire signed [11:0] n_0_3_po_12;
    //weight -7: 8'sb11111001
    assign n_0_3_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111001;

    wire signed [11:0] n_0_3_po_13;
    //weight -15: 8'sb11110001
    assign n_0_3_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11110001;

    wire signed [11:0] n_0_3_po_14;
    //weight 0: 8'sb00000000
    assign n_0_3_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00000000;

    wire signed [11:0] n_0_3_po_15;
    //weight -28: 8'sb11100100
    assign n_0_3_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11100100;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = 208 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10 + n_0_3_po_11 + n_0_3_po_12 + n_0_3_po_13 + n_0_3_po_14 + n_0_3_po_15;
    //relu
    wire [11:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_3_sum[11:0]);

// layer: 0 - neuron: 4
    wire signed [11:0] n_0_4_po_0;
    //weight -18: 8'sb11101110
    assign n_0_4_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101110;

    wire signed [11:0] n_0_4_po_1;
    //weight 33: 8'sb00100001
    assign n_0_4_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00100001;

    wire signed [11:0] n_0_4_po_2;
    //weight -14: 8'sb11110010
    assign n_0_4_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110010;

    wire signed [11:0] n_0_4_po_3;
    //weight 15: 8'sb00001111
    assign n_0_4_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001111;

    wire signed [11:0] n_0_4_po_4;
    //weight 3: 8'sb00000011
    assign n_0_4_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000011;

    wire signed [11:0] n_0_4_po_5;
    //weight -13: 8'sb11110011
    assign n_0_4_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110011;

    wire signed [11:0] n_0_4_po_6;
    //weight -1: 8'sb11111111
    assign n_0_4_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111111;

    wire signed [11:0] n_0_4_po_7;
    //weight -21: 8'sb11101011
    assign n_0_4_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101011;

    wire signed [11:0] n_0_4_po_8;
    //weight 16: 8'sb00010000
    assign n_0_4_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010000;

    wire signed [11:0] n_0_4_po_9;
    //weight -17: 8'sb11101111
    assign n_0_4_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11101111;

    wire signed [11:0] n_0_4_po_10;
    //weight 5: 8'sb00000101
    assign n_0_4_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000101;

    wire signed [11:0] n_0_4_po_11;
    //weight 9: 8'sb00001001
    assign n_0_4_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00001001;

    wire signed [11:0] n_0_4_po_12;
    //weight -3: 8'sb11111101
    assign n_0_4_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111101;

    wire signed [11:0] n_0_4_po_13;
    //weight 38: 8'sb00100110
    assign n_0_4_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00100110;

    wire signed [11:0] n_0_4_po_14;
    //weight -9: 8'sb11110111
    assign n_0_4_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11110111;

    wire signed [11:0] n_0_4_po_15;
    //weight 44: 8'sb00101100
    assign n_0_4_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00101100;

    wire signed [12:0] n_0_4_sum;
    assign n_0_4_sum = -34 + n_0_4_po_0 + n_0_4_po_1 + n_0_4_po_2 + n_0_4_po_3 + n_0_4_po_4 + n_0_4_po_5 + n_0_4_po_6 + n_0_4_po_7 + n_0_4_po_8 + n_0_4_po_9 + n_0_4_po_10 + n_0_4_po_11 + n_0_4_po_12 + n_0_4_po_13 + n_0_4_po_14 + n_0_4_po_15;
    //relu
    wire [11:0] n_0_4;
    assign n_0_4 = (n_0_4_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_4_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight -1: 8'sb11111111
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111111;

    wire signed [19:0] n_1_0_po_1;
    //weight -8: 8'sb11111000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111000;

    wire signed [19:0] n_1_0_po_2;
    //weight -51: 8'sb11001101
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11001101;

    wire signed [19:0] n_1_0_po_3;
    //weight -50: 8'sb11001110
    assign n_1_0_po_3 = $signed({1'b0, n_0_3}) * 8'sb11001110;

    wire signed [19:0] n_1_0_po_4;
    //weight 38: 8'sb00100110
    assign n_1_0_po_4 = $signed({1'b0, n_0_4}) * 8'sb00100110;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 281 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2 + n_1_0_po_3 + n_1_0_po_4;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight 5: 8'sb00000101
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000101;

    wire signed [19:0] n_1_1_po_1;
    //weight -17: 8'sb11101111
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb11101111;

    wire signed [19:0] n_1_1_po_2;
    //weight -39: 8'sb11011001
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11011001;

    wire signed [19:0] n_1_1_po_3;
    //weight 25: 8'sb00011001
    assign n_1_1_po_3 = $signed({1'b0, n_0_3}) * 8'sb00011001;

    wire signed [19:0] n_1_1_po_4;
    //weight -50: 8'sb11001110
    assign n_1_1_po_4 = $signed({1'b0, n_0_4}) * 8'sb11001110;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = 7576 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2 + n_1_1_po_3 + n_1_1_po_4;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight 4: 8'sb00000100
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000100;

    wire signed [19:0] n_1_2_po_1;
    //weight -30: 8'sb11100010
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11100010;

    wire signed [19:0] n_1_2_po_2;
    //weight 30: 8'sb00011110
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00011110;

    wire signed [19:0] n_1_2_po_3;
    //weight 23: 8'sb00010111
    assign n_1_2_po_3 = $signed({1'b0, n_0_3}) * 8'sb00010111;

    wire signed [19:0] n_1_2_po_4;
    //weight -54: 8'sb11001010
    assign n_1_2_po_4 = $signed({1'b0, n_0_4}) * 8'sb11001010;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = -1618 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2 + n_1_2_po_3 + n_1_2_po_4;
    //relu
    wire [18:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_2_sum[18:0]);

// layer: 1 - neuron: 3
    wire signed [19:0] n_1_3_po_0;
    //weight -26: 8'sb11100110
    assign n_1_3_po_0 = $signed({1'b0, n_0_0}) * 8'sb11100110;

    wire signed [19:0] n_1_3_po_1;
    //weight 8: 8'sb00001000
    assign n_1_3_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001000;

    wire signed [19:0] n_1_3_po_2;
    //weight -37: 8'sb11011011
    assign n_1_3_po_2 = $signed({1'b0, n_0_2}) * 8'sb11011011;

    wire signed [19:0] n_1_3_po_3;
    //weight 20: 8'sb00010100
    assign n_1_3_po_3 = $signed({1'b0, n_0_3}) * 8'sb00010100;

    wire signed [19:0] n_1_3_po_4;
    //weight 0: 8'sb00000000
    assign n_1_3_po_4 = $signed({1'b0, n_0_4}) * 8'sb00000000;

    wire signed [19:0] n_1_3_sum;
    assign n_1_3_sum = -10440 + n_1_3_po_0 + n_1_3_po_1 + n_1_3_po_2 + n_1_3_po_3 + n_1_3_po_4;
    //relu
    wire [18:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_3_sum[18:0]);

// layer: 1 - neuron: 4
    wire signed [19:0] n_1_4_po_0;
    //weight -33: 8'sb11011111
    assign n_1_4_po_0 = $signed({1'b0, n_0_0}) * 8'sb11011111;

    wire signed [19:0] n_1_4_po_1;
    //weight 14: 8'sb00001110
    assign n_1_4_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001110;

    wire signed [19:0] n_1_4_po_2;
    //weight -40: 8'sb11011000
    assign n_1_4_po_2 = $signed({1'b0, n_0_2}) * 8'sb11011000;

    wire signed [19:0] n_1_4_po_3;
    //weight -31: 8'sb11100001
    assign n_1_4_po_3 = $signed({1'b0, n_0_3}) * 8'sb11100001;

    wire signed [19:0] n_1_4_po_4;
    //weight 24: 8'sb00011000
    assign n_1_4_po_4 = $signed({1'b0, n_0_4}) * 8'sb00011000;

    wire signed [19:0] n_1_4_sum;
    assign n_1_4_sum = 6413 + n_1_4_po_0 + n_1_4_po_1 + n_1_4_po_2 + n_1_4_po_3 + n_1_4_po_4;
    //relu
    wire [18:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_4_sum[18:0]);

// layer: 1 - neuron: 5
    wire signed [19:0] n_1_5_po_0;
    //weight -2: 8'sb11111110
    assign n_1_5_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111110;

    wire signed [19:0] n_1_5_po_1;
    //weight 17: 8'sb00010001
    assign n_1_5_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010001;

    wire signed [19:0] n_1_5_po_2;
    //weight 35: 8'sb00100011
    assign n_1_5_po_2 = $signed({1'b0, n_0_2}) * 8'sb00100011;

    wire signed [19:0] n_1_5_po_3;
    //weight -7: 8'sb11111001
    assign n_1_5_po_3 = $signed({1'b0, n_0_3}) * 8'sb11111001;

    wire signed [19:0] n_1_5_po_4;
    //weight -20: 8'sb11101100
    assign n_1_5_po_4 = $signed({1'b0, n_0_4}) * 8'sb11101100;

    wire signed [19:0] n_1_5_sum;
    assign n_1_5_sum = -1190 + n_1_5_po_0 + n_1_5_po_1 + n_1_5_po_2 + n_1_5_po_3 + n_1_5_po_4;
    //relu
    wire [18:0] n_1_5;
    assign n_1_5 = (n_1_5_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_5_sum[18:0]);

// layer: 1 - neuron: 6
    wire signed [19:0] n_1_6_po_0;
    //weight 29: 8'sb00011101
    assign n_1_6_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011101;

    wire signed [19:0] n_1_6_po_1;
    //weight 5: 8'sb00000101
    assign n_1_6_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000101;

    wire signed [19:0] n_1_6_po_2;
    //weight -26: 8'sb11100110
    assign n_1_6_po_2 = $signed({1'b0, n_0_2}) * 8'sb11100110;

    wire signed [19:0] n_1_6_po_3;
    //weight -20: 8'sb11101100
    assign n_1_6_po_3 = $signed({1'b0, n_0_3}) * 8'sb11101100;

    wire signed [19:0] n_1_6_po_4;
    //weight 4: 8'sb00000100
    assign n_1_6_po_4 = $signed({1'b0, n_0_4}) * 8'sb00000100;

    wire signed [19:0] n_1_6_sum;
    assign n_1_6_sum = -7701 + n_1_6_po_0 + n_1_6_po_1 + n_1_6_po_2 + n_1_6_po_3 + n_1_6_po_4;
    //relu
    wire [18:0] n_1_6;
    assign n_1_6 = (n_1_6_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_6_sum[18:0]);

// layer: 1 - neuron: 7
    wire signed [19:0] n_1_7_po_0;
    //weight -6: 8'sb11111010
    assign n_1_7_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111010;

    wire signed [19:0] n_1_7_po_1;
    //weight -18: 8'sb11101110
    assign n_1_7_po_1 = $signed({1'b0, n_0_1}) * 8'sb11101110;

    wire signed [19:0] n_1_7_po_2;
    //weight -15: 8'sb11110001
    assign n_1_7_po_2 = $signed({1'b0, n_0_2}) * 8'sb11110001;

    wire signed [19:0] n_1_7_po_3;
    //weight 19: 8'sb00010011
    assign n_1_7_po_3 = $signed({1'b0, n_0_3}) * 8'sb00010011;

    wire signed [19:0] n_1_7_po_4;
    //weight 18: 8'sb00010010
    assign n_1_7_po_4 = $signed({1'b0, n_0_4}) * 8'sb00010010;

    wire signed [19:0] n_1_7_sum;
    assign n_1_7_sum = -4225 + n_1_7_po_0 + n_1_7_po_1 + n_1_7_po_2 + n_1_7_po_3 + n_1_7_po_4;
    //relu
    wire [18:0] n_1_7;
    assign n_1_7 = (n_1_7_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_7_sum[18:0]);

// layer: 1 - neuron: 8
    wire signed [19:0] n_1_8_po_0;
    //weight 24: 8'sb00011000
    assign n_1_8_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011000;

    wire signed [19:0] n_1_8_po_1;
    //weight -33: 8'sb11011111
    assign n_1_8_po_1 = $signed({1'b0, n_0_1}) * 8'sb11011111;

    wire signed [19:0] n_1_8_po_2;
    //weight -27: 8'sb11100101
    assign n_1_8_po_2 = $signed({1'b0, n_0_2}) * 8'sb11100101;

    wire signed [19:0] n_1_8_po_3;
    //weight -1: 8'sb11111111
    assign n_1_8_po_3 = $signed({1'b0, n_0_3}) * 8'sb11111111;

    wire signed [19:0] n_1_8_po_4;
    //weight 14: 8'sb00001110
    assign n_1_8_po_4 = $signed({1'b0, n_0_4}) * 8'sb00001110;

    wire signed [19:0] n_1_8_sum;
    assign n_1_8_sum = 6749 + n_1_8_po_0 + n_1_8_po_1 + n_1_8_po_2 + n_1_8_po_3 + n_1_8_po_4;
    //relu
    wire [18:0] n_1_8;
    assign n_1_8 = (n_1_8_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_8_sum[18:0]);

// layer: 1 - neuron: 9
    wire signed [19:0] n_1_9_po_0;
    //weight -65: 8'sb10111111
    assign n_1_9_po_0 = $signed({1'b0, n_0_0}) * 8'sb10111111;

    wire signed [19:0] n_1_9_po_1;
    //weight 29: 8'sb00011101
    assign n_1_9_po_1 = $signed({1'b0, n_0_1}) * 8'sb00011101;

    wire signed [19:0] n_1_9_po_2;
    //weight 49: 8'sb00110001
    assign n_1_9_po_2 = $signed({1'b0, n_0_2}) * 8'sb00110001;

    wire signed [19:0] n_1_9_po_3;
    //weight -20: 8'sb11101100
    assign n_1_9_po_3 = $signed({1'b0, n_0_3}) * 8'sb11101100;

    wire signed [19:0] n_1_9_po_4;
    //weight -31: 8'sb11100001
    assign n_1_9_po_4 = $signed({1'b0, n_0_4}) * 8'sb11100001;

    wire signed [19:0] n_1_9_sum;
    assign n_1_9_sum = 5072 + n_1_9_po_0 + n_1_9_po_1 + n_1_9_po_2 + n_1_9_po_3 + n_1_9_po_4;
    //relu
    wire [18:0] n_1_9;
    assign n_1_9 = (n_1_9_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_9_sum[18:0]);

    assign predo = {n_1_0,n_1_1,n_1_2,n_1_3,n_1_4,n_1_5,n_1_6,n_1_7,n_1_8,n_1_9};
// argmax: 10 classes, need 4 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6, n_1_7, n_1_8, n_1_9
    //comp level 0
    wire cmp_0_0;
    wire [19:0] argmax_val_0_0;
    wire [3:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 4'b0000 : 4'b0001;

    wire cmp_0_2;
    wire [19:0] argmax_val_0_2;
    wire [3:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 4'b0010 : 4'b0011;

    wire cmp_0_4;
    wire [19:0] argmax_val_0_4;
    wire [3:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 4'b0100 : 4'b0101;

    wire cmp_0_6;
    wire [19:0] argmax_val_0_6;
    wire [3:0] argmax_idx_0_6;
    assign {cmp_0_6} = ( n_1_6 >= n_1_7 );
    assign {argmax_val_0_6} = ( cmp_0_6 ) ? n_1_6 : n_1_7;
    assign {argmax_idx_0_6} = ( cmp_0_6 ) ? 4'b0110 : 4'b0111;

    wire cmp_0_8;
    wire [19:0] argmax_val_0_8;
    wire [3:0] argmax_idx_0_8;
    assign {cmp_0_8} = ( n_1_8 >= n_1_9 );
    assign {argmax_val_0_8} = ( cmp_0_8 ) ? n_1_8 : n_1_9;
    assign {argmax_idx_0_8} = ( cmp_0_8 ) ? 4'b1000 : 4'b1001;

    //comp level 1
    wire cmp_1_0;
    wire [19:0] argmax_val_1_0;
    wire [3:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [19:0] argmax_val_1_2;
    wire [3:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= argmax_val_0_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : argmax_val_0_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : argmax_idx_0_6;

    //comp level 2
    wire cmp_2_0;
    wire [19:0] argmax_val_2_0;
    wire [3:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    //comp level 3
    wire cmp_3_0;
    wire [19:0] argmax_val_3_0;
    wire [3:0] argmax_idx_3_0;
    assign {cmp_3_0} = ( argmax_val_2_0 >= argmax_val_0_8 );
    assign {argmax_val_3_0} = ( cmp_3_0 ) ? argmax_val_2_0 : argmax_val_0_8;
    assign {argmax_idx_3_0} = ( cmp_3_0 ) ? argmax_idx_2_0 : argmax_idx_0_8;

    assign out = argmax_idx_3_0;

endmodule
