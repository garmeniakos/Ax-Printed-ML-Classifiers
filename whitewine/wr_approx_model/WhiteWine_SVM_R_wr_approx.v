//weights: [[4, -32, 0, 57, 0, 9, -4, -76, 12, 8, 28]]
//intercepts: [1357]
//act size: [4, 13]
//pred num: 1
module top (inp, out);
input [43:0] inp;
output [12:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 4: 8'sb00000100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000100;

    wire signed [11:0] n_0_0_po_1;
    //weight -32: 8'sb11100000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_2;
    //weight 0: 8'sb00000000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_3;
    //weight 57: 8'sb00111001
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00111001;

    wire signed [11:0] n_0_0_po_4;
    //weight 0: 8'sb00000000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_0_po_5;
    //weight 9: 8'sb00001001
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001001;

    wire signed [11:0] n_0_0_po_6;
    //weight -4: 8'sb11111100
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_7;
    //weight -76: 8'sb10110100
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb10110100;

    wire signed [11:0] n_0_0_po_8;
    //weight 12: 8'sb00001100
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_9;
    //weight 8: 8'sb00001000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_10;
    //weight 28: 8'sb00011100
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00011100;

    wire signed [12:0] n_0_0;
    assign n_0_0 = 1357 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;

    assign out = {n_0_0};

endmodule
