//weights: [[[-34, 16, 1, -32, 15, -4, 23, 81, -27, -10, -33], [-33, -28, -4, 59, 4, 10, 27, -40, -19, 0, -12], [-12, -35, 7, 8, 19, 3, -1, 0, -6, -1, 15], [8, -6, 1, -4, -6, -4, 7, 0, 7, -7, 0]], [[28, -34, -2, -4], [48, -48, 13, 6], [36, -10, -7, -7], [10, 8, 30, 2], [-29, 33, -5, 11], [-34, 44, -10, 9], [-60, 6, 2, -3]]]
//intercepts: [[720, 776, 85, -129], [-1009, 3886, 1888, 4517, 3219, -6654, -967]]
//act size: [4, 12, 19]
//pred num: 7
module top (inp, predo, out);
input [43:0] inp;
output [139:0] predo;
output [2:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -34: 8'sb11011110
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11011110;

    wire signed [11:0] n_0_0_po_1;
    //weight 16: 8'sb00010000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_2;
    //weight 1: 8'sb00000001
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000001;

    wire signed [11:0] n_0_0_po_3;
    //weight -32: 8'sb11100000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_4;
    //weight 15: 8'sb00001111
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00001111;

    wire signed [11:0] n_0_0_po_5;
    //weight -4: 8'sb11111100
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_6;
    //weight 23: 8'sb00010111
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00010111;

    wire signed [11:0] n_0_0_po_7;
    //weight 81: 8'sb01010001
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb01010001;

    wire signed [11:0] n_0_0_po_8;
    //weight -27: 8'sb11100101
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11100101;

    wire signed [11:0] n_0_0_po_9;
    //weight -10: 8'sb11110110
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11110110;

    wire signed [11:0] n_0_0_po_10;
    //weight -33: 8'sb11011111
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11011111;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 720 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -33: 8'sb11011111
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11011111;

    wire signed [11:0] n_0_1_po_1;
    //weight -28: 8'sb11100100
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100100;

    wire signed [11:0] n_0_1_po_2;
    //weight -4: 8'sb11111100
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_3;
    //weight 59: 8'sb00111011
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00111011;

    wire signed [11:0] n_0_1_po_4;
    //weight 4: 8'sb00000100
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000100;

    wire signed [11:0] n_0_1_po_5;
    //weight 10: 8'sb00001010
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00001010;

    wire signed [11:0] n_0_1_po_6;
    //weight 27: 8'sb00011011
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00011011;

    wire signed [11:0] n_0_1_po_7;
    //weight -40: 8'sb11011000
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11011000;

    wire signed [11:0] n_0_1_po_8;
    //weight -19: 8'sb11101101
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101101;

    wire signed [11:0] n_0_1_po_9;
    //weight 0: 8'sb00000000
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_10;
    //weight -12: 8'sb11110100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110100;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 776 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -12: 8'sb11110100
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110100;

    wire signed [11:0] n_0_2_po_1;
    //weight -35: 8'sb11011101
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11011101;

    wire signed [11:0] n_0_2_po_2;
    //weight 7: 8'sb00000111
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000111;

    wire signed [11:0] n_0_2_po_3;
    //weight 8: 8'sb00001000
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001000;

    wire signed [11:0] n_0_2_po_4;
    //weight 19: 8'sb00010011
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010011;

    wire signed [11:0] n_0_2_po_5;
    //weight 3: 8'sb00000011
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000011;

    wire signed [11:0] n_0_2_po_6;
    //weight -1: 8'sb11111111
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_7;
    //weight 0: 8'sb00000000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_8;
    //weight -6: 8'sb11111010
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111010;

    wire signed [11:0] n_0_2_po_9;
    //weight -1: 8'sb11111111
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_10;
    //weight 15: 8'sb00001111
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00001111;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = 85 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 0 - neuron: 3
    wire signed [11:0] n_0_3_po_0;
    //weight 8: 8'sb00001000
    assign n_0_3_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001000;

    wire signed [11:0] n_0_3_po_1;
    //weight -6: 8'sb11111010
    assign n_0_3_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111010;

    wire signed [11:0] n_0_3_po_2;
    //weight 1: 8'sb00000001
    assign n_0_3_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000001;

    wire signed [11:0] n_0_3_po_3;
    //weight -4: 8'sb11111100
    assign n_0_3_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111100;

    wire signed [11:0] n_0_3_po_4;
    //weight -6: 8'sb11111010
    assign n_0_3_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111010;

    wire signed [11:0] n_0_3_po_5;
    //weight -4: 8'sb11111100
    assign n_0_3_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_3_po_6;
    //weight 7: 8'sb00000111
    assign n_0_3_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000111;

    wire signed [11:0] n_0_3_po_7;
    //weight 0: 8'sb00000000
    assign n_0_3_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000000;

    wire signed [11:0] n_0_3_po_8;
    //weight 7: 8'sb00000111
    assign n_0_3_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000111;

    wire signed [11:0] n_0_3_po_9;
    //weight -7: 8'sb11111001
    assign n_0_3_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111001;

    wire signed [11:0] n_0_3_po_10;
    //weight 0: 8'sb00000000
    assign n_0_3_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = -129 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_6 + n_0_3_po_7 + n_0_3_po_8 + n_0_3_po_9 + n_0_3_po_10;
    //relu
    wire [11:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_3_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight 28: 8'sb00011100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011100;

    wire signed [19:0] n_1_0_po_1;
    //weight -34: 8'sb11011110
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11011110;

    wire signed [19:0] n_1_0_po_2;
    //weight -2: 8'sb11111110
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111110;

    wire signed [19:0] n_1_0_po_3;
    //weight -4: 8'sb11111100
    assign n_1_0_po_3 = $signed({1'b0, n_0_3}) * 8'sb11111100;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = -1009 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2 + n_1_0_po_3;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight 48: 8'sb00110000
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00110000;

    wire signed [19:0] n_1_1_po_1;
    //weight -48: 8'sb11010000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb11010000;

    wire signed [19:0] n_1_1_po_2;
    //weight 13: 8'sb00001101
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00001101;

    wire signed [19:0] n_1_1_po_3;
    //weight 6: 8'sb00000110
    assign n_1_1_po_3 = $signed({1'b0, n_0_3}) * 8'sb00000110;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = 3886 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2 + n_1_1_po_3;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight 36: 8'sb00100100
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00100100;

    wire signed [19:0] n_1_2_po_1;
    //weight -10: 8'sb11110110
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11110110;

    wire signed [19:0] n_1_2_po_2;
    //weight -7: 8'sb11111001
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111001;

    wire signed [19:0] n_1_2_po_3;
    //weight -7: 8'sb11111001
    assign n_1_2_po_3 = $signed({1'b0, n_0_3}) * 8'sb11111001;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = 1888 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2 + n_1_2_po_3;
    //relu
    wire [18:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_2_sum[18:0]);

// layer: 1 - neuron: 3
    wire signed [19:0] n_1_3_po_0;
    //weight 10: 8'sb00001010
    assign n_1_3_po_0 = $signed({1'b0, n_0_0}) * 8'sb00001010;

    wire signed [19:0] n_1_3_po_1;
    //weight 8: 8'sb00001000
    assign n_1_3_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001000;

    wire signed [19:0] n_1_3_po_2;
    //weight 30: 8'sb00011110
    assign n_1_3_po_2 = $signed({1'b0, n_0_2}) * 8'sb00011110;

    wire signed [19:0] n_1_3_po_3;
    //weight 2: 8'sb00000010
    assign n_1_3_po_3 = $signed({1'b0, n_0_3}) * 8'sb00000010;

    wire signed [19:0] n_1_3_sum;
    assign n_1_3_sum = 4517 + n_1_3_po_0 + n_1_3_po_1 + n_1_3_po_2 + n_1_3_po_3;
    //relu
    wire [18:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_3_sum[18:0]);

// layer: 1 - neuron: 4
    wire signed [19:0] n_1_4_po_0;
    //weight -29: 8'sb11100011
    assign n_1_4_po_0 = $signed({1'b0, n_0_0}) * 8'sb11100011;

    wire signed [19:0] n_1_4_po_1;
    //weight 33: 8'sb00100001
    assign n_1_4_po_1 = $signed({1'b0, n_0_1}) * 8'sb00100001;

    wire signed [19:0] n_1_4_po_2;
    //weight -5: 8'sb11111011
    assign n_1_4_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111011;

    wire signed [19:0] n_1_4_po_3;
    //weight 11: 8'sb00001011
    assign n_1_4_po_3 = $signed({1'b0, n_0_3}) * 8'sb00001011;

    wire signed [19:0] n_1_4_sum;
    assign n_1_4_sum = 3219 + n_1_4_po_0 + n_1_4_po_1 + n_1_4_po_2 + n_1_4_po_3;
    //relu
    wire [18:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_4_sum[18:0]);

// layer: 1 - neuron: 5
    wire signed [19:0] n_1_5_po_0;
    //weight -34: 8'sb11011110
    assign n_1_5_po_0 = $signed({1'b0, n_0_0}) * 8'sb11011110;

    wire signed [19:0] n_1_5_po_1;
    //weight 44: 8'sb00101100
    assign n_1_5_po_1 = $signed({1'b0, n_0_1}) * 8'sb00101100;

    wire signed [19:0] n_1_5_po_2;
    //weight -10: 8'sb11110110
    assign n_1_5_po_2 = $signed({1'b0, n_0_2}) * 8'sb11110110;

    wire signed [19:0] n_1_5_po_3;
    //weight 9: 8'sb00001001
    assign n_1_5_po_3 = $signed({1'b0, n_0_3}) * 8'sb00001001;

    wire signed [19:0] n_1_5_sum;
    assign n_1_5_sum = -6654 + n_1_5_po_0 + n_1_5_po_1 + n_1_5_po_2 + n_1_5_po_3;
    //relu
    wire [18:0] n_1_5;
    assign n_1_5 = (n_1_5_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_5_sum[18:0]);

// layer: 1 - neuron: 6
    wire signed [19:0] n_1_6_po_0;
    //weight -60: 8'sb11000100
    assign n_1_6_po_0 = $signed({1'b0, n_0_0}) * 8'sb11000100;

    wire signed [19:0] n_1_6_po_1;
    //weight 6: 8'sb00000110
    assign n_1_6_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000110;

    wire signed [19:0] n_1_6_po_2;
    //weight 2: 8'sb00000010
    assign n_1_6_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000010;

    wire signed [19:0] n_1_6_po_3;
    //weight -3: 8'sb11111101
    assign n_1_6_po_3 = $signed({1'b0, n_0_3}) * 8'sb11111101;

    wire signed [19:0] n_1_6_sum;
    assign n_1_6_sum = -967 + n_1_6_po_0 + n_1_6_po_1 + n_1_6_po_2 + n_1_6_po_3;
    //relu
    wire [18:0] n_1_6;
    assign n_1_6 = (n_1_6_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_6_sum[18:0]);

    assign predo = {n_1_0,n_1_1,n_1_2,n_1_3,n_1_4,n_1_5,n_1_6};
// argmax: 7 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6
    //comp level 0
    wire cmp_0_0;
    wire [19:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 > n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [19:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 > n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [19:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 > n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [19:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 > argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [19:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 > n_1_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : n_1_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : 3'b110;

    //comp level 2
    wire cmp_2_0;
    wire [19:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 > argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    assign out = argmax_idx_2_0;

endmodule
