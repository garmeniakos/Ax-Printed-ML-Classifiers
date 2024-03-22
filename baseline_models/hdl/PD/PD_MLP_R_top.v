//weights: [[[-6, -10, -2, -12, -12, -4, 1, 0, -6, 0, -13, -3, -3, -9, 2, -5], [4, 2, -7, 1, 5, -2, 3, -8, -8, -6, -5, -6, 7, -5, -6, -7], [36, 29, -7, 8, -55, 11, 10, 44, 21, -2, 39, -29, -1, -16, -16, -36], [4, -20, -4, -38, 41, 16, -42, -6, -24, 8, 0, 14, 25, 7, -14, 2], [-26, 35, 18, 88, -21, -31, 53, 75, -19, -49, -17, -11, -5, 29, -1, 38]], [[0, -10, 23, 33, 34]]]
//intercepts: [[-154, -57, -798, 578, -1788], [1667]]
//act size: [4, 12, 19]
//pred num: 1
module top (inp, out);
input [63:0] inp;
output [19:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -6: 8'sb11111010
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111010;

    wire signed [11:0] n_0_0_po_1;
    //weight -10: 8'sb11110110
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110110;

    wire signed [11:0] n_0_0_po_2;
    //weight -2: 8'sb11111110
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111110;

    wire signed [11:0] n_0_0_po_3;
    //weight -12: 8'sb11110100
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_4;
    //weight -12: 8'sb11110100
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_5;
    //weight -4: 8'sb11111100
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_6;
    //weight 1: 8'sb00000001
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000001;

    wire signed [11:0] n_0_0_po_7;
    //weight 0: 8'sb00000000
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_8;
    //weight -6: 8'sb11111010
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111010;

    wire signed [11:0] n_0_0_po_9;
    //weight 0: 8'sb00000000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_10;
    //weight -13: 8'sb11110011
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110011;

    wire signed [11:0] n_0_0_po_11;
    //weight -3: 8'sb11111101
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_12;
    //weight -3: 8'sb11111101
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_13;
    //weight -9: 8'sb11110111
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11110111;

    wire signed [11:0] n_0_0_po_14;
    //weight 2: 8'sb00000010
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00000010;

    wire signed [11:0] n_0_0_po_15;
    //weight -5: 8'sb11111011
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11111011;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -154 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 4: 8'sb00000100
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000100;

    wire signed [11:0] n_0_1_po_1;
    //weight 2: 8'sb00000010
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000010;

    wire signed [11:0] n_0_1_po_2;
    //weight -7: 8'sb11111001
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111001;

    wire signed [11:0] n_0_1_po_3;
    //weight 1: 8'sb00000001
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_4;
    //weight 5: 8'sb00000101
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000101;

    wire signed [11:0] n_0_1_po_5;
    //weight -2: 8'sb11111110
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111110;

    wire signed [11:0] n_0_1_po_6;
    //weight 3: 8'sb00000011
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000011;

    wire signed [11:0] n_0_1_po_7;
    //weight -8: 8'sb11111000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_8;
    //weight -8: 8'sb11111000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_9;
    //weight -6: 8'sb11111010
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_10;
    //weight -5: 8'sb11111011
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111011;

    wire signed [11:0] n_0_1_po_11;
    //weight -6: 8'sb11111010
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_12;
    //weight 7: 8'sb00000111
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000111;

    wire signed [11:0] n_0_1_po_13;
    //weight -5: 8'sb11111011
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11111011;

    wire signed [11:0] n_0_1_po_14;
    //weight -6: 8'sb11111010
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_15;
    //weight -7: 8'sb11111001
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11111001;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -57 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 36: 8'sb00100100
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100100;

    wire signed [11:0] n_0_2_po_1;
    //weight 29: 8'sb00011101
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011101;

    wire signed [11:0] n_0_2_po_2;
    //weight -7: 8'sb11111001
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111001;

    wire signed [11:0] n_0_2_po_3;
    //weight 8: 8'sb00001000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_4;
    //weight -55: 8'sb11001001
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11001001;

    wire signed [11:0] n_0_2_po_5;
    //weight 11: 8'sb00001011
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001011;

    wire signed [11:0] n_0_2_po_6;
    //weight 10: 8'sb00001010
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001010;

    wire signed [11:0] n_0_2_po_7;
    //weight 44: 8'sb00101100
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00101100;

    wire signed [11:0] n_0_2_po_8;
    //weight 21: 8'sb00010101
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010101;

    wire signed [11:0] n_0_2_po_9;
    //weight -2: 8'sb11111110
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111110;

    wire signed [11:0] n_0_2_po_10;
    //weight 39: 8'sb00100111
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00100111;

    wire signed [11:0] n_0_2_po_11;
    //weight -29: 8'sb11100011
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11100011;

    wire signed [11:0] n_0_2_po_12;
    //weight -1: 8'sb11111111
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_13;
    //weight -16: 8'sb11110000
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11110000;

    wire signed [11:0] n_0_2_po_14;
    //weight -16: 8'sb11110000
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11110000;

    wire signed [11:0] n_0_2_po_15;
    //weight -36: 8'sb11011100
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11011100;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -798 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 0 - neuron: 3
    wire signed [11:0] n_0_3_po_0;
    //weight 4: 8'sb00000100
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000100;

    wire signed [11:0] n_0_3_po_1;
    //weight -20: 8'sb11101100
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11101100;

    wire signed [11:0] n_0_3_po_2;
    //weight -4: 8'sb11111100
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_3_po_3;
    //weight -38: 8'sb11011010
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11011010;

    wire signed [11:0] n_0_3_po_4;
    //weight 41: 8'sb00101001
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00101001;

    wire signed [11:0] n_0_3_po_5;
    //weight 16: 8'sb00010000
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010000;

    wire signed [11:0] n_0_3_po_6;
    //weight -42: 8'sb11010110
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11010110;

    wire signed [11:0] n_0_3_po_7;
    //weight -6: 8'sb11111010
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111010;

    wire signed [11:0] n_0_3_po_8;
    //weight -24: 8'sb11101000
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101000;

    wire signed [11:0] n_0_3_po_9;
    //weight 8: 8'sb00001000
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001000;

    wire signed [11:0] n_0_3_po_10;
    //weight 0: 8'sb00000000
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [11:0] n_0_3_po_11;
    //weight 14: 8'sb00001110
    assign n_0_3_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00001110;

    wire signed [11:0] n_0_3_po_12;
    //weight 25: 8'sb00011001
    assign n_0_3_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00011001;

    wire signed [11:0] n_0_3_po_13;
    //weight 7: 8'sb00000111
    assign n_0_3_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00000111;

    wire signed [11:0] n_0_3_po_14;
    //weight -14: 8'sb11110010
    assign n_0_3_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11110010;

    wire signed [11:0] n_0_3_po_15;
    //weight 2: 8'sb00000010
    assign n_0_3_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000010;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = 578 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10 + n_0_3_po_11 + n_0_3_po_12 + n_0_3_po_13 + n_0_3_po_14 + n_0_3_po_15;
    //relu
    wire [11:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_3_sum[11:0]);

// layer: 0 - neuron: 4
    wire signed [11:0] n_0_4_po_0;
    //weight -26: 8'sb11100110
    assign n_0_4_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100110;

    wire signed [11:0] n_0_4_po_1;
    //weight 35: 8'sb00100011
    assign n_0_4_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00100011;

    wire signed [11:0] n_0_4_po_2;
    //weight 18: 8'sb00010010
    assign n_0_4_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00010010;

    wire signed [11:0] n_0_4_po_3;
    //weight 88: 8'sb01011000
    assign n_0_4_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01011000;

    wire signed [11:0] n_0_4_po_4;
    //weight -21: 8'sb11101011
    assign n_0_4_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11101011;

    wire signed [11:0] n_0_4_po_5;
    //weight -31: 8'sb11100001
    assign n_0_4_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11100001;

    wire signed [11:0] n_0_4_po_6;
    //weight 53: 8'sb00110101
    assign n_0_4_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00110101;

    wire signed [11:0] n_0_4_po_7;
    //weight 75: 8'sb01001011
    assign n_0_4_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb01001011;

    wire signed [11:0] n_0_4_po_8;
    //weight -19: 8'sb11101101
    assign n_0_4_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101101;

    wire signed [11:0] n_0_4_po_9;
    //weight -49: 8'sb11001111
    assign n_0_4_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11001111;

    wire signed [11:0] n_0_4_po_10;
    //weight -17: 8'sb11101111
    assign n_0_4_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11101111;

    wire signed [11:0] n_0_4_po_11;
    //weight -11: 8'sb11110101
    assign n_0_4_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11110101;

    wire signed [11:0] n_0_4_po_12;
    //weight -5: 8'sb11111011
    assign n_0_4_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111011;

    wire signed [11:0] n_0_4_po_13;
    //weight 29: 8'sb00011101
    assign n_0_4_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00011101;

    wire signed [11:0] n_0_4_po_14;
    //weight -1: 8'sb11111111
    assign n_0_4_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11111111;

    wire signed [11:0] n_0_4_po_15;
    //weight 38: 8'sb00100110
    assign n_0_4_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00100110;

    wire signed [12:0] n_0_4_sum;
    assign n_0_4_sum = -1788 + n_0_4_po_0 + n_0_4_po_1 + n_0_4_po_2 + n_0_4_po_3 + n_0_4_po_4 + n_0_4_po_5 + n_0_4_po_6 + n_0_4_po_7 + n_0_4_po_8 + n_0_4_po_9 + n_0_4_po_10 + n_0_4_po_11 + n_0_4_po_12 + n_0_4_po_13 + n_0_4_po_14 + n_0_4_po_15;
    //relu
    wire [11:0] n_0_4;
    assign n_0_4 = (n_0_4_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_4_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight 0: 8'sb00000000
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000000;

    wire signed [19:0] n_1_0_po_1;
    //weight -10: 8'sb11110110
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11110110;

    wire signed [19:0] n_1_0_po_2;
    //weight 23: 8'sb00010111
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010111;

    wire signed [19:0] n_1_0_po_3;
    //weight 33: 8'sb00100001
    assign n_1_0_po_3 = $signed({1'b0, n_0_3}) * 8'sb00100001;

    wire signed [19:0] n_1_0_po_4;
    //weight 34: 8'sb00100010
    assign n_1_0_po_4 = $signed({1'b0, n_0_4}) * 8'sb00100010;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 1667 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2 + n_1_0_po_3 + n_1_0_po_4;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

    assign out = {n_1_0};

endmodule
