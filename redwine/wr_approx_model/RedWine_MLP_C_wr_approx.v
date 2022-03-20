//weights: [[[-12, -66, -24, -23, -16, 16, -8, 32, -24, 12, 42], [-23, 0, 0, -16, 8, 0, 24, 24, -16, -24, -18]], [[-72, 0], [-16, 8], [2, 52], [18, 17], [32, -24], [28, -56]]]
//intercepts: [[468, 342], [5452, 4388, 1284, 4148, 350, -5639]]
//act size: [4, 11, 18]
//pred num: 6
module top (inp, predo, out);
input [43:0] inp;
output [113:0] predo;
output [2:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -12: 8'sb11110100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_1;
    //weight -66: 8'sb10111110
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb10111110;

    wire signed [11:0] n_0_0_po_2;
    //weight -24: 8'sb11101000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_3;
    //weight -23: 8'sb11101001
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101001;

    wire signed [11:0] n_0_0_po_4;
    //weight -16: 8'sb11110000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_5;
    //weight 16: 8'sb00010000
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_6;
    //weight -8: 8'sb11111000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_7;
    //weight 32: 8'sb00100000
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00100000;

    wire signed [11:0] n_0_0_po_8;
    //weight -24: 8'sb11101000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101000;

    wire signed [11:0] n_0_0_po_9;
    //weight 12: 8'sb00001100
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_10;
    //weight 42: 8'sb00101010
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00101010;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = 468 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -23: 8'sb11101001
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101001;

    wire signed [11:0] n_0_1_po_1;
    //weight 0: 8'sb00000000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_2;
    //weight 0: 8'sb00000000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_3;
    //weight -16: 8'sb11110000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110000;

    wire signed [11:0] n_0_1_po_4;
    //weight 8: 8'sb00001000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001000;

    wire signed [11:0] n_0_1_po_5;
    //weight 0: 8'sb00000000
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_6;
    //weight 24: 8'sb00011000
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_7;
    //weight 24: 8'sb00011000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00011000;

    wire signed [11:0] n_0_1_po_8;
    //weight -16: 8'sb11110000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110000;

    wire signed [11:0] n_0_1_po_9;
    //weight -24: 8'sb11101000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11101000;

    wire signed [11:0] n_0_1_po_10;
    //weight -18: 8'sb11101110
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11101110;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = 342 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight -72: 8'sb10111000
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb10111000;

    wire signed [18:0] n_1_0_po_1;
    //weight 0: 8'sb00000000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000000;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = 5452 + n_1_0_po_0 + n_1_0_po_1;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

// layer: 1 - neuron: 1
    wire signed [18:0] n_1_1_po_0;
    //weight -16: 8'sb11110000
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11110000;

    wire signed [18:0] n_1_1_po_1;
    //weight 8: 8'sb00001000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001000;

    wire signed [18:0] n_1_1_sum;
    assign n_1_1_sum = 4388 + n_1_1_po_0 + n_1_1_po_1;
    //relu
    wire [17:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_1_sum[17:0]);

// layer: 1 - neuron: 2
    wire signed [18:0] n_1_2_po_0;
    //weight 2: 8'sb00000010
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000010;

    wire signed [18:0] n_1_2_po_1;
    //weight 52: 8'sb00110100
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00110100;

    wire signed [18:0] n_1_2_sum;
    assign n_1_2_sum = 1284 + n_1_2_po_0 + n_1_2_po_1;
    //relu
    wire [17:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_2_sum[17:0]);

// layer: 1 - neuron: 3
    wire signed [18:0] n_1_3_po_0;
    //weight 18: 8'sb00010010
    assign n_1_3_po_0 = $signed({1'b0, n_0_0}) * 8'sb00010010;

    wire signed [18:0] n_1_3_po_1;
    //weight 17: 8'sb00010001
    assign n_1_3_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010001;

    wire signed [18:0] n_1_3_sum;
    assign n_1_3_sum = 4148 + n_1_3_po_0 + n_1_3_po_1;
    //relu
    wire [17:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_3_sum[17:0]);

// layer: 1 - neuron: 4
    wire signed [18:0] n_1_4_po_0;
    //weight 32: 8'sb00100000
    assign n_1_4_po_0 = $signed({1'b0, n_0_0}) * 8'sb00100000;

    wire signed [18:0] n_1_4_po_1;
    //weight -24: 8'sb11101000
    assign n_1_4_po_1 = $signed({1'b0, n_0_1}) * 8'sb11101000;

    wire signed [18:0] n_1_4_sum;
    assign n_1_4_sum = 350 + n_1_4_po_0 + n_1_4_po_1;
    //relu
    wire [17:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_4_sum[17:0]);

// layer: 1 - neuron: 5
    wire signed [18:0] n_1_5_po_0;
    //weight 28: 8'sb00011100
    assign n_1_5_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011100;

    wire signed [18:0] n_1_5_po_1;
    //weight -56: 8'sb11001000
    assign n_1_5_po_1 = $signed({1'b0, n_0_1}) * 8'sb11001000;

    wire signed [18:0] n_1_5_sum;
    assign n_1_5_sum = -5639 + n_1_5_po_0 + n_1_5_po_1;
    //relu
    wire [17:0] n_1_5;
    assign n_1_5 = (n_1_5_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_5_sum[17:0]);

    assign predo = {n_1_0,n_1_1,n_1_2,n_1_3,n_1_4,n_1_5};
// argmax: 6 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5
    //comp level 0
    wire cmp_0_0;
    wire [18:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 > n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [18:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 > n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [18:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 > n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [18:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 > argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    //comp level 2
    wire cmp_2_0;
    wire [18:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 > argmax_val_0_4 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_0_4;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_0_4;

    assign out = argmax_idx_2_0;

endmodule
