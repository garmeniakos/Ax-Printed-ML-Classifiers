//weights: [[17, -42, -4, 16, -24, 8, -23, -15, -7, 36, 64]]
//intercepts: [2763]
//act size: [4, 14]
//pred num: 1
module top (inp, out);
input [43:0] inp;
output [13:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 17: 8'sb00010001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00010001;

    wire signed [11:0] n_0_0_po_1;
    //weight -42: 8'sb11010110
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11010110;

    wire signed [11:0] n_0_0_po_2;
    //weight -4: 8'sb11111100
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_3;
    //weight 16: 8'sb00010000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_4;
    //weight -24: 8'sb11101000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_5;
    //weight 8: 8'sb00001000
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_6;
    //weight -23: 8'sb11101001
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11101001;

    wire signed [11:0] n_0_0_po_7;
    //weight -15: 8'sb11110001
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11110001;

    wire signed [11:0] n_0_0_po_8;
    //weight -7: 8'sb11111001
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_9;
    //weight 36: 8'sb00100100
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00100100;

    wire signed [11:0] n_0_0_po_10;
    //weight 64: 8'sb01000000
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb01000000;

    wire signed [13:0] n_0_0;
    assign n_0_0 = 2763 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;

    assign out = {n_0_0};

endmodule
