//weights: [[[1, -31, -4, 8, -16, 24, -8, -18, 8, -8, 32], [-7, -40, 8, 68, -56, 34, -8, -64, 24, 28, 64], [8, -112, -20, 18, 50, -15, 24, 24, -17, -8, -54], [9, -16, 4, -8, 17, 2, -8, 4, -4, 0, 4]], [[24, 22, 80, 20]]]
//intercepts: [[44, 449, 281, -457], [70594]]
//act size: [4, 12, 20]
//pred num: 1
module top (inp, out);
input [43:0] inp;
output [20:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 1: 8'sb00000001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000001;

    wire signed [11:0] n_0_0_po_1;
    //weight -31: 8'sb11100001
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100001;

    wire signed [11:0] n_0_0_po_2;
    //weight -4: 8'sb11111100
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_3;
    //weight 8: 8'sb00001000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_4;
    //weight -16: 8'sb11110000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_5;
    //weight 24: 8'sb00011000
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00011000;

    wire signed [11:0] n_0_0_po_6;
    //weight -8: 8'sb11111000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_7;
    //weight -18: 8'sb11101110
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101110;

    wire signed [11:0] n_0_0_po_8;
    //weight 8: 8'sb00001000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_9;
    //weight -8: 8'sb11111000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_10;
    //weight 32: 8'sb00100000
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00100000;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 44 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -7: 8'sb11111001
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111001;

    wire signed [11:0] n_0_1_po_1;
    //weight -40: 8'sb11011000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11011000;

    wire signed [11:0] n_0_1_po_2;
    //weight 8: 8'sb00001000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001000;

    wire signed [11:0] n_0_1_po_3;
    //weight 68: 8'sb01000100
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01000100;

    wire signed [11:0] n_0_1_po_4;
    //weight -56: 8'sb11001000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11001000;

    wire signed [11:0] n_0_1_po_5;
    //weight 34: 8'sb00100010
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00100010;

    wire signed [11:0] n_0_1_po_6;
    //weight -8: 8'sb11111000
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_7;
    //weight -64: 8'sb11000000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11000000;

    wire signed [11:0] n_0_1_po_8;
    //weight 24: 8'sb00011000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_9;
    //weight 28: 8'sb00011100
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00011100;

    wire signed [11:0] n_0_1_po_10;
    //weight 64: 8'sb01000000
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb01000000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 449 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 8: 8'sb00001000
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_1;
    //weight -112: 8'sb10010000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb10010000;

    wire signed [11:0] n_0_2_po_2;
    //weight -20: 8'sb11101100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11101100;

    wire signed [11:0] n_0_2_po_3;
    //weight 18: 8'sb00010010
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00010010;

    wire signed [11:0] n_0_2_po_4;
    //weight 50: 8'sb00110010
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00110010;

    wire signed [11:0] n_0_2_po_5;
    //weight -15: 8'sb11110001
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110001;

    wire signed [11:0] n_0_2_po_6;
    //weight 24: 8'sb00011000
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_po_7;
    //weight 24: 8'sb00011000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_po_8;
    //weight -17: 8'sb11101111
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101111;

    wire signed [11:0] n_0_2_po_9;
    //weight -8: 8'sb11111000
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_10;
    //weight -54: 8'sb11001010
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11001010;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = 281 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 0 - neuron: 3
    wire signed [11:0] n_0_3_po_0;
    //weight 9: 8'sb00001001
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001001;

    wire signed [11:0] n_0_3_po_1;
    //weight -16: 8'sb11110000
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110000;

    wire signed [11:0] n_0_3_po_2;
    //weight 4: 8'sb00000100
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000100;

    wire signed [11:0] n_0_3_po_3;
    //weight -8: 8'sb11111000
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111000;

    wire signed [11:0] n_0_3_po_4;
    //weight 17: 8'sb00010001
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010001;

    wire signed [11:0] n_0_3_po_5;
    //weight 2: 8'sb00000010
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000010;

    wire signed [11:0] n_0_3_po_6;
    //weight -8: 8'sb11111000
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111000;

    wire signed [11:0] n_0_3_po_7;
    //weight 4: 8'sb00000100
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000100;

    wire signed [11:0] n_0_3_po_8;
    //weight -4: 8'sb11111100
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111100;

    wire signed [11:0] n_0_3_po_9;
    //weight 0: 8'sb00000000
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_3_po_10;
    //weight 4: 8'sb00000100
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000100;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = -457 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10;
    //relu
    wire [11:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_3_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight 24: 8'sb00011000
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011000;

    wire signed [19:0] n_1_0_po_1;
    //weight 22: 8'sb00010110
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010110;

    wire signed [19:0] n_1_0_po_2;
    //weight 80: 8'sb01010000
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb01010000;

    wire signed [19:0] n_1_0_po_3;
    //weight 20: 8'sb00010100
    assign n_1_0_po_3 = $signed({1'b0, n_0_3}) * 8'sb00010100;

    wire signed [20:0] n_1_0_sum;
    assign n_1_0_sum = 70594 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2 + n_1_0_po_3;
    //relu
    wire [19:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_0_sum[19:0]);

    assign out = {n_1_0};

endmodule
