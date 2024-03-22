//weights: [[[61, 62, -63, -61], [69, 70, -70, -68], [-23, -23, 25, 25]], [[-76, 68, -8]]]
//intercepts: [[-7, -298, 75], [19666]]
//act size: [4, 11, 18]
//pred num: 1
module top (inp, out);
input [15:0] inp;
output [18:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 61: 8'sb00111101
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00111101;

    wire signed [11:0] n_0_0_po_1;
    //weight 62: 8'sb00111110
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00111110;

    wire signed [11:0] n_0_0_po_2;
    //weight -63: 8'sb11000001
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11000001;

    wire signed [11:0] n_0_0_po_3;
    //weight -61: 8'sb11000011
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11000011;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -7 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 69: 8'sb01000101
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb01000101;

    wire signed [11:0] n_0_1_po_1;
    //weight 70: 8'sb01000110
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000110;

    wire signed [11:0] n_0_1_po_2;
    //weight -70: 8'sb10111010
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb10111010;

    wire signed [11:0] n_0_1_po_3;
    //weight -68: 8'sb10111100
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10111100;

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
    //weight 25: 8'sb00011001
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00011001;

    wire signed [11:0] n_0_2_po_3;
    //weight 25: 8'sb00011001
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00011001;

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
