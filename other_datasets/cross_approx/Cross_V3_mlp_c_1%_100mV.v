//weights: [[[20, -30, 0, 32, 40, 8], [-4, -8, 0, -4, -4, 0], [0, 8, 8, -16, -16, 108]], [[-20, 4, -36], [20, 0, 52], [8, 0, -16]]]
//intercepts: [[28, -69, 83], [18608, -19355, 1983]]
//act size: [5, 12, 19]
//pred num: 3
module top (inp, predo, out);
input [29:0] inp;
output [59:0] predo;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [12:0] n_0_0_po_0;
    //weight 20: 8'sb00010100
    assign n_0_0_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00010100;

    wire signed [12:0] n_0_0_po_1;
    //weight -30: 8'sb11100010
    assign n_0_0_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11100010;

    wire signed [12:0] n_0_0_po_2;
    //weight 0: 8'sb00000000
    assign n_0_0_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00000000;

    wire signed [12:0] n_0_0_po_3;
    //weight 32: 8'sb00100000
    assign n_0_0_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00100000;

    wire signed [12:0] n_0_0_po_4;
    //weight 40: 8'sb00101000
    assign n_0_0_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00101000;

    wire signed [12:0] n_0_0_po_5;
    //weight 8: 8'sb00001000
    assign n_0_0_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb00001000;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 28 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [12:0] n_0_1_po_0;
    //weight -4: 8'sb11111100
    assign n_0_1_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11111100;

    wire signed [12:0] n_0_1_po_1;
    //weight -8: 8'sb11111000
    assign n_0_1_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11111000;

    wire signed [12:0] n_0_1_po_2;
    //weight 0: 8'sb00000000
    assign n_0_1_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00000000;

    wire signed [12:0] n_0_1_po_3;
    //weight -4: 8'sb11111100
    assign n_0_1_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11111100;

    wire signed [12:0] n_0_1_po_4;
    //weight -4: 8'sb11111100
    assign n_0_1_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11111100;

    wire signed [12:0] n_0_1_po_5;
    //weight 0: 8'sb00000000
    assign n_0_1_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb00000000;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -69 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [12:0] n_0_2_po_0;
    //weight 0: 8'sb00000000
    assign n_0_2_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00000000;

    wire signed [12:0] n_0_2_po_1;
    //weight 8: 8'sb00001000
    assign n_0_2_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00001000;

    wire signed [12:0] n_0_2_po_2;
    //weight 8: 8'sb00001000
    assign n_0_2_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00001000;

    wire signed [12:0] n_0_2_po_3;
    //weight -16: 8'sb11110000
    assign n_0_2_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11110000;

    wire signed [12:0] n_0_2_po_4;
    //weight -16: 8'sb11110000
    assign n_0_2_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11110000;

    wire signed [12:0] n_0_2_po_5;
    //weight 108: 8'sb01101100
    assign n_0_2_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb01101100;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = 83 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight -20: 8'sb11101100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11101100;

    wire signed [19:0] n_1_0_po_1;
    //weight 4: 8'sb00000100
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000100;

    wire signed [19:0] n_1_0_po_2;
    //weight -36: 8'sb11011100
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11011100;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 18608 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight 20: 8'sb00010100
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00010100;

    wire signed [19:0] n_1_1_po_1;
    //weight 0: 8'sb00000000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000000;

    wire signed [19:0] n_1_1_po_2;
    //weight 52: 8'sb00110100
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00110100;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = -19355 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight 8: 8'sb00001000
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00001000;

    wire signed [19:0] n_1_2_po_1;
    //weight 0: 8'sb00000000
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000000;

    wire signed [19:0] n_1_2_po_2;
    //weight -16: 8'sb11110000
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb11110000;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = 1983 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [18:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_2_sum[18:0]);

    assign predo = {n_1_0,n_1_1,n_1_2};
// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [19:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [19:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
