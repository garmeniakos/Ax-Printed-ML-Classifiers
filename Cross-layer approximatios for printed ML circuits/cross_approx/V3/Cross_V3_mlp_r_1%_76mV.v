//weights: [[[32, -55, -8, 48, 60, -112], [-32, 43, -63, -49, 8, -24], [8, -33, -4, 52, 42, -56]], [[49, -4, -66]]]
//intercepts: [[-508, 1292, -575], [8826]]
//act size: [5, 12, 19]
//pred num: 1
module top (inp, out);
input [29:0] inp;
output [19:0] out;

// layer: 0 - neuron: 0
    wire signed [12:0] n_0_0_po_0;
    //weight 32: 8'sb00100000
    assign n_0_0_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00100000;

    wire signed [12:0] n_0_0_po_1;
    //weight -55: 8'sb11001001
    assign n_0_0_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11001001;

    wire signed [12:0] n_0_0_po_2;
    //weight -8: 8'sb11111000
    assign n_0_0_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11111000;

    wire signed [12:0] n_0_0_po_3;
    //weight 48: 8'sb00110000
    assign n_0_0_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00110000;

    wire signed [12:0] n_0_0_po_4;
    //weight 60: 8'sb00111100
    assign n_0_0_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00111100;

    wire signed [12:0] n_0_0_po_5;
    //weight -112: 8'sb10010000
    assign n_0_0_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb10010000;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -508 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [12:0] n_0_1_po_0;
    //weight -32: 8'sb11100000
    assign n_0_1_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11100000;

    wire signed [12:0] n_0_1_po_1;
    //weight 43: 8'sb00101011
    assign n_0_1_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00101011;

    wire signed [12:0] n_0_1_po_2;
    //weight -63: 8'sb11000001
    assign n_0_1_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11000001;

    wire signed [12:0] n_0_1_po_3;
    //weight -49: 8'sb11001111
    assign n_0_1_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11001111;

    wire signed [12:0] n_0_1_po_4;
    //weight 8: 8'sb00001000
    assign n_0_1_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00001000;

    wire signed [12:0] n_0_1_po_5;
    //weight -24: 8'sb11101000
    assign n_0_1_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb11101000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 1292 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [12:0] n_0_2_po_0;
    //weight 8: 8'sb00001000
    assign n_0_2_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00001000;

    wire signed [12:0] n_0_2_po_1;
    //weight -33: 8'sb11011111
    assign n_0_2_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11011111;

    wire signed [12:0] n_0_2_po_2;
    //weight -4: 8'sb11111100
    assign n_0_2_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11111100;

    wire signed [12:0] n_0_2_po_3;
    //weight 52: 8'sb00110100
    assign n_0_2_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00110100;

    wire signed [12:0] n_0_2_po_4;
    //weight 42: 8'sb00101010
    assign n_0_2_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00101010;

    wire signed [12:0] n_0_2_po_5;
    //weight -56: 8'sb11001000
    assign n_0_2_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb11001000;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -575 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight 49: 8'sb00110001
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00110001;

    wire signed [19:0] n_1_0_po_1;
    //weight -4: 8'sb11111100
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111100;

    wire signed [19:0] n_1_0_po_2;
    //weight -66: 8'sb10111110
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb10111110;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 8826 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

    assign out = {n_1_0};

endmodule
