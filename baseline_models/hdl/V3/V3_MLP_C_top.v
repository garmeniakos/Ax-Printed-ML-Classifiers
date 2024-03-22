//weights: [[[19, -26, 0, 34, 37, 11], [-4, -5, -3, 0, -5, 1], [-3, 10, 5, -12, -17, 110]], [[-20, 8, -37], [24, -2, 55], [7, 3, -17]]]
//intercepts: [[28, -69, 83], [18608, -19355, 1983]]
//act size: [5, 12, 19]
//pred num: 3
module top (inp, predo, out);
input [29:0] inp;
output [59:0] predo;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [12:0] n_0_0_po_0;
    //weight 19: 8'sb00010011
    assign n_0_0_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb00010011;

    wire signed [12:0] n_0_0_po_1;
    //weight -26: 8'sb11100110
    assign n_0_0_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11100110;

    wire signed [12:0] n_0_0_po_2;
    //weight 0: 8'sb00000000
    assign n_0_0_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00000000;

    wire signed [12:0] n_0_0_po_3;
    //weight 34: 8'sb00100010
    assign n_0_0_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00100010;

    wire signed [12:0] n_0_0_po_4;
    //weight 37: 8'sb00100101
    assign n_0_0_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb00100101;

    wire signed [12:0] n_0_0_po_5;
    //weight 11: 8'sb00001011
    assign n_0_0_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb00001011;

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
    //weight -5: 8'sb11111011
    assign n_0_1_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb11111011;

    wire signed [12:0] n_0_1_po_2;
    //weight -3: 8'sb11111101
    assign n_0_1_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb11111101;

    wire signed [12:0] n_0_1_po_3;
    //weight 0: 8'sb00000000
    assign n_0_1_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb00000000;

    wire signed [12:0] n_0_1_po_4;
    //weight -5: 8'sb11111011
    assign n_0_1_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11111011;

    wire signed [12:0] n_0_1_po_5;
    //weight 1: 8'sb00000001
    assign n_0_1_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb00000001;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -69 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [12:0] n_0_2_po_0;
    //weight -3: 8'sb11111101
    assign n_0_2_po_0 = $signed({1'b0, inp[4:0]}) * 8'sb11111101;

    wire signed [12:0] n_0_2_po_1;
    //weight 10: 8'sb00001010
    assign n_0_2_po_1 = $signed({1'b0, inp[9:5]}) * 8'sb00001010;

    wire signed [12:0] n_0_2_po_2;
    //weight 5: 8'sb00000101
    assign n_0_2_po_2 = $signed({1'b0, inp[14:10]}) * 8'sb00000101;

    wire signed [12:0] n_0_2_po_3;
    //weight -12: 8'sb11110100
    assign n_0_2_po_3 = $signed({1'b0, inp[19:15]}) * 8'sb11110100;

    wire signed [12:0] n_0_2_po_4;
    //weight -17: 8'sb11101111
    assign n_0_2_po_4 = $signed({1'b0, inp[24:20]}) * 8'sb11101111;

    wire signed [12:0] n_0_2_po_5;
    //weight 110: 8'sb01101110
    assign n_0_2_po_5 = $signed({1'b0, inp[29:25]}) * 8'sb01101110;

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
    //weight 8: 8'sb00001000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001000;

    wire signed [19:0] n_1_0_po_2;
    //weight -37: 8'sb11011011
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11011011;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 18608 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight 24: 8'sb00011000
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011000;

    wire signed [19:0] n_1_1_po_1;
    //weight -2: 8'sb11111110
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111110;

    wire signed [19:0] n_1_1_po_2;
    //weight 55: 8'sb00110111
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00110111;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = -19355 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight 7: 8'sb00000111
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000111;

    wire signed [19:0] n_1_2_po_1;
    //weight 3: 8'sb00000011
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000011;

    wire signed [19:0] n_1_2_po_2;
    //weight -17: 8'sb11101111
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb11101111;

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
