//weights: [[[-4, 72, 0, 72, 34, -32, -66, -36, 33, -40, 60, 40, 4, 16, 16, 0, 12, 32, 2, -64, 4], [52, -48, 57, -40, 24, 16, 66, 52, -36, 64, -12, 24, -12, 20, -8, -7, 0, 4, 8, 32, -20], [-8, -8, 9, 32, 36, 40, 92, 32, 52, -34, 2, 8, -23, 20, 24, 40, -24, -24, -56, 66, -32]], [[72, -80, -56], [-44, 40, -48], [-126, 52, 72]]]
//intercepts: [[408, 164, 545], [33717, -20843, -40698]]
//act size: [4, 13, 20]
//pred num: 3
module top (inp, predo, out);
input [83:0] inp;
output [62:0] predo;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -4: 8'sb11111100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_1;
    //weight 72: 8'sb01001000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01001000;

    wire signed [11:0] n_0_0_po_2;
    //weight 0: 8'sb00000000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_3;
    //weight 72: 8'sb01001000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01001000;

    wire signed [11:0] n_0_0_po_4;
    //weight 34: 8'sb00100010
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100010;

    wire signed [11:0] n_0_0_po_5;
    //weight -32: 8'sb11100000
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_6;
    //weight -66: 8'sb10111110
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb10111110;

    wire signed [11:0] n_0_0_po_7;
    //weight -36: 8'sb11011100
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11011100;

    wire signed [11:0] n_0_0_po_8;
    //weight 33: 8'sb00100001
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00100001;

    wire signed [11:0] n_0_0_po_9;
    //weight -40: 8'sb11011000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11011000;

    wire signed [11:0] n_0_0_po_10;
    //weight 60: 8'sb00111100
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00111100;

    wire signed [11:0] n_0_0_po_11;
    //weight 40: 8'sb00101000
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00101000;

    wire signed [11:0] n_0_0_po_12;
    //weight 4: 8'sb00000100
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000100;

    wire signed [11:0] n_0_0_po_13;
    //weight 16: 8'sb00010000
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_14;
    //weight 16: 8'sb00010000
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_15;
    //weight 0: 8'sb00000000
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_16;
    //weight 12: 8'sb00001100
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_17;
    //weight 32: 8'sb00100000
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00100000;

    wire signed [11:0] n_0_0_po_18;
    //weight 2: 8'sb00000010
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00000010;

    wire signed [11:0] n_0_0_po_19;
    //weight -64: 8'sb11000000
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11000000;

    wire signed [11:0] n_0_0_po_20;
    //weight 4: 8'sb00000100
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000100;

    wire signed [13:0] n_0_0_sum;
    assign n_0_0_sum = 408 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;
    //relu
    wire [12:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_0_sum[12:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 52: 8'sb00110100
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00110100;

    wire signed [11:0] n_0_1_po_1;
    //weight -48: 8'sb11010000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11010000;

    wire signed [11:0] n_0_1_po_2;
    //weight 57: 8'sb00111001
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00111001;

    wire signed [11:0] n_0_1_po_3;
    //weight -40: 8'sb11011000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11011000;

    wire signed [11:0] n_0_1_po_4;
    //weight 24: 8'sb00011000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011000;

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
    //weight -36: 8'sb11011100
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11011100;

    wire signed [11:0] n_0_1_po_9;
    //weight 64: 8'sb01000000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb01000000;

    wire signed [11:0] n_0_1_po_10;
    //weight -12: 8'sb11110100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_11;
    //weight 24: 8'sb00011000
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_12;
    //weight -12: 8'sb11110100
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_13;
    //weight 20: 8'sb00010100
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010100;

    wire signed [11:0] n_0_1_po_14;
    //weight -8: 8'sb11111000
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_15;
    //weight -7: 8'sb11111001
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11111001;

    wire signed [11:0] n_0_1_po_16;
    //weight 0: 8'sb00000000
    assign n_0_1_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_17;
    //weight 4: 8'sb00000100
    assign n_0_1_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb00000100;

    wire signed [11:0] n_0_1_po_18;
    //weight 8: 8'sb00001000
    assign n_0_1_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb00001000;

    wire signed [11:0] n_0_1_po_19;
    //weight 32: 8'sb00100000
    assign n_0_1_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00100000;

    wire signed [11:0] n_0_1_po_20;
    //weight -20: 8'sb11101100
    assign n_0_1_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11101100;

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
    //weight 32: 8'sb00100000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100000;

    wire signed [11:0] n_0_2_po_4;
    //weight 36: 8'sb00100100
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100100;

    wire signed [11:0] n_0_2_po_5;
    //weight 40: 8'sb00101000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00101000;

    wire signed [11:0] n_0_2_po_6;
    //weight 92: 8'sb01011100
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01011100;

    wire signed [11:0] n_0_2_po_7;
    //weight 32: 8'sb00100000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100000;

    wire signed [11:0] n_0_2_po_8;
    //weight 52: 8'sb00110100
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00110100;

    wire signed [11:0] n_0_2_po_9;
    //weight -34: 8'sb11011110
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11011110;

    wire signed [11:0] n_0_2_po_10;
    //weight 2: 8'sb00000010
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000010;

    wire signed [11:0] n_0_2_po_11;
    //weight 8: 8'sb00001000
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_12;
    //weight -23: 8'sb11101001
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11101001;

    wire signed [11:0] n_0_2_po_13;
    //weight 20: 8'sb00010100
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00010100;

    wire signed [11:0] n_0_2_po_14;
    //weight 24: 8'sb00011000
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_po_15;
    //weight 40: 8'sb00101000
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00101000;

    wire signed [11:0] n_0_2_po_16;
    //weight -24: 8'sb11101000
    assign n_0_2_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11101000;

    wire signed [11:0] n_0_2_po_17;
    //weight -24: 8'sb11101000
    assign n_0_2_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11101000;

    wire signed [11:0] n_0_2_po_18;
    //weight -56: 8'sb11001000
    assign n_0_2_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11001000;

    wire signed [11:0] n_0_2_po_19;
    //weight 66: 8'sb01000010
    assign n_0_2_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb01000010;

    wire signed [11:0] n_0_2_po_20;
    //weight -32: 8'sb11100000
    assign n_0_2_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb11100000;

    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = 545 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_19 + n_0_2_po_20;
    //relu
    wire [12:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_2_sum[12:0]);

// layer: 1 - neuron: 0
    wire signed [20:0] n_1_0_po_0;
    //weight 72: 8'sb01001000
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb01001000;

    wire signed [20:0] n_1_0_po_1;
    //weight -80: 8'sb10110000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb10110000;

    wire signed [20:0] n_1_0_po_2;
    //weight -56: 8'sb11001000
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11001000;

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
    //weight 40: 8'sb00101000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00101000;

    wire signed [20:0] n_1_1_po_2;
    //weight -48: 8'sb11010000
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11010000;

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
    //weight 52: 8'sb00110100
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00110100;

    wire signed [20:0] n_1_2_po_2;
    //weight 72: 8'sb01001000
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb01001000;

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
