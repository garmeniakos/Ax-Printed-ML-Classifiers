//AX Config: [0.0, 0.16, 1, 0.403, 0.8793]
//THL0: 0.0
//THL1: 0.16
//MSB: 1
//weights: [[[0, 0, 1, 0, 1, 2, 4, 4, 2, 4, 0, 0, -1, 0, -1, 0, -2, -2, -2, 2, 0], [-4, 8, 2, 4, 0, 0, 0, -4, 1, -4, -1, 4, -2, -1, -1, -2, 0, 0, -1, -1, 2], [0, -4, 1, -1, 0, 0, 2, 2, -1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 2, 2, 0]], [[-4, 0, -4], [-4, -4, 4], [4, -2, 1]]]
//intercepts: [[-6, 2, -35], [222, 43, 9]]
//ax width : [[[(0, 0), (0, 0), (4, 4), (0, 0), (4, 0), (5, 5), (6, 0), (6, 0), (5, 0), (6, 0), (0, 0), (0, 0), (4, 0), (0, 0), (4, 0), (0, 0), (5, 0), (5, 0), (5, 0), (5, 0), (0, 0)], [(6, 0), (7, 0), (5, 5), (6, 0), (0, 0), (0, 0), (0, 0), (6, 0), (4, 0), (6, 0), (4, 0), (6, 0), (5, 0), (4, 0), (4, 0), (5, 0), (0, 0), (0, 0), (4, 0), (4, 0), (5, 0)], [(0, 0), (6, 0), (4, 4), (4, 0), (0, 0), (0, 0), (5, 0), (5, 0), (4, 0), (4, 0), (0, 0), (0, 0), (0, 0), (5, 0), (0, 0), (0, 0), (0, 0), (0, 0), (5, 0), (5, 0), (0, 0)]], [[(11, 0), (0, 0), (10, 0)], [(11, 0), (11, 0), (10, 0)], [(11, 0), (10, 0), (8, 0)]]]
module top (inp, out);
input [83:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_0_po_2, n_0_0_po_2_ax;
    assign n_0_0_po_2 = $unsigned(inp[11:8]) * $unsigned(1'b1);
    assign n_0_0_po_2_ax = {n_0_0_po_2[3], {3{1'b0}}};

    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_0_po_4, n_0_0_po_4_ax;
    assign n_0_0_po_4 = $unsigned(inp[19:16]) * $unsigned(1'b1);
    assign n_0_0_po_4_ax = n_0_0_po_4[3:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_5, n_0_0_po_5_ax;
    assign n_0_0_po_5 = $unsigned(inp[23:20]) * $unsigned(2'b10);
    assign n_0_0_po_5_ax = {n_0_0_po_5[4], {4{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_0_po_6, n_0_0_po_6_ax;
    assign n_0_0_po_6 = $unsigned(inp[27:24]) * $unsigned(3'b100);
    assign n_0_0_po_6_ax = n_0_0_po_6[5:0];

    //weight 4 : 3'b100
    wire [5:0] n_0_0_po_7, n_0_0_po_7_ax;
    assign n_0_0_po_7 = $unsigned(inp[31:28]) * $unsigned(3'b100);
    assign n_0_0_po_7_ax = n_0_0_po_7[5:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_8, n_0_0_po_8_ax;
    assign n_0_0_po_8 = $unsigned(inp[35:32]) * $unsigned(2'b10);
    assign n_0_0_po_8_ax = n_0_0_po_8[4:0];

    //weight 4 : 3'b100
    wire [5:0] n_0_0_po_9, n_0_0_po_9_ax;
    assign n_0_0_po_9 = $unsigned(inp[39:36]) * $unsigned(3'b100);
    assign n_0_0_po_9_ax = n_0_0_po_9[5:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_0_po_12, n_0_0_po_12_ax;
    assign n_0_0_po_12 = $unsigned(inp[51:48]) * $unsigned(1'b1);
    assign n_0_0_po_12_ax = n_0_0_po_12[3:0];

    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_0_po_14, n_0_0_po_14_ax;
    assign n_0_0_po_14 = $unsigned(inp[59:56]) * $unsigned(1'b1);
    assign n_0_0_po_14_ax = n_0_0_po_14[3:0];

    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_16, n_0_0_po_16_ax;
    assign n_0_0_po_16 = $unsigned(inp[67:64]) * $unsigned(2'b10);
    assign n_0_0_po_16_ax = n_0_0_po_16[4:0];

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_17, n_0_0_po_17_ax;
    assign n_0_0_po_17 = $unsigned(inp[71:68]) * $unsigned(2'b10);
    assign n_0_0_po_17_ax = n_0_0_po_17[4:0];

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_18, n_0_0_po_18_ax;
    assign n_0_0_po_18 = $unsigned(inp[75:72]) * $unsigned(2'b10);
    assign n_0_0_po_18_ax = n_0_0_po_18[4:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_19, n_0_0_po_19_ax;
    assign n_0_0_po_19 = $unsigned(inp[79:76]) * $unsigned(2'b10);
    assign n_0_0_po_19_ax = n_0_0_po_19[4:0];

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [8:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = n_0_0_po_2_ax + n_0_0_po_4_ax + n_0_0_po_5_ax + n_0_0_po_6_ax + n_0_0_po_7_ax + n_0_0_po_8_ax + n_0_0_po_9_ax + n_0_0_po_19_ax;
    wire [7:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = 3'b110 + n_0_0_po_12_ax + n_0_0_po_14_ax + n_0_0_po_16_ax + n_0_0_po_17_ax + n_0_0_po_18_ax;
    wire signed [9:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) + $signed({1'b1,~n_0_0_sum_neg});

    //relu
    wire [8:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({9{1'b0}}) : $unsigned(n_0_0_sum[8:0]);

// layer: 0 - neuron: 1
    //weight abs(-4) : 3'b100
    wire [5:0] n_0_1_po_0, n_0_1_po_0_ax;
    assign n_0_1_po_0 = $unsigned(inp[3:0]) * $unsigned(3'b100);
    assign n_0_1_po_0_ax = n_0_1_po_0[5:0];

    //weight 8 : 4'b1000
    wire [6:0] n_0_1_po_1, n_0_1_po_1_ax;
    assign n_0_1_po_1 = $unsigned(inp[7:4]) * $unsigned(4'b1000);
    assign n_0_1_po_1_ax = n_0_1_po_1[6:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_1_po_2, n_0_1_po_2_ax;
    assign n_0_1_po_2 = $unsigned(inp[11:8]) * $unsigned(2'b10);
    assign n_0_1_po_2_ax = {n_0_1_po_2[4], {4{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_1_po_3, n_0_1_po_3_ax;
    assign n_0_1_po_3 = $unsigned(inp[15:12]) * $unsigned(3'b100);
    assign n_0_1_po_3_ax = n_0_1_po_3[5:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [5:0] n_0_1_po_7, n_0_1_po_7_ax;
    assign n_0_1_po_7 = $unsigned(inp[31:28]) * $unsigned(3'b100);
    assign n_0_1_po_7_ax = n_0_1_po_7[5:0];

    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_8, n_0_1_po_8_ax;
    assign n_0_1_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_1_po_8_ax = n_0_1_po_8[3:0];

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_1_po_9, n_0_1_po_9_ax;
    assign n_0_1_po_9 = $unsigned(inp[39:36]) * $unsigned(3'b100);
    assign n_0_1_po_9_ax = n_0_1_po_9[5:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_10, n_0_1_po_10_ax;
    assign n_0_1_po_10 = $unsigned(inp[43:40]) * $unsigned(1'b1);
    assign n_0_1_po_10_ax = n_0_1_po_10[3:0];

    //weight 4 : 3'b100
    wire [5:0] n_0_1_po_11, n_0_1_po_11_ax;
    assign n_0_1_po_11 = $unsigned(inp[47:44]) * $unsigned(3'b100);
    assign n_0_1_po_11_ax = n_0_1_po_11[5:0];

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_12, n_0_1_po_12_ax;
    assign n_0_1_po_12 = $unsigned(inp[51:48]) * $unsigned(2'b10);
    assign n_0_1_po_12_ax = n_0_1_po_12[4:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_13, n_0_1_po_13_ax;
    assign n_0_1_po_13 = $unsigned(inp[55:52]) * $unsigned(1'b1);
    assign n_0_1_po_13_ax = n_0_1_po_13[3:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_14, n_0_1_po_14_ax;
    assign n_0_1_po_14 = $unsigned(inp[59:56]) * $unsigned(1'b1);
    assign n_0_1_po_14_ax = n_0_1_po_14[3:0];

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_15, n_0_1_po_15_ax;
    assign n_0_1_po_15 = $unsigned(inp[63:60]) * $unsigned(2'b10);
    assign n_0_1_po_15_ax = n_0_1_po_15[4:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_18, n_0_1_po_18_ax;
    assign n_0_1_po_18 = $unsigned(inp[75:72]) * $unsigned(1'b1);
    assign n_0_1_po_18_ax = n_0_1_po_18[3:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_19, n_0_1_po_19_ax;
    assign n_0_1_po_19 = $unsigned(inp[79:76]) * $unsigned(1'b1);
    assign n_0_1_po_19_ax = n_0_1_po_19[3:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_1_po_20, n_0_1_po_20_ax;
    assign n_0_1_po_20 = $unsigned(inp[83:80]) * $unsigned(2'b10);
    assign n_0_1_po_20_ax = n_0_1_po_20[4:0];

    //accumulate positive/negative subproducts
    wire [8:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = 2'b10 + n_0_1_po_1_ax + n_0_1_po_2_ax + n_0_1_po_3_ax + n_0_1_po_8_ax + n_0_1_po_11_ax + n_0_1_po_20_ax;
    wire [8:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_0_ax + n_0_1_po_7_ax + n_0_1_po_9_ax + n_0_1_po_10_ax + n_0_1_po_12_ax + n_0_1_po_13_ax + n_0_1_po_14_ax + n_0_1_po_15_ax + n_0_1_po_18_ax + n_0_1_po_19_ax;
    wire signed [9:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) + $signed({1'b1,~n_0_1_sum_neg});

    //relu
    wire [8:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({9{1'b0}}) : $unsigned(n_0_1_sum[8:0]);

// layer: 0 - neuron: 2
    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_1, n_0_2_po_1_ax;
    assign n_0_2_po_1 = $unsigned(inp[7:4]) * $unsigned(3'b100);
    assign n_0_2_po_1_ax = n_0_2_po_1[5:0];

    //weight 1 : 1'b1
    wire [3:0] n_0_2_po_2, n_0_2_po_2_ax;
    assign n_0_2_po_2 = $unsigned(inp[11:8]) * $unsigned(1'b1);
    assign n_0_2_po_2_ax = {n_0_2_po_2[3], {3{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_2_po_3, n_0_2_po_3_ax;
    assign n_0_2_po_3 = $unsigned(inp[15:12]) * $unsigned(1'b1);
    assign n_0_2_po_3_ax = n_0_2_po_3[3:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_6, n_0_2_po_6_ax;
    assign n_0_2_po_6 = $unsigned(inp[27:24]) * $unsigned(2'b10);
    assign n_0_2_po_6_ax = n_0_2_po_6[4:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_7, n_0_2_po_7_ax;
    assign n_0_2_po_7 = $unsigned(inp[31:28]) * $unsigned(2'b10);
    assign n_0_2_po_7_ax = n_0_2_po_7[4:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_2_po_8, n_0_2_po_8_ax;
    assign n_0_2_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_2_po_8_ax = n_0_2_po_8[3:0];

    //weight 1 : 1'b1
    wire [3:0] n_0_2_po_9, n_0_2_po_9_ax;
    assign n_0_2_po_9 = $unsigned(inp[39:36]) * $unsigned(1'b1);
    assign n_0_2_po_9_ax = n_0_2_po_9[3:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_13, n_0_2_po_13_ax;
    assign n_0_2_po_13 = $unsigned(inp[55:52]) * $unsigned(2'b10);
    assign n_0_2_po_13_ax = n_0_2_po_13[4:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_18, n_0_2_po_18_ax;
    assign n_0_2_po_18 = $unsigned(inp[75:72]) * $unsigned(2'b10);
    assign n_0_2_po_18_ax = n_0_2_po_18[4:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_19, n_0_2_po_19_ax;
    assign n_0_2_po_19 = $unsigned(inp[79:76]) * $unsigned(2'b10);
    assign n_0_2_po_19_ax = n_0_2_po_19[4:0];

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [7:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = n_0_2_po_2_ax + n_0_2_po_6_ax + n_0_2_po_7_ax + n_0_2_po_9_ax + n_0_2_po_13_ax + n_0_2_po_18_ax + n_0_2_po_19_ax;
    wire [7:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = 6'b100011 + n_0_2_po_1_ax + n_0_2_po_3_ax + n_0_2_po_8_ax;
    wire signed [8:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) + $signed({1'b1,~n_0_2_sum_neg});

    //relu
    wire [7:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_sum[7:0]);

// layer: 1 - neuron: 0
    //weight abs(-4) : 3'b100
    wire [10:0] n_1_0_po_0, n_1_0_po_0_ax;
    assign n_1_0_po_0 = $unsigned(n_0_0) * $unsigned(3'b100);
    assign n_1_0_po_0_ax = n_1_0_po_0[10:0];

    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [9:0] n_1_0_po_2, n_1_0_po_2_ax;
    assign n_1_0_po_2 = $unsigned(n_0_2) * $unsigned(3'b100);
    assign n_1_0_po_2_ax = n_1_0_po_2[9:0];

    //accumulate positive/negative subproducts
    wire [7:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 8'b11011110;
    wire [11:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = n_1_0_po_0_ax + n_1_0_po_2_ax;
    wire signed [12:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) + $signed({1'b1,~n_1_0_sum_neg});

    //relu
    wire [7:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_1_0_sum[7:0]);

// layer: 1 - neuron: 1
    //weight abs(-4) : 3'b100
    wire [10:0] n_1_1_po_0, n_1_1_po_0_ax;
    assign n_1_1_po_0 = $unsigned(n_0_0) * $unsigned(3'b100);
    assign n_1_1_po_0_ax = n_1_1_po_0[10:0];

    //weight abs(-4) : 3'b100
    wire [10:0] n_1_1_po_1, n_1_1_po_1_ax;
    assign n_1_1_po_1 = $unsigned(n_0_1) * $unsigned(3'b100);
    assign n_1_1_po_1_ax = n_1_1_po_1[10:0];

    //weight 4 : 3'b100
    wire [9:0] n_1_1_po_2, n_1_1_po_2_ax;
    assign n_1_1_po_2 = $unsigned(n_0_2) * $unsigned(3'b100);
    assign n_1_1_po_2_ax = n_1_1_po_2[9:0];

    //accumulate positive/negative subproducts
    wire [10:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 6'b101011 + n_1_1_po_2_ax;
    wire [11:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_0_ax + n_1_1_po_1_ax;
    wire signed [12:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) + $signed({1'b1,~n_1_1_sum_neg});

    //relu
    wire [10:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_1_1_sum[10:0]);

// layer: 1 - neuron: 2
    //weight 4 : 3'b100
    wire [10:0] n_1_2_po_0, n_1_2_po_0_ax;
    assign n_1_2_po_0 = $unsigned(n_0_0) * $unsigned(3'b100);
    assign n_1_2_po_0_ax = n_1_2_po_0[10:0];

    //weight abs(-2) : 2'b10
    wire [9:0] n_1_2_po_1, n_1_2_po_1_ax;
    assign n_1_2_po_1 = $unsigned(n_0_1) * $unsigned(2'b10);
    assign n_1_2_po_1_ax = n_1_2_po_1[9:0];

    //weight 1 : 1'b1
    wire [7:0] n_1_2_po_2, n_1_2_po_2_ax;
    assign n_1_2_po_2 = $unsigned(n_0_2) * $unsigned(1'b1);
    assign n_1_2_po_2_ax = n_1_2_po_2[7:0];

    //accumulate positive/negative subproducts
    wire [11:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 4'b1001 + n_1_2_po_0_ax + n_1_2_po_2_ax;
    wire [9:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_1_ax;
    wire signed [12:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) + $signed({1'b1,~n_1_2_sum_neg});

    //relu
    wire [11:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_1_2_sum[11:0]);

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [11:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [11:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
