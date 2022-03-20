//weights: [[12, 48, 8, 46, 28, 32, -84, 52, 24, -24, -42], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [12, 57, 16, -18, 42, 32, -48, 34, 42, -48, -16], [8, 49, 0, 8, 48, 48, -16, 48, 48, -66, -64], [0, 16, -4, 8, 16, 12, 2, 24, 16, -8, -32], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [8, 76, 28, 24, 16, -24, 32, -42, 24, -15, -64], [-24, 24, -15, 64, 57, 0, 9, 24, 32, -60, -64], [-14, 32, 12, 0, 8, -12, 32, 4, -4, -28, -48], [-17, 28, 0, -16, 24, -14, 48, 32, -7, -40, -42], [48, -4, -32, 48, 16, 0, 32, -24, 42, -16, -60], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
//intercepts: [-1133, -129, -1198, -1069, -281, -128, -128, -65, 145, 130, 132, 229, 128, 128, 128]
//act size: [4, 13]
//pred num: 6
module top (inp, predo, out);
input [43:0] inp;
output [17:0] predo;
output [2:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 12: 8'sb00001100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_1;
    //weight 48: 8'sb00110000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00110000;

    wire signed [11:0] n_0_0_po_2;
    //weight 8: 8'sb00001000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_3;
    //weight 46: 8'sb00101110
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00101110;

    wire signed [11:0] n_0_0_po_4;
    //weight 28: 8'sb00011100
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011100;

    wire signed [11:0] n_0_0_po_5;
    //weight 32: 8'sb00100000
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00100000;

    wire signed [11:0] n_0_0_po_6;
    //weight -84: 8'sb10101100
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb10101100;

    wire signed [11:0] n_0_0_po_7;
    //weight 52: 8'sb00110100
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00110100;

    wire signed [11:0] n_0_0_po_8;
    //weight 24: 8'sb00011000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00011000;

    wire signed [11:0] n_0_0_po_9;
    //weight -24: 8'sb11101000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_10;
    //weight -42: 8'sb11010110
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010110;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -1133 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    wire n_0_0;
    assign n_0_0 = n_0_0_sum[12];

// classifier: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 0: 8'sb00000000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_1;
    //weight 0: 8'sb00000000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_2;
    //weight 0: 8'sb00000000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_3;
    //weight 0: 8'sb00000000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_4;
    //weight 0: 8'sb00000000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_5;
    //weight 0: 8'sb00000000
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_6;
    //weight 0: 8'sb00000000
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_7;
    //weight 0: 8'sb00000000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_8;
    //weight 0: 8'sb00000000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_9;
    //weight 0: 8'sb00000000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_10;
    //weight 0: 8'sb00000000
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -129 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 12: 8'sb00001100
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001100;

    wire signed [11:0] n_0_2_po_1;
    //weight 57: 8'sb00111001
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00111001;

    wire signed [11:0] n_0_2_po_2;
    //weight 16: 8'sb00010000
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00010000;

    wire signed [11:0] n_0_2_po_3;
    //weight -18: 8'sb11101110
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101110;

    wire signed [11:0] n_0_2_po_4;
    //weight 42: 8'sb00101010
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00101010;

    wire signed [11:0] n_0_2_po_5;
    //weight 32: 8'sb00100000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00100000;

    wire signed [11:0] n_0_2_po_6;
    //weight -48: 8'sb11010000
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11010000;

    wire signed [11:0] n_0_2_po_7;
    //weight 34: 8'sb00100010
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100010;

    wire signed [11:0] n_0_2_po_8;
    //weight 42: 8'sb00101010
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00101010;

    wire signed [11:0] n_0_2_po_9;
    //weight -48: 8'sb11010000
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11010000;

    wire signed [11:0] n_0_2_po_10;
    //weight -16: 8'sb11110000
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110000;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -1198 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10;
    wire n_0_2;
    assign n_0_2 = n_0_2_sum[12];

// classifier: 3
    wire signed [11:0] n_0_3_po_0;
    //weight 8: 8'sb00001000
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001000;

    wire signed [11:0] n_0_3_po_1;
    //weight 49: 8'sb00110001
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00110001;

    wire signed [11:0] n_0_3_po_2;
    //weight 0: 8'sb00000000
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_3_po_3;
    //weight 8: 8'sb00001000
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001000;

    wire signed [11:0] n_0_3_po_4;
    //weight 48: 8'sb00110000
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00110000;

    wire signed [11:0] n_0_3_po_5;
    //weight 48: 8'sb00110000
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00110000;

    wire signed [11:0] n_0_3_po_6;
    //weight -16: 8'sb11110000
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110000;

    wire signed [11:0] n_0_3_po_7;
    //weight 48: 8'sb00110000
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00110000;

    wire signed [11:0] n_0_3_po_8;
    //weight 48: 8'sb00110000
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00110000;

    wire signed [11:0] n_0_3_po_9;
    //weight -66: 8'sb10111110
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb10111110;

    wire signed [11:0] n_0_3_po_10;
    //weight -64: 8'sb11000000
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11000000;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = -1069 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10;
    wire n_0_3;
    assign n_0_3 = n_0_3_sum[12];

// classifier: 4
    wire signed [11:0] n_0_4_po_0;
    //weight 0: 8'sb00000000
    assign n_0_4_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_4_po_1;
    //weight 16: 8'sb00010000
    assign n_0_4_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010000;

    wire signed [11:0] n_0_4_po_2;
    //weight -4: 8'sb11111100
    assign n_0_4_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_4_po_3;
    //weight 8: 8'sb00001000
    assign n_0_4_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001000;

    wire signed [11:0] n_0_4_po_4;
    //weight 16: 8'sb00010000
    assign n_0_4_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010000;

    wire signed [11:0] n_0_4_po_5;
    //weight 12: 8'sb00001100
    assign n_0_4_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001100;

    wire signed [11:0] n_0_4_po_6;
    //weight 2: 8'sb00000010
    assign n_0_4_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000010;

    wire signed [11:0] n_0_4_po_7;
    //weight 24: 8'sb00011000
    assign n_0_4_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011000;

    wire signed [11:0] n_0_4_po_8;
    //weight 16: 8'sb00010000
    assign n_0_4_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010000;

    wire signed [11:0] n_0_4_po_9;
    //weight -8: 8'sb11111000
    assign n_0_4_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111000;

    wire signed [11:0] n_0_4_po_10;
    //weight -32: 8'sb11100000
    assign n_0_4_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11100000;

    wire signed [12:0] n_0_4_sum;
    assign n_0_4_sum = -281 + n_0_4_po_0 + n_0_4_po_1 + n_0_4_po_2 + n_0_4_po_3 + n_0_4_po_4 + n_0_4_po_5 + n_0_4_po_6 + n_0_4_po_7 + n_0_4_po_8 + n_0_4_po_9 + n_0_4_po_10;
    wire n_0_4;
    assign n_0_4 = n_0_4_sum[12];

// classifier: 5
    wire signed [11:0] n_0_5_po_0;
    //weight 0: 8'sb00000000
    assign n_0_5_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_1;
    //weight 0: 8'sb00000000
    assign n_0_5_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_2;
    //weight 0: 8'sb00000000
    assign n_0_5_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_3;
    //weight 0: 8'sb00000000
    assign n_0_5_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_4;
    //weight 0: 8'sb00000000
    assign n_0_5_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_5;
    //weight 0: 8'sb00000000
    assign n_0_5_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_6;
    //weight 0: 8'sb00000000
    assign n_0_5_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_7;
    //weight 0: 8'sb00000000
    assign n_0_5_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_8;
    //weight 0: 8'sb00000000
    assign n_0_5_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_9;
    //weight 0: 8'sb00000000
    assign n_0_5_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_5_po_10;
    //weight 0: 8'sb00000000
    assign n_0_5_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_5_sum;
    assign n_0_5_sum = -128 + n_0_5_po_0 + n_0_5_po_1 + n_0_5_po_2 + n_0_5_po_3 + n_0_5_po_4 + n_0_5_po_5 + n_0_5_po_6 + n_0_5_po_7 + n_0_5_po_8 + n_0_5_po_9 + n_0_5_po_10;
    wire n_0_5;
    assign n_0_5 = n_0_5_sum[12];

// classifier: 6
    wire signed [11:0] n_0_6_po_0;
    //weight 0: 8'sb00000000
    assign n_0_6_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_1;
    //weight 0: 8'sb00000000
    assign n_0_6_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_2;
    //weight 0: 8'sb00000000
    assign n_0_6_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_3;
    //weight 0: 8'sb00000000
    assign n_0_6_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_4;
    //weight 0: 8'sb00000000
    assign n_0_6_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_5;
    //weight 0: 8'sb00000000
    assign n_0_6_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_6;
    //weight 0: 8'sb00000000
    assign n_0_6_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_7;
    //weight 0: 8'sb00000000
    assign n_0_6_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_8;
    //weight 0: 8'sb00000000
    assign n_0_6_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_9;
    //weight 0: 8'sb00000000
    assign n_0_6_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_6_po_10;
    //weight 0: 8'sb00000000
    assign n_0_6_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_6_sum;
    assign n_0_6_sum = -128 + n_0_6_po_0 + n_0_6_po_1 + n_0_6_po_2 + n_0_6_po_3 + n_0_6_po_4 + n_0_6_po_5 + n_0_6_po_6 + n_0_6_po_7 + n_0_6_po_8 + n_0_6_po_9 + n_0_6_po_10;
    wire n_0_6;
    assign n_0_6 = n_0_6_sum[12];

// classifier: 7
    wire signed [11:0] n_0_7_po_0;
    //weight 8: 8'sb00001000
    assign n_0_7_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001000;

    wire signed [11:0] n_0_7_po_1;
    //weight 76: 8'sb01001100
    assign n_0_7_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01001100;

    wire signed [11:0] n_0_7_po_2;
    //weight 28: 8'sb00011100
    assign n_0_7_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00011100;

    wire signed [11:0] n_0_7_po_3;
    //weight 24: 8'sb00011000
    assign n_0_7_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011000;

    wire signed [11:0] n_0_7_po_4;
    //weight 16: 8'sb00010000
    assign n_0_7_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010000;

    wire signed [11:0] n_0_7_po_5;
    //weight -24: 8'sb11101000
    assign n_0_7_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11101000;

    wire signed [11:0] n_0_7_po_6;
    //weight 32: 8'sb00100000
    assign n_0_7_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00100000;

    wire signed [11:0] n_0_7_po_7;
    //weight -42: 8'sb11010110
    assign n_0_7_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11010110;

    wire signed [11:0] n_0_7_po_8;
    //weight 24: 8'sb00011000
    assign n_0_7_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00011000;

    wire signed [11:0] n_0_7_po_9;
    //weight -15: 8'sb11110001
    assign n_0_7_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110001;

    wire signed [11:0] n_0_7_po_10;
    //weight -64: 8'sb11000000
    assign n_0_7_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11000000;

    wire signed [12:0] n_0_7_sum;
    assign n_0_7_sum = -65 + n_0_7_po_0 + n_0_7_po_1 + n_0_7_po_2 + n_0_7_po_3 + n_0_7_po_4 + n_0_7_po_5 + n_0_7_po_6 + n_0_7_po_7 + n_0_7_po_8 + n_0_7_po_9 + n_0_7_po_10;
    wire n_0_7;
    assign n_0_7 = n_0_7_sum[12];

// classifier: 8
    wire signed [11:0] n_0_8_po_0;
    //weight -24: 8'sb11101000
    assign n_0_8_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101000;

    wire signed [11:0] n_0_8_po_1;
    //weight 24: 8'sb00011000
    assign n_0_8_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011000;

    wire signed [11:0] n_0_8_po_2;
    //weight -15: 8'sb11110001
    assign n_0_8_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110001;

    wire signed [11:0] n_0_8_po_3;
    //weight 64: 8'sb01000000
    assign n_0_8_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01000000;

    wire signed [11:0] n_0_8_po_4;
    //weight 57: 8'sb00111001
    assign n_0_8_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00111001;

    wire signed [11:0] n_0_8_po_5;
    //weight 0: 8'sb00000000
    assign n_0_8_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_8_po_6;
    //weight 9: 8'sb00001001
    assign n_0_8_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001001;

    wire signed [11:0] n_0_8_po_7;
    //weight 24: 8'sb00011000
    assign n_0_8_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011000;

    wire signed [11:0] n_0_8_po_8;
    //weight 32: 8'sb00100000
    assign n_0_8_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00100000;

    wire signed [11:0] n_0_8_po_9;
    //weight -60: 8'sb11000100
    assign n_0_8_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11000100;

    wire signed [11:0] n_0_8_po_10;
    //weight -64: 8'sb11000000
    assign n_0_8_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11000000;

    wire signed [12:0] n_0_8_sum;
    assign n_0_8_sum = 145 + n_0_8_po_0 + n_0_8_po_1 + n_0_8_po_2 + n_0_8_po_3 + n_0_8_po_4 + n_0_8_po_5 + n_0_8_po_6 + n_0_8_po_7 + n_0_8_po_8 + n_0_8_po_9 + n_0_8_po_10;
    wire n_0_8;
    assign n_0_8 = n_0_8_sum[12];

// classifier: 9
    wire signed [11:0] n_0_9_po_0;
    //weight -14: 8'sb11110010
    assign n_0_9_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110010;

    wire signed [11:0] n_0_9_po_1;
    //weight 32: 8'sb00100000
    assign n_0_9_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00100000;

    wire signed [11:0] n_0_9_po_2;
    //weight 12: 8'sb00001100
    assign n_0_9_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001100;

    wire signed [11:0] n_0_9_po_3;
    //weight 0: 8'sb00000000
    assign n_0_9_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_9_po_4;
    //weight 8: 8'sb00001000
    assign n_0_9_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001000;

    wire signed [11:0] n_0_9_po_5;
    //weight -12: 8'sb11110100
    assign n_0_9_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110100;

    wire signed [11:0] n_0_9_po_6;
    //weight 32: 8'sb00100000
    assign n_0_9_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00100000;

    wire signed [11:0] n_0_9_po_7;
    //weight 4: 8'sb00000100
    assign n_0_9_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000100;

    wire signed [11:0] n_0_9_po_8;
    //weight -4: 8'sb11111100
    assign n_0_9_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111100;

    wire signed [11:0] n_0_9_po_9;
    //weight -28: 8'sb11100100
    assign n_0_9_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11100100;

    wire signed [11:0] n_0_9_po_10;
    //weight -48: 8'sb11010000
    assign n_0_9_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010000;

    wire signed [12:0] n_0_9_sum;
    assign n_0_9_sum = 130 + n_0_9_po_0 + n_0_9_po_1 + n_0_9_po_2 + n_0_9_po_3 + n_0_9_po_4 + n_0_9_po_5 + n_0_9_po_6 + n_0_9_po_7 + n_0_9_po_8 + n_0_9_po_9 + n_0_9_po_10;
    wire n_0_9;
    assign n_0_9 = n_0_9_sum[12];

// classifier: 10
    wire signed [11:0] n_0_10_po_0;
    //weight -17: 8'sb11101111
    assign n_0_10_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101111;

    wire signed [11:0] n_0_10_po_1;
    //weight 28: 8'sb00011100
    assign n_0_10_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011100;

    wire signed [11:0] n_0_10_po_2;
    //weight 0: 8'sb00000000
    assign n_0_10_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_10_po_3;
    //weight -16: 8'sb11110000
    assign n_0_10_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110000;

    wire signed [11:0] n_0_10_po_4;
    //weight 24: 8'sb00011000
    assign n_0_10_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011000;

    wire signed [11:0] n_0_10_po_5;
    //weight -14: 8'sb11110010
    assign n_0_10_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110010;

    wire signed [11:0] n_0_10_po_6;
    //weight 48: 8'sb00110000
    assign n_0_10_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00110000;

    wire signed [11:0] n_0_10_po_7;
    //weight 32: 8'sb00100000
    assign n_0_10_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100000;

    wire signed [11:0] n_0_10_po_8;
    //weight -7: 8'sb11111001
    assign n_0_10_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111001;

    wire signed [11:0] n_0_10_po_9;
    //weight -40: 8'sb11011000
    assign n_0_10_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11011000;

    wire signed [11:0] n_0_10_po_10;
    //weight -42: 8'sb11010110
    assign n_0_10_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010110;

    wire signed [12:0] n_0_10_sum;
    assign n_0_10_sum = 132 + n_0_10_po_0 + n_0_10_po_1 + n_0_10_po_2 + n_0_10_po_3 + n_0_10_po_4 + n_0_10_po_5 + n_0_10_po_6 + n_0_10_po_7 + n_0_10_po_8 + n_0_10_po_9 + n_0_10_po_10;
    wire n_0_10;
    assign n_0_10 = n_0_10_sum[12];

// classifier: 11
    wire signed [11:0] n_0_11_po_0;
    //weight 48: 8'sb00110000
    assign n_0_11_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00110000;

    wire signed [11:0] n_0_11_po_1;
    //weight -4: 8'sb11111100
    assign n_0_11_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111100;

    wire signed [11:0] n_0_11_po_2;
    //weight -32: 8'sb11100000
    assign n_0_11_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11100000;

    wire signed [11:0] n_0_11_po_3;
    //weight 48: 8'sb00110000
    assign n_0_11_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00110000;

    wire signed [11:0] n_0_11_po_4;
    //weight 16: 8'sb00010000
    assign n_0_11_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010000;

    wire signed [11:0] n_0_11_po_5;
    //weight 0: 8'sb00000000
    assign n_0_11_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_11_po_6;
    //weight 32: 8'sb00100000
    assign n_0_11_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00100000;

    wire signed [11:0] n_0_11_po_7;
    //weight -24: 8'sb11101000
    assign n_0_11_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101000;

    wire signed [11:0] n_0_11_po_8;
    //weight 42: 8'sb00101010
    assign n_0_11_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00101010;

    wire signed [11:0] n_0_11_po_9;
    //weight -16: 8'sb11110000
    assign n_0_11_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110000;

    wire signed [11:0] n_0_11_po_10;
    //weight -60: 8'sb11000100
    assign n_0_11_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11000100;

    wire signed [12:0] n_0_11_sum;
    assign n_0_11_sum = 229 + n_0_11_po_0 + n_0_11_po_1 + n_0_11_po_2 + n_0_11_po_3 + n_0_11_po_4 + n_0_11_po_5 + n_0_11_po_6 + n_0_11_po_7 + n_0_11_po_8 + n_0_11_po_9 + n_0_11_po_10;
    wire n_0_11;
    assign n_0_11 = n_0_11_sum[12];

// classifier: 12
    wire signed [11:0] n_0_12_po_0;
    //weight 0: 8'sb00000000
    assign n_0_12_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_1;
    //weight 0: 8'sb00000000
    assign n_0_12_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_2;
    //weight 0: 8'sb00000000
    assign n_0_12_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_3;
    //weight 0: 8'sb00000000
    assign n_0_12_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_4;
    //weight 0: 8'sb00000000
    assign n_0_12_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_5;
    //weight 0: 8'sb00000000
    assign n_0_12_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_6;
    //weight 0: 8'sb00000000
    assign n_0_12_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_7;
    //weight 0: 8'sb00000000
    assign n_0_12_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_8;
    //weight 0: 8'sb00000000
    assign n_0_12_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_9;
    //weight 0: 8'sb00000000
    assign n_0_12_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_12_po_10;
    //weight 0: 8'sb00000000
    assign n_0_12_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_12_sum;
    assign n_0_12_sum = 128 + n_0_12_po_0 + n_0_12_po_1 + n_0_12_po_2 + n_0_12_po_3 + n_0_12_po_4 + n_0_12_po_5 + n_0_12_po_6 + n_0_12_po_7 + n_0_12_po_8 + n_0_12_po_9 + n_0_12_po_10;
    wire n_0_12;
    assign n_0_12 = n_0_12_sum[12];

// classifier: 13
    wire signed [11:0] n_0_13_po_0;
    //weight 0: 8'sb00000000
    assign n_0_13_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_1;
    //weight 0: 8'sb00000000
    assign n_0_13_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_2;
    //weight 0: 8'sb00000000
    assign n_0_13_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_3;
    //weight 0: 8'sb00000000
    assign n_0_13_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_4;
    //weight 0: 8'sb00000000
    assign n_0_13_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_5;
    //weight 0: 8'sb00000000
    assign n_0_13_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_6;
    //weight 0: 8'sb00000000
    assign n_0_13_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_7;
    //weight 0: 8'sb00000000
    assign n_0_13_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_8;
    //weight 0: 8'sb00000000
    assign n_0_13_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_9;
    //weight 0: 8'sb00000000
    assign n_0_13_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_13_po_10;
    //weight 0: 8'sb00000000
    assign n_0_13_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_13_sum;
    assign n_0_13_sum = 128 + n_0_13_po_0 + n_0_13_po_1 + n_0_13_po_2 + n_0_13_po_3 + n_0_13_po_4 + n_0_13_po_5 + n_0_13_po_6 + n_0_13_po_7 + n_0_13_po_8 + n_0_13_po_9 + n_0_13_po_10;
    wire n_0_13;
    assign n_0_13 = n_0_13_sum[12];

// classifier: 14
    wire signed [11:0] n_0_14_po_0;
    //weight 0: 8'sb00000000
    assign n_0_14_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_1;
    //weight 0: 8'sb00000000
    assign n_0_14_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_2;
    //weight 0: 8'sb00000000
    assign n_0_14_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_3;
    //weight 0: 8'sb00000000
    assign n_0_14_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_4;
    //weight 0: 8'sb00000000
    assign n_0_14_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_5;
    //weight 0: 8'sb00000000
    assign n_0_14_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_6;
    //weight 0: 8'sb00000000
    assign n_0_14_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_7;
    //weight 0: 8'sb00000000
    assign n_0_14_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_8;
    //weight 0: 8'sb00000000
    assign n_0_14_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_9;
    //weight 0: 8'sb00000000
    assign n_0_14_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_14_po_10;
    //weight 0: 8'sb00000000
    assign n_0_14_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_14_sum;
    assign n_0_14_sum = 128 + n_0_14_po_0 + n_0_14_po_1 + n_0_14_po_2 + n_0_14_po_3 + n_0_14_po_4 + n_0_14_po_5 + n_0_14_po_6 + n_0_14_po_7 + n_0_14_po_8 + n_0_14_po_9 + n_0_14_po_10;
    wire n_0_14;
    assign n_0_14 = n_0_14_sum[12];

// decisionMatrix inp: n_0_0, n_0_1, n_0_2, n_0_3, n_0_4, n_0_5, n_0_6, n_0_7, n_0_8, n_0_9, n_0_10, n_0_11, n_0_12, n_0_13, n_0_14
    wire dm_cmp_0_1, dm_cmp_1_0;
    assign dm_cmp_0_1 = ~n_0_0;
    assign dm_cmp_1_0 = n_0_0;

    wire dm_cmp_0_2, dm_cmp_2_0;
    assign dm_cmp_0_2 = ~n_0_1;
    assign dm_cmp_2_0 = n_0_1;

    wire dm_cmp_0_3, dm_cmp_3_0;
    assign dm_cmp_0_3 = ~n_0_2;
    assign dm_cmp_3_0 = n_0_2;

    wire dm_cmp_0_4, dm_cmp_4_0;
    assign dm_cmp_0_4 = ~n_0_3;
    assign dm_cmp_4_0 = n_0_3;

    wire dm_cmp_0_5, dm_cmp_5_0;
    assign dm_cmp_0_5 = ~n_0_4;
    assign dm_cmp_5_0 = n_0_4;

    wire dm_cmp_1_2, dm_cmp_2_1;
    assign dm_cmp_1_2 = ~n_0_5;
    assign dm_cmp_2_1 = n_0_5;

    wire dm_cmp_1_3, dm_cmp_3_1;
    assign dm_cmp_1_3 = ~n_0_6;
    assign dm_cmp_3_1 = n_0_6;

    wire dm_cmp_1_4, dm_cmp_4_1;
    assign dm_cmp_1_4 = ~n_0_7;
    assign dm_cmp_4_1 = n_0_7;

    wire dm_cmp_1_5, dm_cmp_5_1;
    assign dm_cmp_1_5 = ~n_0_8;
    assign dm_cmp_5_1 = n_0_8;

    wire dm_cmp_2_3, dm_cmp_3_2;
    assign dm_cmp_2_3 = ~n_0_9;
    assign dm_cmp_3_2 = n_0_9;

    wire dm_cmp_2_4, dm_cmp_4_2;
    assign dm_cmp_2_4 = ~n_0_10;
    assign dm_cmp_4_2 = n_0_10;

    wire dm_cmp_2_5, dm_cmp_5_2;
    assign dm_cmp_2_5 = ~n_0_11;
    assign dm_cmp_5_2 = n_0_11;

    wire dm_cmp_3_4, dm_cmp_4_3;
    assign dm_cmp_3_4 = ~n_0_12;
    assign dm_cmp_4_3 = n_0_12;

    wire dm_cmp_3_5, dm_cmp_5_3;
    assign dm_cmp_3_5 = ~n_0_13;
    assign dm_cmp_5_3 = n_0_13;

    wire dm_cmp_4_5, dm_cmp_5_4;
    assign dm_cmp_4_5 = ~n_0_14;
    assign dm_cmp_5_4 = n_0_14;

    wire [2:0] dm_sum_0;
    assign dm_sum_0 = dm_cmp_0_1 + dm_cmp_0_2 + dm_cmp_0_3 + dm_cmp_0_4 + dm_cmp_0_5;
    wire [2:0] dm_sum_1;
    assign dm_sum_1 = dm_cmp_1_0 + dm_cmp_1_2 + dm_cmp_1_3 + dm_cmp_1_4 + dm_cmp_1_5;
    wire [2:0] dm_sum_2;
    assign dm_sum_2 = dm_cmp_2_0 + dm_cmp_2_1 + dm_cmp_2_3 + dm_cmp_2_4 + dm_cmp_2_5;
    wire [2:0] dm_sum_3;
    assign dm_sum_3 = dm_cmp_3_0 + dm_cmp_3_1 + dm_cmp_3_2 + dm_cmp_3_4 + dm_cmp_3_5;
    wire [2:0] dm_sum_4;
    assign dm_sum_4 = dm_cmp_4_0 + dm_cmp_4_1 + dm_cmp_4_2 + dm_cmp_4_3 + dm_cmp_4_5;
    wire [2:0] dm_sum_5;
    assign dm_sum_5 = dm_cmp_5_0 + dm_cmp_5_1 + dm_cmp_5_2 + dm_cmp_5_3 + dm_cmp_5_4;

    assign predo = {dm_sum_0,dm_sum_1,dm_sum_2,dm_sum_3,dm_sum_4,dm_sum_5};
// argmax: 6 classes, need 3 bits
// argmax inp: dm_sum_0, dm_sum_1, dm_sum_2, dm_sum_3, dm_sum_4, dm_sum_5
    //comp level 0
    wire cmp_0_0;
    wire [2:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( dm_sum_0 >= dm_sum_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? dm_sum_0 : dm_sum_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [2:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( dm_sum_2 >= dm_sum_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? dm_sum_2 : dm_sum_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [2:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( dm_sum_4 >= dm_sum_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? dm_sum_4 : dm_sum_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [2:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    //comp level 2
    wire cmp_2_0;
    wire [2:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_0_4 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_0_4;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_0_4;

    assign out = argmax_idx_2_0;

endmodule
