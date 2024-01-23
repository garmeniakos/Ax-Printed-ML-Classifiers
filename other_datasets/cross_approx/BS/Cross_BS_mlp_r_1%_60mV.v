//weights: [[[64, 64, -64, -64], [72, 72, -73, -72], [-23, -23, 28, 24]], [[-76, 68, -8]]]
//intercepts: [[-7, -298, 75], [19666]]
//act size: [4, 11, 18]
//pred num: 1
module top (inp, out);
input [15:0] inp;
output [18:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 64: 8'sb01000000
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_1;
    //weight 64: 8'sb01000000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_2;
    //weight -64: 8'sb11000000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11000000;

    wire signed [11:0] n_0_0_po_3;
    //weight -64: 8'sb11000000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11000000;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -7 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 72: 8'sb01001000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb01001000;

    wire signed [11:0] n_0_1_po_1;
    //weight 72: 8'sb01001000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01001000;

    wire signed [11:0] n_0_1_po_2;
    //weight -73: 8'sb10110111
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb10110111;

    wire signed [11:0] n_0_1_po_3;
    //weight -72: 8'sb10111000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10111000;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = -298 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -23: 8'sb11101001
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101001;

    wire signed [11:0] n_0_2_po_1;
    //weight -23: 8'sb11101001
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11101001;

    wire signed [11:0] n_0_2_po_2;
    //weight 28: 8'sb00011100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00011100;

    wire signed [11:0] n_0_2_po_3;
    //weight 24: 8'sb00011000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = 75 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight -76: 8'sb10110100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb10110100;

    wire signed [18:0] n_1_0_po_1;
    //weight 68: 8'sb01000100
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb01000100;

    wire signed [18:0] n_1_0_po_2;
    //weight -8: 8'sb11111000
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111000;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = 19666 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

    assign out = {n_1_0};

endmodule
