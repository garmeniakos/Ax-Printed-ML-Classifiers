//weights: [[[37, -32, 37, 24, 5, -2, 75, 33, 28, -33, -45, 10, -60, -20, 27, 29, -34, -46, -49, 72, -15], [-9, -8, -11, -16, -2, 28, 19, 31, 15, 47, 12, 26, 20, 3, -21, 1, 6, 19, -36, 9, 4], [27, -55, 36, -33, -2, 19, 45, 51, -5, 22, -26, -20, -4, 22, 15, -20, -34, -3, 14, 16, 8]], [[43, 61, 48]]]
//intercepts: [[370, 187, -222], [37311]]
//act size: [4, 13, 21]
//pred num: 1
module top (inp, out);
input [83:0] inp;
output [21:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 37: 8'sb00100101
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100101;

    wire signed [11:0] n_0_0_po_1;
    //weight -32: 8'sb11100000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_2;
    //weight 37: 8'sb00100101
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00100101;

    wire signed [11:0] n_0_0_po_3;
    //weight 24: 8'sb00011000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011000;

    wire signed [11:0] n_0_0_po_4;
    //weight 5: 8'sb00000101
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000101;

    wire signed [11:0] n_0_0_po_5;
    //weight -2: 8'sb11111110
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111110;

    wire signed [11:0] n_0_0_po_6;
    //weight 75: 8'sb01001011
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01001011;

    wire signed [11:0] n_0_0_po_7;
    //weight 33: 8'sb00100001
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100001;

    wire signed [11:0] n_0_0_po_8;
    //weight 28: 8'sb00011100
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00011100;

    wire signed [11:0] n_0_0_po_9;
    //weight -33: 8'sb11011111
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11011111;

    wire signed [11:0] n_0_0_po_10;
    //weight -45: 8'sb11010011
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010011;

    wire signed [11:0] n_0_0_po_11;
    //weight 10: 8'sb00001010
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00001010;

    wire signed [11:0] n_0_0_po_12;
    //weight -60: 8'sb11000100
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11000100;

    wire signed [11:0] n_0_0_po_13;
    //weight -20: 8'sb11101100
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11101100;

    wire signed [11:0] n_0_0_po_14;
    //weight 27: 8'sb00011011
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00011011;

    wire signed [11:0] n_0_0_po_15;
    //weight 29: 8'sb00011101
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00011101;

    wire signed [11:0] n_0_0_po_16;
    //weight -34: 8'sb11011110
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11011110;

    wire signed [11:0] n_0_0_po_17;
    //weight -46: 8'sb11010010
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11010010;

    wire signed [11:0] n_0_0_po_18;
    //weight -49: 8'sb11001111
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11001111;

    wire signed [11:0] n_0_0_po_19;
    //weight 72: 8'sb01001000
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb01001000;

    wire signed [11:0] n_0_0_po_20;
    //weight -15: 8'sb11110001
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11110001;

    wire signed [13:0] n_0_0_sum;
    assign n_0_0_sum = 370 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;
    //relu
    wire [12:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_0_sum[12:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -9: 8'sb11110111
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110111;

    wire signed [11:0] n_0_1_po_1;
    //weight -8: 8'sb11111000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_2;
    //weight -11: 8'sb11110101
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110101;

    wire signed [11:0] n_0_1_po_3;
    //weight -16: 8'sb11110000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110000;

    wire signed [11:0] n_0_1_po_4;
    //weight -2: 8'sb11111110
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111110;

    wire signed [11:0] n_0_1_po_5;
    //weight 28: 8'sb00011100
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00011100;

    wire signed [11:0] n_0_1_po_6;
    //weight 19: 8'sb00010011
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00010011;

    wire signed [11:0] n_0_1_po_7;
    //weight 31: 8'sb00011111
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011111;

    wire signed [11:0] n_0_1_po_8;
    //weight 15: 8'sb00001111
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001111;

    wire signed [11:0] n_0_1_po_9;
    //weight 47: 8'sb00101111
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00101111;

    wire signed [11:0] n_0_1_po_10;
    //weight 12: 8'sb00001100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00001100;

    wire signed [11:0] n_0_1_po_11;
    //weight 26: 8'sb00011010
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00011010;

    wire signed [11:0] n_0_1_po_12;
    //weight 20: 8'sb00010100
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00010100;

    wire signed [11:0] n_0_1_po_13;
    //weight 3: 8'sb00000011
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00000011;

    wire signed [11:0] n_0_1_po_14;
    //weight -21: 8'sb11101011
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11101011;

    wire signed [11:0] n_0_1_po_15;
    //weight 1: 8'sb00000001
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_16;
    //weight 6: 8'sb00000110
    assign n_0_1_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00000110;

    wire signed [11:0] n_0_1_po_17;
    //weight 19: 8'sb00010011
    assign n_0_1_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00010011;

    wire signed [11:0] n_0_1_po_18;
    //weight -36: 8'sb11011100
    assign n_0_1_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11011100;

    wire signed [11:0] n_0_1_po_19;
    //weight 9: 8'sb00001001
    assign n_0_1_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00001001;

    wire signed [11:0] n_0_1_po_20;
    //weight 4: 8'sb00000100
    assign n_0_1_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000100;

    wire signed [13:0] n_0_1_sum;
    assign n_0_1_sum = 187 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19 + n_0_1_po_20;
    //relu
    wire [12:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_1_sum[12:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 27: 8'sb00011011
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00011011;

    wire signed [11:0] n_0_2_po_1;
    //weight -55: 8'sb11001001
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11001001;

    wire signed [11:0] n_0_2_po_2;
    //weight 36: 8'sb00100100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00100100;

    wire signed [11:0] n_0_2_po_3;
    //weight -33: 8'sb11011111
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11011111;

    wire signed [11:0] n_0_2_po_4;
    //weight -2: 8'sb11111110
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111110;

    wire signed [11:0] n_0_2_po_5;
    //weight 19: 8'sb00010011
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010011;

    wire signed [11:0] n_0_2_po_6;
    //weight 45: 8'sb00101101
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00101101;

    wire signed [11:0] n_0_2_po_7;
    //weight 51: 8'sb00110011
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00110011;

    wire signed [11:0] n_0_2_po_8;
    //weight -5: 8'sb11111011
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111011;

    wire signed [11:0] n_0_2_po_9;
    //weight 22: 8'sb00010110
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00010110;

    wire signed [11:0] n_0_2_po_10;
    //weight -26: 8'sb11100110
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11100110;

    wire signed [11:0] n_0_2_po_11;
    //weight -20: 8'sb11101100
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11101100;

    wire signed [11:0] n_0_2_po_12;
    //weight -4: 8'sb11111100
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111100;

    wire signed [11:0] n_0_2_po_13;
    //weight 22: 8'sb00010110
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010110;

    wire signed [11:0] n_0_2_po_14;
    //weight 15: 8'sb00001111
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00001111;

    wire signed [11:0] n_0_2_po_15;
    //weight -20: 8'sb11101100
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11101100;

    wire signed [11:0] n_0_2_po_16;
    //weight -34: 8'sb11011110
    assign n_0_2_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11011110;

    wire signed [11:0] n_0_2_po_17;
    //weight -3: 8'sb11111101
    assign n_0_2_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11111101;

    wire signed [11:0] n_0_2_po_18;
    //weight 14: 8'sb00001110
    assign n_0_2_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00001110;

    wire signed [11:0] n_0_2_po_19;
    //weight 16: 8'sb00010000
    assign n_0_2_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00010000;

    wire signed [11:0] n_0_2_po_20;
    //weight 8: 8'sb00001000
    assign n_0_2_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00001000;

    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = -222 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_19 + n_0_2_po_20;
    //relu
    wire [12:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_2_sum[12:0]);

// layer: 1 - neuron: 0
    wire signed [20:0] n_1_0_po_0;
    //weight 43: 8'sb00101011
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00101011;

    wire signed [20:0] n_1_0_po_1;
    //weight 61: 8'sb00111101
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00111101;

    wire signed [20:0] n_1_0_po_2;
    //weight 48: 8'sb00110000
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00110000;

    wire signed [21:0] n_1_0_sum;
    assign n_1_0_sum = 37311 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [20:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({21{1'b0}}) : $unsigned(n_1_0_sum[20:0]);

    assign out = {n_1_0};

endmodule
