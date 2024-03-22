//weights: [[[35, 35, -99, 37], [16, 18, -32, -22], [42, 44, -36, -52]], [[42, -22, 71], [-30, 72, -49], [6, -31, 10]]]
//intercepts: [[-462, -55, 501], [-33844, 29282, -108]]
//act size: [4, 11, 18]
//pred num: 3
module top (inp, predo, out);
input [15:0] inp;
output [56:0] predo;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 35: 8'sb00100011
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100011;

    wire signed [11:0] n_0_0_po_1;
    //weight 35: 8'sb00100011
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00100011;

    wire signed [11:0] n_0_0_po_2;
    //weight -99: 8'sb10011101
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb10011101;

    wire signed [11:0] n_0_0_po_3;
    //weight 37: 8'sb00100101
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100101;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -462 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 16: 8'sb00010000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00010000;

    wire signed [11:0] n_0_1_po_1;
    //weight 18: 8'sb00010010
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010010;

    wire signed [11:0] n_0_1_po_2;
    //weight -32: 8'sb11100000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11100000;

    wire signed [11:0] n_0_1_po_3;
    //weight -22: 8'sb11101010
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101010;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = -55 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 42: 8'sb00101010
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00101010;

    wire signed [11:0] n_0_2_po_1;
    //weight 44: 8'sb00101100
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00101100;

    wire signed [11:0] n_0_2_po_2;
    //weight -36: 8'sb11011100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11011100;

    wire signed [11:0] n_0_2_po_3;
    //weight -52: 8'sb11001100
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11001100;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = 501 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight 42: 8'sb00101010
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00101010;

    wire signed [18:0] n_1_0_po_1;
    //weight -22: 8'sb11101010
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11101010;

    wire signed [18:0] n_1_0_po_2;
    //weight 71: 8'sb01000111
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb01000111;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = -33844 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

// layer: 1 - neuron: 1
    wire signed [18:0] n_1_1_po_0;
    //weight -30: 8'sb11100010
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11100010;

    wire signed [18:0] n_1_1_po_1;
    //weight 72: 8'sb01001000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb01001000;

    wire signed [18:0] n_1_1_po_2;
    //weight -49: 8'sb11001111
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11001111;

    wire signed [18:0] n_1_1_sum;
    assign n_1_1_sum = 29282 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [17:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_1_sum[17:0]);

// layer: 1 - neuron: 2
    wire signed [18:0] n_1_2_po_0;
    //weight 6: 8'sb00000110
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000110;

    wire signed [18:0] n_1_2_po_1;
    //weight -31: 8'sb11100001
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11100001;

    wire signed [18:0] n_1_2_po_2;
    //weight 10: 8'sb00001010
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00001010;

    wire signed [18:0] n_1_2_sum;
    assign n_1_2_sum = -108 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [17:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_2_sum[17:0]);

    assign predo = {n_1_0,n_1_1,n_1_2};
// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [18:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [18:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
