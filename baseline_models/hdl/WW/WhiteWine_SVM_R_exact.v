//weights: [[4, -29, -3, 59, -2, 13, -6, -74, 11, 10, 25]]
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
    //weight -29: 8'sb11100011
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100011;

    wire signed [11:0] n_0_0_po_2;
    //weight -3: 8'sb11111101
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_3;
    //weight 59: 8'sb00111011
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00111011;

    wire signed [11:0] n_0_0_po_4;
    //weight -2: 8'sb11111110
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111110;

    wire signed [11:0] n_0_0_po_5;
    //weight 13: 8'sb00001101
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001101;

    wire signed [11:0] n_0_0_po_6;
    //weight -6: 8'sb11111010
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111010;

    wire signed [11:0] n_0_0_po_7;
    //weight -74: 8'sb10110110
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb10110110;

    wire signed [11:0] n_0_0_po_8;
    //weight 11: 8'sb00001011
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001011;

    wire signed [11:0] n_0_0_po_9;
    //weight 10: 8'sb00001010
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001010;

    wire signed [11:0] n_0_0_po_10;
    //weight 25: 8'sb00011001
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00011001;

    wire signed [12:0] n_0_0;
    assign n_0_0 = 1357 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;

    assign out = {n_0_0};

endmodule
