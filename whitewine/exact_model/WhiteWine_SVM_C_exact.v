//weights: [[18, -4, -8, 13, -15, 23, -9, 2, 11, -3, 9], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [17, 25, 2, -24, -10, 14, 1, -1, 2, -13, -14], [37, 15, -10, -25, -17, 22, -13, 7, 7, -12, -18], [-12, 15, -13, -13, 8, 5, -24, 5, -8, -48, -54], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [8, 68, 11, -89, 12, -29, -10, 74, -9, -7, -37], [-9, 73, 39, -81, 10, -68, 8, 34, -9, -4, -52], [-49, 12, 19, -12, 14, -19, -10, 1, -34, 8, -56], [7, 48, 2, -23, -4, -14, 8, -8, -8, -7, -43], [-9, 42, -7, -79, 38, -14, 9, 124, -16, -15, -34], [1, 13, 2, -51, 4, -11, -3, 58, -6, -7, -41], [-30, -3, -18, -3, 21, -10, -1, 21, -24, -1, -21], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [-3, -1, 0, -2, 7, -1, 0, 6, -3, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [-3, 0, -1, -1, 6, -1, 0, 2, -3, 1, -1], [-16, 2, -10, 3, 21, 8, 1, 3, -9, -2, -6]]
//intercepts: [-355, -128, -128, -236, -240, 1036, -128, -128, 7, 291, 1167, 132, 178, 466, 807, 128, 128, 163, 128, 175, 357]
//act size: [4, 13]
//pred num: 7
module top (inp, predo, out);
input [43:0] inp;
output [20:0] predo;
output [2:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 18: 8'sb00010010
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00010010;

    wire signed [11:0] n_0_0_po_1;
    //weight -4: 8'sb11111100
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_2;
    //weight -8: 8'sb11111000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_3;
    //weight 13: 8'sb00001101
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001101;

    wire signed [11:0] n_0_0_po_4;
    //weight -15: 8'sb11110001
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110001;

    wire signed [11:0] n_0_0_po_5;
    //weight 23: 8'sb00010111
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010111;

    wire signed [11:0] n_0_0_po_6;
    //weight -9: 8'sb11110111
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110111;

    wire signed [11:0] n_0_0_po_7;
    //weight 2: 8'sb00000010
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000010;

    wire signed [11:0] n_0_0_po_8;
    //weight 11: 8'sb00001011
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001011;

    wire signed [11:0] n_0_0_po_9;
    //weight -3: 8'sb11111101
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_10;
    //weight 9: 8'sb00001001
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00001001;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -355 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
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
    assign n_0_1_sum = -128 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    wire n_0_1;
    assign n_0_1 = n_0_1_sum[12];

// classifier: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 0: 8'sb00000000
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_1;
    //weight 0: 8'sb00000000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_2;
    //weight 0: 8'sb00000000
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_3;
    //weight 0: 8'sb00000000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_4;
    //weight 0: 8'sb00000000
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_5;
    //weight 0: 8'sb00000000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_6;
    //weight 0: 8'sb00000000
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_7;
    //weight 0: 8'sb00000000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_8;
    //weight 0: 8'sb00000000
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_9;
    //weight 0: 8'sb00000000
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_10;
    //weight 0: 8'sb00000000
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -128 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10;
    wire n_0_2;
    assign n_0_2 = n_0_2_sum[12];

// classifier: 3
    wire signed [11:0] n_0_3_po_0;
    //weight 17: 8'sb00010001
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00010001;

    wire signed [11:0] n_0_3_po_1;
    //weight 25: 8'sb00011001
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011001;

    wire signed [11:0] n_0_3_po_2;
    //weight 2: 8'sb00000010
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000010;

    wire signed [11:0] n_0_3_po_3;
    //weight -24: 8'sb11101000
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101000;

    wire signed [11:0] n_0_3_po_4;
    //weight -10: 8'sb11110110
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110110;

    wire signed [11:0] n_0_3_po_5;
    //weight 14: 8'sb00001110
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001110;

    wire signed [11:0] n_0_3_po_6;
    //weight 1: 8'sb00000001
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000001;

    wire signed [11:0] n_0_3_po_7;
    //weight -1: 8'sb11111111
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111111;

    wire signed [11:0] n_0_3_po_8;
    //weight 2: 8'sb00000010
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000010;

    wire signed [11:0] n_0_3_po_9;
    //weight -13: 8'sb11110011
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110011;

    wire signed [11:0] n_0_3_po_10;
    //weight -14: 8'sb11110010
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110010;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = -236 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10;
    wire n_0_3;
    assign n_0_3 = n_0_3_sum[12];

// classifier: 4
    wire signed [11:0] n_0_4_po_0;
    //weight 37: 8'sb00100101
    assign n_0_4_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100101;

    wire signed [11:0] n_0_4_po_1;
    //weight 15: 8'sb00001111
    assign n_0_4_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001111;

    wire signed [11:0] n_0_4_po_2;
    //weight -10: 8'sb11110110
    assign n_0_4_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110110;

    wire signed [11:0] n_0_4_po_3;
    //weight -25: 8'sb11100111
    assign n_0_4_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11100111;

    wire signed [11:0] n_0_4_po_4;
    //weight -17: 8'sb11101111
    assign n_0_4_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11101111;

    wire signed [11:0] n_0_4_po_5;
    //weight 22: 8'sb00010110
    assign n_0_4_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010110;

    wire signed [11:0] n_0_4_po_6;
    //weight -13: 8'sb11110011
    assign n_0_4_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110011;

    wire signed [11:0] n_0_4_po_7;
    //weight 7: 8'sb00000111
    assign n_0_4_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000111;

    wire signed [11:0] n_0_4_po_8;
    //weight 7: 8'sb00000111
    assign n_0_4_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000111;

    wire signed [11:0] n_0_4_po_9;
    //weight -12: 8'sb11110100
    assign n_0_4_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110100;

    wire signed [11:0] n_0_4_po_10;
    //weight -18: 8'sb11101110
    assign n_0_4_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11101110;

    wire signed [12:0] n_0_4_sum;
    assign n_0_4_sum = -240 + n_0_4_po_0 + n_0_4_po_1 + n_0_4_po_2 + n_0_4_po_3 + n_0_4_po_4 + n_0_4_po_5 + n_0_4_po_6 + n_0_4_po_7 + n_0_4_po_8 + n_0_4_po_9 + n_0_4_po_10;
    wire n_0_4;
    assign n_0_4 = n_0_4_sum[12];

// classifier: 5
    wire signed [11:0] n_0_5_po_0;
    //weight -12: 8'sb11110100
    assign n_0_5_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110100;

    wire signed [11:0] n_0_5_po_1;
    //weight 15: 8'sb00001111
    assign n_0_5_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001111;

    wire signed [11:0] n_0_5_po_2;
    //weight -13: 8'sb11110011
    assign n_0_5_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110011;

    wire signed [11:0] n_0_5_po_3;
    //weight -13: 8'sb11110011
    assign n_0_5_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110011;

    wire signed [11:0] n_0_5_po_4;
    //weight 8: 8'sb00001000
    assign n_0_5_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001000;

    wire signed [11:0] n_0_5_po_5;
    //weight 5: 8'sb00000101
    assign n_0_5_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000101;

    wire signed [11:0] n_0_5_po_6;
    //weight -24: 8'sb11101000
    assign n_0_5_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11101000;

    wire signed [11:0] n_0_5_po_7;
    //weight 5: 8'sb00000101
    assign n_0_5_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000101;

    wire signed [11:0] n_0_5_po_8;
    //weight -8: 8'sb11111000
    assign n_0_5_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_5_po_9;
    //weight -48: 8'sb11010000
    assign n_0_5_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11010000;

    wire signed [11:0] n_0_5_po_10;
    //weight -54: 8'sb11001010
    assign n_0_5_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11001010;

    wire signed [12:0] n_0_5_sum;
    assign n_0_5_sum = 1036 + n_0_5_po_0 + n_0_5_po_1 + n_0_5_po_2 + n_0_5_po_3 + n_0_5_po_4 + n_0_5_po_5 + n_0_5_po_6 + n_0_5_po_7 + n_0_5_po_8 + n_0_5_po_9 + n_0_5_po_10;
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
    //weight 0: 8'sb00000000
    assign n_0_7_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_1;
    //weight 0: 8'sb00000000
    assign n_0_7_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_2;
    //weight 0: 8'sb00000000
    assign n_0_7_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_3;
    //weight 0: 8'sb00000000
    assign n_0_7_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_4;
    //weight 0: 8'sb00000000
    assign n_0_7_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_5;
    //weight 0: 8'sb00000000
    assign n_0_7_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_6;
    //weight 0: 8'sb00000000
    assign n_0_7_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_7;
    //weight 0: 8'sb00000000
    assign n_0_7_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_8;
    //weight 0: 8'sb00000000
    assign n_0_7_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_9;
    //weight 0: 8'sb00000000
    assign n_0_7_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_7_po_10;
    //weight 0: 8'sb00000000
    assign n_0_7_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_7_sum;
    assign n_0_7_sum = -128 + n_0_7_po_0 + n_0_7_po_1 + n_0_7_po_2 + n_0_7_po_3 + n_0_7_po_4 + n_0_7_po_5 + n_0_7_po_6 + n_0_7_po_7 + n_0_7_po_8 + n_0_7_po_9 + n_0_7_po_10;
    wire n_0_7;
    assign n_0_7 = n_0_7_sum[12];

// classifier: 8
    wire signed [11:0] n_0_8_po_0;
    //weight 8: 8'sb00001000
    assign n_0_8_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001000;

    wire signed [11:0] n_0_8_po_1;
    //weight 68: 8'sb01000100
    assign n_0_8_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000100;

    wire signed [11:0] n_0_8_po_2;
    //weight 11: 8'sb00001011
    assign n_0_8_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001011;

    wire signed [11:0] n_0_8_po_3;
    //weight -89: 8'sb10100111
    assign n_0_8_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10100111;

    wire signed [11:0] n_0_8_po_4;
    //weight 12: 8'sb00001100
    assign n_0_8_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001100;

    wire signed [11:0] n_0_8_po_5;
    //weight -29: 8'sb11100011
    assign n_0_8_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11100011;

    wire signed [11:0] n_0_8_po_6;
    //weight -10: 8'sb11110110
    assign n_0_8_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110110;

    wire signed [11:0] n_0_8_po_7;
    //weight 74: 8'sb01001010
    assign n_0_8_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb01001010;

    wire signed [11:0] n_0_8_po_8;
    //weight -9: 8'sb11110111
    assign n_0_8_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110111;

    wire signed [11:0] n_0_8_po_9;
    //weight -7: 8'sb11111001
    assign n_0_8_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111001;

    wire signed [11:0] n_0_8_po_10;
    //weight -37: 8'sb11011011
    assign n_0_8_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11011011;

    wire signed [12:0] n_0_8_sum;
    assign n_0_8_sum = 7 + n_0_8_po_0 + n_0_8_po_1 + n_0_8_po_2 + n_0_8_po_3 + n_0_8_po_4 + n_0_8_po_5 + n_0_8_po_6 + n_0_8_po_7 + n_0_8_po_8 + n_0_8_po_9 + n_0_8_po_10;
    wire n_0_8;
    assign n_0_8 = n_0_8_sum[12];

// classifier: 9
    wire signed [11:0] n_0_9_po_0;
    //weight -9: 8'sb11110111
    assign n_0_9_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110111;

    wire signed [11:0] n_0_9_po_1;
    //weight 73: 8'sb01001001
    assign n_0_9_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01001001;

    wire signed [11:0] n_0_9_po_2;
    //weight 39: 8'sb00100111
    assign n_0_9_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00100111;

    wire signed [11:0] n_0_9_po_3;
    //weight -81: 8'sb10101111
    assign n_0_9_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10101111;

    wire signed [11:0] n_0_9_po_4;
    //weight 10: 8'sb00001010
    assign n_0_9_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001010;

    wire signed [11:0] n_0_9_po_5;
    //weight -68: 8'sb10111100
    assign n_0_9_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb10111100;

    wire signed [11:0] n_0_9_po_6;
    //weight 8: 8'sb00001000
    assign n_0_9_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001000;

    wire signed [11:0] n_0_9_po_7;
    //weight 34: 8'sb00100010
    assign n_0_9_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100010;

    wire signed [11:0] n_0_9_po_8;
    //weight -9: 8'sb11110111
    assign n_0_9_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110111;

    wire signed [11:0] n_0_9_po_9;
    //weight -4: 8'sb11111100
    assign n_0_9_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111100;

    wire signed [11:0] n_0_9_po_10;
    //weight -52: 8'sb11001100
    assign n_0_9_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11001100;

    wire signed [12:0] n_0_9_sum;
    assign n_0_9_sum = 291 + n_0_9_po_0 + n_0_9_po_1 + n_0_9_po_2 + n_0_9_po_3 + n_0_9_po_4 + n_0_9_po_5 + n_0_9_po_6 + n_0_9_po_7 + n_0_9_po_8 + n_0_9_po_9 + n_0_9_po_10;
    wire n_0_9;
    assign n_0_9 = n_0_9_sum[12];

// classifier: 10
    wire signed [11:0] n_0_10_po_0;
    //weight -49: 8'sb11001111
    assign n_0_10_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11001111;

    wire signed [11:0] n_0_10_po_1;
    //weight 12: 8'sb00001100
    assign n_0_10_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001100;

    wire signed [11:0] n_0_10_po_2;
    //weight 19: 8'sb00010011
    assign n_0_10_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00010011;

    wire signed [11:0] n_0_10_po_3;
    //weight -12: 8'sb11110100
    assign n_0_10_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110100;

    wire signed [11:0] n_0_10_po_4;
    //weight 14: 8'sb00001110
    assign n_0_10_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001110;

    wire signed [11:0] n_0_10_po_5;
    //weight -19: 8'sb11101101
    assign n_0_10_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11101101;

    wire signed [11:0] n_0_10_po_6;
    //weight -10: 8'sb11110110
    assign n_0_10_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110110;

    wire signed [11:0] n_0_10_po_7;
    //weight 1: 8'sb00000001
    assign n_0_10_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000001;

    wire signed [11:0] n_0_10_po_8;
    //weight -34: 8'sb11011110
    assign n_0_10_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11011110;

    wire signed [11:0] n_0_10_po_9;
    //weight 8: 8'sb00001000
    assign n_0_10_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001000;

    wire signed [11:0] n_0_10_po_10;
    //weight -56: 8'sb11001000
    assign n_0_10_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11001000;

    wire signed [12:0] n_0_10_sum;
    assign n_0_10_sum = 1167 + n_0_10_po_0 + n_0_10_po_1 + n_0_10_po_2 + n_0_10_po_3 + n_0_10_po_4 + n_0_10_po_5 + n_0_10_po_6 + n_0_10_po_7 + n_0_10_po_8 + n_0_10_po_9 + n_0_10_po_10;
    wire n_0_10;
    assign n_0_10 = n_0_10_sum[12];

// classifier: 11
    wire signed [11:0] n_0_11_po_0;
    //weight 7: 8'sb00000111
    assign n_0_11_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000111;

    wire signed [11:0] n_0_11_po_1;
    //weight 48: 8'sb00110000
    assign n_0_11_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00110000;

    wire signed [11:0] n_0_11_po_2;
    //weight 2: 8'sb00000010
    assign n_0_11_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000010;

    wire signed [11:0] n_0_11_po_3;
    //weight -23: 8'sb11101001
    assign n_0_11_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101001;

    wire signed [11:0] n_0_11_po_4;
    //weight -4: 8'sb11111100
    assign n_0_11_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111100;

    wire signed [11:0] n_0_11_po_5;
    //weight -14: 8'sb11110010
    assign n_0_11_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110010;

    wire signed [11:0] n_0_11_po_6;
    //weight 8: 8'sb00001000
    assign n_0_11_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001000;

    wire signed [11:0] n_0_11_po_7;
    //weight -8: 8'sb11111000
    assign n_0_11_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111000;

    wire signed [11:0] n_0_11_po_8;
    //weight -8: 8'sb11111000
    assign n_0_11_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_11_po_9;
    //weight -7: 8'sb11111001
    assign n_0_11_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111001;

    wire signed [11:0] n_0_11_po_10;
    //weight -43: 8'sb11010101
    assign n_0_11_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010101;

    wire signed [12:0] n_0_11_sum;
    assign n_0_11_sum = 132 + n_0_11_po_0 + n_0_11_po_1 + n_0_11_po_2 + n_0_11_po_3 + n_0_11_po_4 + n_0_11_po_5 + n_0_11_po_6 + n_0_11_po_7 + n_0_11_po_8 + n_0_11_po_9 + n_0_11_po_10;
    wire n_0_11;
    assign n_0_11 = n_0_11_sum[12];

// classifier: 12
    wire signed [11:0] n_0_12_po_0;
    //weight -9: 8'sb11110111
    assign n_0_12_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110111;

    wire signed [11:0] n_0_12_po_1;
    //weight 42: 8'sb00101010
    assign n_0_12_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00101010;

    wire signed [11:0] n_0_12_po_2;
    //weight -7: 8'sb11111001
    assign n_0_12_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111001;

    wire signed [11:0] n_0_12_po_3;
    //weight -79: 8'sb10110001
    assign n_0_12_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10110001;

    wire signed [11:0] n_0_12_po_4;
    //weight 38: 8'sb00100110
    assign n_0_12_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100110;

    wire signed [11:0] n_0_12_po_5;
    //weight -14: 8'sb11110010
    assign n_0_12_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110010;

    wire signed [11:0] n_0_12_po_6;
    //weight 9: 8'sb00001001
    assign n_0_12_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001001;

    wire signed [11:0] n_0_12_po_7;
    //weight 124: 8'sb01111100
    assign n_0_12_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb01111100;

    wire signed [11:0] n_0_12_po_8;
    //weight -16: 8'sb11110000
    assign n_0_12_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110000;

    wire signed [11:0] n_0_12_po_9;
    //weight -15: 8'sb11110001
    assign n_0_12_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110001;

    wire signed [11:0] n_0_12_po_10;
    //weight -34: 8'sb11011110
    assign n_0_12_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11011110;

    wire signed [12:0] n_0_12_sum;
    assign n_0_12_sum = 178 + n_0_12_po_0 + n_0_12_po_1 + n_0_12_po_2 + n_0_12_po_3 + n_0_12_po_4 + n_0_12_po_5 + n_0_12_po_6 + n_0_12_po_7 + n_0_12_po_8 + n_0_12_po_9 + n_0_12_po_10;
    wire n_0_12;
    assign n_0_12 = n_0_12_sum[12];

// classifier: 13
    wire signed [11:0] n_0_13_po_0;
    //weight 1: 8'sb00000001
    assign n_0_13_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000001;

    wire signed [11:0] n_0_13_po_1;
    //weight 13: 8'sb00001101
    assign n_0_13_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001101;

    wire signed [11:0] n_0_13_po_2;
    //weight 2: 8'sb00000010
    assign n_0_13_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000010;

    wire signed [11:0] n_0_13_po_3;
    //weight -51: 8'sb11001101
    assign n_0_13_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11001101;

    wire signed [11:0] n_0_13_po_4;
    //weight 4: 8'sb00000100
    assign n_0_13_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000100;

    wire signed [11:0] n_0_13_po_5;
    //weight -11: 8'sb11110101
    assign n_0_13_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110101;

    wire signed [11:0] n_0_13_po_6;
    //weight -3: 8'sb11111101
    assign n_0_13_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111101;

    wire signed [11:0] n_0_13_po_7;
    //weight 58: 8'sb00111010
    assign n_0_13_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00111010;

    wire signed [11:0] n_0_13_po_8;
    //weight -6: 8'sb11111010
    assign n_0_13_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111010;

    wire signed [11:0] n_0_13_po_9;
    //weight -7: 8'sb11111001
    assign n_0_13_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111001;

    wire signed [11:0] n_0_13_po_10;
    //weight -41: 8'sb11010111
    assign n_0_13_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11010111;

    wire signed [12:0] n_0_13_sum;
    assign n_0_13_sum = 466 + n_0_13_po_0 + n_0_13_po_1 + n_0_13_po_2 + n_0_13_po_3 + n_0_13_po_4 + n_0_13_po_5 + n_0_13_po_6 + n_0_13_po_7 + n_0_13_po_8 + n_0_13_po_9 + n_0_13_po_10;
    wire n_0_13;
    assign n_0_13 = n_0_13_sum[12];

// classifier: 14
    wire signed [11:0] n_0_14_po_0;
    //weight -30: 8'sb11100010
    assign n_0_14_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100010;

    wire signed [11:0] n_0_14_po_1;
    //weight -3: 8'sb11111101
    assign n_0_14_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111101;

    wire signed [11:0] n_0_14_po_2;
    //weight -18: 8'sb11101110
    assign n_0_14_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11101110;

    wire signed [11:0] n_0_14_po_3;
    //weight -3: 8'sb11111101
    assign n_0_14_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111101;

    wire signed [11:0] n_0_14_po_4;
    //weight 21: 8'sb00010101
    assign n_0_14_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010101;

    wire signed [11:0] n_0_14_po_5;
    //weight -10: 8'sb11110110
    assign n_0_14_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110110;

    wire signed [11:0] n_0_14_po_6;
    //weight -1: 8'sb11111111
    assign n_0_14_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111111;

    wire signed [11:0] n_0_14_po_7;
    //weight 21: 8'sb00010101
    assign n_0_14_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00010101;

    wire signed [11:0] n_0_14_po_8;
    //weight -24: 8'sb11101000
    assign n_0_14_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101000;

    wire signed [11:0] n_0_14_po_9;
    //weight -1: 8'sb11111111
    assign n_0_14_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111111;

    wire signed [11:0] n_0_14_po_10;
    //weight -21: 8'sb11101011
    assign n_0_14_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11101011;

    wire signed [12:0] n_0_14_sum;
    assign n_0_14_sum = 807 + n_0_14_po_0 + n_0_14_po_1 + n_0_14_po_2 + n_0_14_po_3 + n_0_14_po_4 + n_0_14_po_5 + n_0_14_po_6 + n_0_14_po_7 + n_0_14_po_8 + n_0_14_po_9 + n_0_14_po_10;
    wire n_0_14;
    assign n_0_14 = n_0_14_sum[12];

// classifier: 15
    wire signed [11:0] n_0_15_po_0;
    //weight 0: 8'sb00000000
    assign n_0_15_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_1;
    //weight 0: 8'sb00000000
    assign n_0_15_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_2;
    //weight 0: 8'sb00000000
    assign n_0_15_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_3;
    //weight 0: 8'sb00000000
    assign n_0_15_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_4;
    //weight 0: 8'sb00000000
    assign n_0_15_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_5;
    //weight 0: 8'sb00000000
    assign n_0_15_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_6;
    //weight 0: 8'sb00000000
    assign n_0_15_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_7;
    //weight 0: 8'sb00000000
    assign n_0_15_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_8;
    //weight 0: 8'sb00000000
    assign n_0_15_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_9;
    //weight 0: 8'sb00000000
    assign n_0_15_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_15_po_10;
    //weight 0: 8'sb00000000
    assign n_0_15_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_15_sum;
    assign n_0_15_sum = 128 + n_0_15_po_0 + n_0_15_po_1 + n_0_15_po_2 + n_0_15_po_3 + n_0_15_po_4 + n_0_15_po_5 + n_0_15_po_6 + n_0_15_po_7 + n_0_15_po_8 + n_0_15_po_9 + n_0_15_po_10;
    wire n_0_15;
    assign n_0_15 = n_0_15_sum[12];

// classifier: 16
    wire signed [11:0] n_0_16_po_0;
    //weight 0: 8'sb00000000
    assign n_0_16_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_1;
    //weight 0: 8'sb00000000
    assign n_0_16_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_2;
    //weight 0: 8'sb00000000
    assign n_0_16_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_3;
    //weight 0: 8'sb00000000
    assign n_0_16_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_4;
    //weight 0: 8'sb00000000
    assign n_0_16_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_5;
    //weight 0: 8'sb00000000
    assign n_0_16_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_6;
    //weight 0: 8'sb00000000
    assign n_0_16_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_7;
    //weight 0: 8'sb00000000
    assign n_0_16_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_8;
    //weight 0: 8'sb00000000
    assign n_0_16_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_9;
    //weight 0: 8'sb00000000
    assign n_0_16_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_16_po_10;
    //weight 0: 8'sb00000000
    assign n_0_16_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_16_sum;
    assign n_0_16_sum = 128 + n_0_16_po_0 + n_0_16_po_1 + n_0_16_po_2 + n_0_16_po_3 + n_0_16_po_4 + n_0_16_po_5 + n_0_16_po_6 + n_0_16_po_7 + n_0_16_po_8 + n_0_16_po_9 + n_0_16_po_10;
    wire n_0_16;
    assign n_0_16 = n_0_16_sum[12];

// classifier: 17
    wire signed [11:0] n_0_17_po_0;
    //weight -3: 8'sb11111101
    assign n_0_17_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111101;

    wire signed [11:0] n_0_17_po_1;
    //weight -1: 8'sb11111111
    assign n_0_17_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111111;

    wire signed [11:0] n_0_17_po_2;
    //weight 0: 8'sb00000000
    assign n_0_17_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_17_po_3;
    //weight -2: 8'sb11111110
    assign n_0_17_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111110;

    wire signed [11:0] n_0_17_po_4;
    //weight 7: 8'sb00000111
    assign n_0_17_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000111;

    wire signed [11:0] n_0_17_po_5;
    //weight -1: 8'sb11111111
    assign n_0_17_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111111;

    wire signed [11:0] n_0_17_po_6;
    //weight 0: 8'sb00000000
    assign n_0_17_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_17_po_7;
    //weight 6: 8'sb00000110
    assign n_0_17_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000110;

    wire signed [11:0] n_0_17_po_8;
    //weight -3: 8'sb11111101
    assign n_0_17_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111101;

    wire signed [11:0] n_0_17_po_9;
    //weight 0: 8'sb00000000
    assign n_0_17_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_17_po_10;
    //weight 0: 8'sb00000000
    assign n_0_17_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_17_sum;
    assign n_0_17_sum = 163 + n_0_17_po_0 + n_0_17_po_1 + n_0_17_po_2 + n_0_17_po_3 + n_0_17_po_4 + n_0_17_po_5 + n_0_17_po_6 + n_0_17_po_7 + n_0_17_po_8 + n_0_17_po_9 + n_0_17_po_10;
    wire n_0_17;
    assign n_0_17 = n_0_17_sum[12];

// classifier: 18
    wire signed [11:0] n_0_18_po_0;
    //weight 0: 8'sb00000000
    assign n_0_18_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_1;
    //weight 0: 8'sb00000000
    assign n_0_18_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_2;
    //weight 0: 8'sb00000000
    assign n_0_18_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_3;
    //weight 0: 8'sb00000000
    assign n_0_18_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_4;
    //weight 0: 8'sb00000000
    assign n_0_18_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_5;
    //weight 0: 8'sb00000000
    assign n_0_18_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_6;
    //weight 0: 8'sb00000000
    assign n_0_18_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_7;
    //weight 0: 8'sb00000000
    assign n_0_18_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_8;
    //weight 0: 8'sb00000000
    assign n_0_18_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_9;
    //weight 0: 8'sb00000000
    assign n_0_18_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_18_po_10;
    //weight 0: 8'sb00000000
    assign n_0_18_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_18_sum;
    assign n_0_18_sum = 128 + n_0_18_po_0 + n_0_18_po_1 + n_0_18_po_2 + n_0_18_po_3 + n_0_18_po_4 + n_0_18_po_5 + n_0_18_po_6 + n_0_18_po_7 + n_0_18_po_8 + n_0_18_po_9 + n_0_18_po_10;
    wire n_0_18;
    assign n_0_18 = n_0_18_sum[12];

// classifier: 19
    wire signed [11:0] n_0_19_po_0;
    //weight -3: 8'sb11111101
    assign n_0_19_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111101;

    wire signed [11:0] n_0_19_po_1;
    //weight 0: 8'sb00000000
    assign n_0_19_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_19_po_2;
    //weight -1: 8'sb11111111
    assign n_0_19_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111111;

    wire signed [11:0] n_0_19_po_3;
    //weight -1: 8'sb11111111
    assign n_0_19_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111111;

    wire signed [11:0] n_0_19_po_4;
    //weight 6: 8'sb00000110
    assign n_0_19_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000110;

    wire signed [11:0] n_0_19_po_5;
    //weight -1: 8'sb11111111
    assign n_0_19_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111111;

    wire signed [11:0] n_0_19_po_6;
    //weight 0: 8'sb00000000
    assign n_0_19_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_19_po_7;
    //weight 2: 8'sb00000010
    assign n_0_19_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000010;

    wire signed [11:0] n_0_19_po_8;
    //weight -3: 8'sb11111101
    assign n_0_19_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111101;

    wire signed [11:0] n_0_19_po_9;
    //weight 1: 8'sb00000001
    assign n_0_19_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000001;

    wire signed [11:0] n_0_19_po_10;
    //weight -1: 8'sb11111111
    assign n_0_19_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111111;

    wire signed [12:0] n_0_19_sum;
    assign n_0_19_sum = 175 + n_0_19_po_0 + n_0_19_po_1 + n_0_19_po_2 + n_0_19_po_3 + n_0_19_po_4 + n_0_19_po_5 + n_0_19_po_6 + n_0_19_po_7 + n_0_19_po_8 + n_0_19_po_9 + n_0_19_po_10;
    wire n_0_19;
    assign n_0_19 = n_0_19_sum[12];

// classifier: 20
    wire signed [11:0] n_0_20_po_0;
    //weight -16: 8'sb11110000
    assign n_0_20_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110000;

    wire signed [11:0] n_0_20_po_1;
    //weight 2: 8'sb00000010
    assign n_0_20_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000010;

    wire signed [11:0] n_0_20_po_2;
    //weight -10: 8'sb11110110
    assign n_0_20_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110110;

    wire signed [11:0] n_0_20_po_3;
    //weight 3: 8'sb00000011
    assign n_0_20_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000011;

    wire signed [11:0] n_0_20_po_4;
    //weight 21: 8'sb00010101
    assign n_0_20_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010101;

    wire signed [11:0] n_0_20_po_5;
    //weight 8: 8'sb00001000
    assign n_0_20_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001000;

    wire signed [11:0] n_0_20_po_6;
    //weight 1: 8'sb00000001
    assign n_0_20_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000001;

    wire signed [11:0] n_0_20_po_7;
    //weight 3: 8'sb00000011
    assign n_0_20_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000011;

    wire signed [11:0] n_0_20_po_8;
    //weight -9: 8'sb11110111
    assign n_0_20_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110111;

    wire signed [11:0] n_0_20_po_9;
    //weight -2: 8'sb11111110
    assign n_0_20_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111110;

    wire signed [11:0] n_0_20_po_10;
    //weight -6: 8'sb11111010
    assign n_0_20_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111010;

    wire signed [12:0] n_0_20_sum;
    assign n_0_20_sum = 357 + n_0_20_po_0 + n_0_20_po_1 + n_0_20_po_2 + n_0_20_po_3 + n_0_20_po_4 + n_0_20_po_5 + n_0_20_po_6 + n_0_20_po_7 + n_0_20_po_8 + n_0_20_po_9 + n_0_20_po_10;
    wire n_0_20;
    assign n_0_20 = n_0_20_sum[12];

// decisionMatrix inp: n_0_0, n_0_1, n_0_2, n_0_3, n_0_4, n_0_5, n_0_6, n_0_7, n_0_8, n_0_9, n_0_10, n_0_11, n_0_12, n_0_13, n_0_14, n_0_15, n_0_16, n_0_17, n_0_18, n_0_19, n_0_20
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

    wire dm_cmp_0_6, dm_cmp_6_0;
    assign dm_cmp_0_6 = ~n_0_5;
    assign dm_cmp_6_0 = n_0_5;

    wire dm_cmp_1_2, dm_cmp_2_1;
    assign dm_cmp_1_2 = ~n_0_6;
    assign dm_cmp_2_1 = n_0_6;

    wire dm_cmp_1_3, dm_cmp_3_1;
    assign dm_cmp_1_3 = ~n_0_7;
    assign dm_cmp_3_1 = n_0_7;

    wire dm_cmp_1_4, dm_cmp_4_1;
    assign dm_cmp_1_4 = ~n_0_8;
    assign dm_cmp_4_1 = n_0_8;

    wire dm_cmp_1_5, dm_cmp_5_1;
    assign dm_cmp_1_5 = ~n_0_9;
    assign dm_cmp_5_1 = n_0_9;

    wire dm_cmp_1_6, dm_cmp_6_1;
    assign dm_cmp_1_6 = ~n_0_10;
    assign dm_cmp_6_1 = n_0_10;

    wire dm_cmp_2_3, dm_cmp_3_2;
    assign dm_cmp_2_3 = ~n_0_11;
    assign dm_cmp_3_2 = n_0_11;

    wire dm_cmp_2_4, dm_cmp_4_2;
    assign dm_cmp_2_4 = ~n_0_12;
    assign dm_cmp_4_2 = n_0_12;

    wire dm_cmp_2_5, dm_cmp_5_2;
    assign dm_cmp_2_5 = ~n_0_13;
    assign dm_cmp_5_2 = n_0_13;

    wire dm_cmp_2_6, dm_cmp_6_2;
    assign dm_cmp_2_6 = ~n_0_14;
    assign dm_cmp_6_2 = n_0_14;

    wire dm_cmp_3_4, dm_cmp_4_3;
    assign dm_cmp_3_4 = ~n_0_15;
    assign dm_cmp_4_3 = n_0_15;

    wire dm_cmp_3_5, dm_cmp_5_3;
    assign dm_cmp_3_5 = ~n_0_16;
    assign dm_cmp_5_3 = n_0_16;

    wire dm_cmp_3_6, dm_cmp_6_3;
    assign dm_cmp_3_6 = ~n_0_17;
    assign dm_cmp_6_3 = n_0_17;

    wire dm_cmp_4_5, dm_cmp_5_4;
    assign dm_cmp_4_5 = ~n_0_18;
    assign dm_cmp_5_4 = n_0_18;

    wire dm_cmp_4_6, dm_cmp_6_4;
    assign dm_cmp_4_6 = ~n_0_19;
    assign dm_cmp_6_4 = n_0_19;

    wire dm_cmp_5_6, dm_cmp_6_5;
    assign dm_cmp_5_6 = ~n_0_20;
    assign dm_cmp_6_5 = n_0_20;

    wire [2:0] dm_sum_0;
    assign dm_sum_0 = dm_cmp_0_1 + dm_cmp_0_2 + dm_cmp_0_3 + dm_cmp_0_4 + dm_cmp_0_5 + dm_cmp_0_6;
    wire [2:0] dm_sum_1;
    assign dm_sum_1 = dm_cmp_1_0 + dm_cmp_1_2 + dm_cmp_1_3 + dm_cmp_1_4 + dm_cmp_1_5 + dm_cmp_1_6;
    wire [2:0] dm_sum_2;
    assign dm_sum_2 = dm_cmp_2_0 + dm_cmp_2_1 + dm_cmp_2_3 + dm_cmp_2_4 + dm_cmp_2_5 + dm_cmp_2_6;
    wire [2:0] dm_sum_3;
    assign dm_sum_3 = dm_cmp_3_0 + dm_cmp_3_1 + dm_cmp_3_2 + dm_cmp_3_4 + dm_cmp_3_5 + dm_cmp_3_6;
    wire [2:0] dm_sum_4;
    assign dm_sum_4 = dm_cmp_4_0 + dm_cmp_4_1 + dm_cmp_4_2 + dm_cmp_4_3 + dm_cmp_4_5 + dm_cmp_4_6;
    wire [2:0] dm_sum_5;
    assign dm_sum_5 = dm_cmp_5_0 + dm_cmp_5_1 + dm_cmp_5_2 + dm_cmp_5_3 + dm_cmp_5_4 + dm_cmp_5_6;
    wire [2:0] dm_sum_6;
    assign dm_sum_6 = dm_cmp_6_0 + dm_cmp_6_1 + dm_cmp_6_2 + dm_cmp_6_3 + dm_cmp_6_4 + dm_cmp_6_5;

    assign predo = {dm_sum_0,dm_sum_1,dm_sum_2,dm_sum_3,dm_sum_4,dm_sum_5,dm_sum_6};
// argmax: 7 classes, need 3 bits
// argmax inp: dm_sum_0, dm_sum_1, dm_sum_2, dm_sum_3, dm_sum_4, dm_sum_5, dm_sum_6
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

    wire cmp_1_2;
    wire [2:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= dm_sum_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : dm_sum_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : 3'b110;

    //comp level 2
    wire cmp_2_0;
    wire [2:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    assign out = argmax_idx_2_0;

endmodule
