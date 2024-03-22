//weights: [[-73, -73, 73, 73]]
//intercepts: [1170]
//act size: [4, 13]
//pred num: 1
module top (inp, out);
input [15:0] inp;
output [12:0] out;

// classifier: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -73: 8'sb10110111
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb10110111;

    wire signed [11:0] n_0_0_po_1;
    //weight -73: 8'sb10110111
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb10110111;

    wire signed [11:0] n_0_0_po_2;
    //weight 73: 8'sb01001001
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb01001001;

    wire signed [11:0] n_0_0_po_3;
    //weight 73: 8'sb01001001
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01001001;

    wire signed [12:0] n_0_0;
    assign n_0_0 = 1170 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;

    assign out = {n_0_0};

endmodule
