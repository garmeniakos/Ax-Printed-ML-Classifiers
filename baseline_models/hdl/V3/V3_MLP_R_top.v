//weights: [[[36, -51, -8, 48, 56, -116], [-29, 46, -63, -51, 6, -26], [12, -32, -3, 51, 40, -59]], [[53, -4, -70]]]
//intercepts: [[-254, 646, -287], [4413]]
//act size: [4, 11, 18]
//pred num: 1
module top (inp, out);
input [23:0] inp;
output [18:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 36: 8'sb00100100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100100;

    wire signed [11:0] n_0_0_po_1;
    //weight -51: 8'sb11001101
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11001101;

    wire signed [11:0] n_0_0_po_2;
    //weight -8: 8'sb11111000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_3;
    //weight 48: 8'sb00110000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00110000;

    wire signed [11:0] n_0_0_po_4;
    //weight 56: 8'sb00111000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00111000;

    wire signed [11:0] n_0_0_po_5;
    //weight -116: 8'sb10001100
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb10001100;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -254 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -29: 8'sb11100011
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100011;

    wire signed [11:0] n_0_1_po_1;
    //weight 46: 8'sb00101110
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00101110;

    wire signed [11:0] n_0_1_po_2;
    //weight -63: 8'sb11000001
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11000001;

    wire signed [11:0] n_0_1_po_3;
    //weight -51: 8'sb11001101
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11001101;

    wire signed [11:0] n_0_1_po_4;
    //weight 6: 8'sb00000110
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000110;

    wire signed [11:0] n_0_1_po_5;
    //weight -26: 8'sb11100110
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11100110;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = 646 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 12: 8'sb00001100
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001100;

    wire signed [11:0] n_0_2_po_1;
    //weight -32: 8'sb11100000
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100000;

    wire signed [11:0] n_0_2_po_2;
    //weight -3: 8'sb11111101
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111101;

    wire signed [11:0] n_0_2_po_3;
    //weight 51: 8'sb00110011
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00110011;

    wire signed [11:0] n_0_2_po_4;
    //weight 40: 8'sb00101000
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00101000;

    wire signed [11:0] n_0_2_po_5;
    //weight -59: 8'sb11000101
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11000101;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = -287 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight 53: 8'sb00110101
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00110101;

    wire signed [18:0] n_1_0_po_1;
    //weight -4: 8'sb11111100
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111100;

    wire signed [18:0] n_1_0_po_2;
    //weight -70: 8'sb10111010
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb10111010;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = 4413 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

    assign out = {n_1_0};

endmodule
