//weights: [[42, 0, 12, -18, -15, 57, 112, 36, 12, 80, 9, 0, 20, 24, 0, -4, -32, -64, -17, 42, 9]]
//intercepts: [1177]
//act size: [4, 14]
//pred num: 1
module top (inp, out);
input [83:0] inp;
output [13:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 42: 8'sb00101010
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00101010;

    wire signed [11:0] n_0_0_po_1;
    //weight 0: 8'sb00000000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_2;
    //weight 12: 8'sb00001100
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_3;
    //weight -18: 8'sb11101110
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101110;

    wire signed [11:0] n_0_0_po_4;
    //weight -15: 8'sb11110001
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110001;

    wire signed [11:0] n_0_0_po_5;
    //weight 57: 8'sb00111001
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00111001;

    wire signed [11:0] n_0_0_po_6;
    //weight 112: 8'sb01110000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01110000;

    wire signed [11:0] n_0_0_po_7;
    //weight 36: 8'sb00100100
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100100;

    wire signed [11:0] n_0_0_po_8;
    //weight 12: 8'sb00001100
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_9;
    //weight 80: 8'sb01010000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb01010000;

    wire signed [11:0] n_0_0_po_10;
    //weight 9: 8'sb00001001
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00001001;

    wire signed [11:0] n_0_0_po_11;
    //weight 0: 8'sb00000000
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_12;
    //weight 20: 8'sb00010100
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00010100;

    wire signed [11:0] n_0_0_po_13;
    //weight 24: 8'sb00011000
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00011000;

    wire signed [11:0] n_0_0_po_14;
    //weight 0: 8'sb00000000
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_15;
    //weight -4: 8'sb11111100
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_16;
    //weight -32: 8'sb11100000
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_17;
    //weight -64: 8'sb11000000
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11000000;

    wire signed [11:0] n_0_0_po_18;
    //weight -17: 8'sb11101111
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11101111;

    wire signed [11:0] n_0_0_po_19;
    //weight 42: 8'sb00101010
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00101010;

    wire signed [11:0] n_0_0_po_20;
    //weight 9: 8'sb00001001
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00001001;

    wire signed [13:0] n_0_0;
    assign n_0_0 = 1177 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;

    assign out = {n_0_0};

endmodule
