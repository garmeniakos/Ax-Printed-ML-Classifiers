//weights: [[[-23, 70, 14, -9, 39, -13, 34, 18, 16, -55, -86], [-6, -4, -6, 9, 0, -10, -7, -8, -4, -8, -3]], [[-6, -5]]]
//intercepts: [[688, 108], [27282]]
//act size: [4, 12, 19]
//pred num: 1
module top (inp, out);
input [43:0] inp;
output [19:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -23: 8'sb11101001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101001;

    wire signed [11:0] n_0_0_po_1;
    //weight 70: 8'sb01000110
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000110;

    wire signed [11:0] n_0_0_po_2;
    //weight 14: 8'sb00001110
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001110;

    wire signed [11:0] n_0_0_po_3;
    //weight -9: 8'sb11110111
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110111;

    wire signed [11:0] n_0_0_po_4;
    //weight 39: 8'sb00100111
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00100111;

    wire signed [11:0] n_0_0_po_5;
    //weight -13: 8'sb11110011
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110011;

    wire signed [11:0] n_0_0_po_6;
    //weight 34: 8'sb00100010
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00100010;

    wire signed [11:0] n_0_0_po_7;
    //weight 18: 8'sb00010010
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00010010;

    wire signed [11:0] n_0_0_po_8;
    //weight 16: 8'sb00010000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_9;
    //weight -55: 8'sb11001001
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11001001;

    wire signed [11:0] n_0_0_po_10;
    //weight -86: 8'sb10101010
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb10101010;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 688 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -6: 8'sb11111010
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_1;
    //weight -4: 8'sb11111100
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_2;
    //weight -6: 8'sb11111010
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_3;
    //weight 9: 8'sb00001001
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001001;

    wire signed [11:0] n_0_1_po_4;
    //weight 0: 8'sb00000000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_5;
    //weight -10: 8'sb11110110
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11110110;

    wire signed [11:0] n_0_1_po_6;
    //weight -7: 8'sb11111001
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111001;

    wire signed [11:0] n_0_1_po_7;
    //weight -8: 8'sb11111000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_8;
    //weight -4: 8'sb11111100
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_9;
    //weight -8: 8'sb11111000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_10;
    //weight -3: 8'sb11111101
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111101;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 108 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight -6: 8'sb11111010
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111010;

    wire signed [19:0] n_1_0_po_1;
    //weight -5: 8'sb11111011
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111011;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 27282 + n_1_0_po_0 + n_1_0_po_1;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

    assign out = {n_1_0};

endmodule
