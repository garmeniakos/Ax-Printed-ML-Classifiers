//weights: [[5, -61, -13, 36, 88, -65]]
//intercepts: [1063]
//act size: [4, 13]
//pred num: 1
module top (inp, out);
input [23:0] inp;
output [12:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 5: 8'sb00000101
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000101;

    wire signed [11:0] n_0_0_po_1;
    //weight -61: 8'sb11000011
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11000011;

    wire signed [11:0] n_0_0_po_2;
    //weight -13: 8'sb11110011
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110011;

    wire signed [11:0] n_0_0_po_3;
    //weight 36: 8'sb00100100
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100100;

    wire signed [11:0] n_0_0_po_4;
    //weight 88: 8'sb01011000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb01011000;

    wire signed [11:0] n_0_0_po_5;
    //weight -65: 8'sb10111111
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb10111111;

    wire signed [12:0] n_0_0;
    assign n_0_0 = 1063 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;

    assign out = {n_0_0};

endmodule
