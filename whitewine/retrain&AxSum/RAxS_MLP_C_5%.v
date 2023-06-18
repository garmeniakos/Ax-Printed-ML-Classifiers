//AX Config: [9.33, 7.0, 2, 0.972, 0.4966]
//THL0: 9.33
//THL1: 7.0
//MSB: 2
//weights: [[[0, -4, 0, 2, 0, 1, 0, 0, 0, 0, 2], [0, 0, -2, -1, 0, 0, -2, 1, 1, 1, 4], [-1, 1, 1, 1, 0, 4, 4, 0, -2, -2, -4], [0, 1, 0, -1, 0, -1, 2, 0, 0, 0, -8]], [[0, 0, 0, 0], [-1, 0, -1, 0], [-1, 0, 0, 0], [1, 0, -1, 0], [0, 0, -2, 0], [0, 0, 0, 0], [1, 0, 1, -2]]]
//intercepts: [[1, -22, 2, 21], [3, 21, 31, 29, 18, 14, -24]]
//ax width : [[[(0, 0), (6, 5), (0, 0), (5, 4), (0, 0), (4, 3), (0, 0), (0, 0), (0, 0), (0, 0), (5, 4)], [(0, 0), (0, 0), (5, 4), (4, 3), (0, 0), (0, 0), (5, 4), (4, 3), (4, 3), (4, 3), (6, 5)], [(4, 3), (4, 3), (4, 3), (4, 3), (0, 0), (6, 5), (6, 0), (0, 0), (5, 4), (5, 4), (6, 5)], [(0, 0), (4, 3), (0, 0), (4, 3), (0, 0), (4, 3), (5, 4), (0, 0), (0, 0), (0, 0), (7, 6)]], [[(0, 0), (0, 0), (0, 0), (0, 0)], [(7, 6), (0, 0), (8, 7), (0, 0)], [(7, 6), (0, 0), (0, 0), (0, 0)], [(7, 0), (0, 0), (8, 7), (0, 0)], [(0, 0), (0, 0), (9, 8), (0, 0)], [(0, 0), (0, 0), (0, 0), (0, 0)], [(7, 6), (0, 0), (8, 7), (9, 8)]]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

// layer: 0 - neuron: 0
    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [5:0] n_0_0_po_1, n_0_0_po_1_ax;
    assign n_0_0_po_1 = $unsigned(inp[7:4]) * $unsigned(3'b100);
    assign n_0_0_po_1_ax = {n_0_0_po_1[5:4], {4{1'b0}}};

    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_3, n_0_0_po_3_ax;
    assign n_0_0_po_3 = $unsigned(inp[15:12]) * $unsigned(2'b10);
    assign n_0_0_po_3_ax = {n_0_0_po_3[4:3], {3{1'b0}}};

    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_0_po_5, n_0_0_po_5_ax;
    assign n_0_0_po_5 = $unsigned(inp[23:20]) * $unsigned(1'b1);
    assign n_0_0_po_5_ax = {n_0_0_po_5[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_10, n_0_0_po_10_ax;
    assign n_0_0_po_10 = $unsigned(inp[43:40]) * $unsigned(2'b10);
    assign n_0_0_po_10_ax = {n_0_0_po_10[4:3], {3{1'b0}}};

    //accumulate positive/negative subproducts
    wire [5:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 1'b1 + n_0_0_po_3_ax + n_0_0_po_5_ax + n_0_0_po_10_ax;
    wire [5:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_1_ax;
    wire signed [6:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) + $signed({1'b1,~n_0_0_sum_neg});

    //relu
    wire [5:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({6{1'b0}}) : $unsigned(n_0_0_sum[5:0]);

// layer: 0 - neuron: 1
    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_2, n_0_1_po_2_ax;
    assign n_0_1_po_2 = $unsigned(inp[11:8]) * $unsigned(2'b10);
    assign n_0_1_po_2_ax = {n_0_1_po_2[4:3], {3{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_3, n_0_1_po_3_ax;
    assign n_0_1_po_3 = $unsigned(inp[15:12]) * $unsigned(1'b1);
    assign n_0_1_po_3_ax = {n_0_1_po_3[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_6, n_0_1_po_6_ax;
    assign n_0_1_po_6 = $unsigned(inp[27:24]) * $unsigned(2'b10);
    assign n_0_1_po_6_ax = {n_0_1_po_6[4:3], {3{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_7, n_0_1_po_7_ax;
    assign n_0_1_po_7 = $unsigned(inp[31:28]) * $unsigned(1'b1);
    assign n_0_1_po_7_ax = {n_0_1_po_7[3:2], {2{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_8, n_0_1_po_8_ax;
    assign n_0_1_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_1_po_8_ax = {n_0_1_po_8[3:2], {2{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_9, n_0_1_po_9_ax;
    assign n_0_1_po_9 = $unsigned(inp[39:36]) * $unsigned(1'b1);
    assign n_0_1_po_9_ax = {n_0_1_po_9[3:2], {2{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_1_po_10, n_0_1_po_10_ax;
    assign n_0_1_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_1_po_10_ax = {n_0_1_po_10[5:4], {4{1'b0}}};

    //accumulate positive/negative subproducts
    wire [6:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_7_ax + n_0_1_po_8_ax + n_0_1_po_9_ax + n_0_1_po_10_ax;
    wire [6:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 5'b10110 + n_0_1_po_2_ax + n_0_1_po_3_ax + n_0_1_po_6_ax;
    wire signed [7:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) + $signed({1'b1,~n_0_1_sum_neg});

    //relu
    wire [6:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({7{1'b0}}) : $unsigned(n_0_1_sum[6:0]);

// layer: 0 - neuron: 2
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_2_po_0, n_0_2_po_0_ax;
    assign n_0_2_po_0 = $unsigned(inp[3:0]) * $unsigned(1'b1);
    assign n_0_2_po_0_ax = {n_0_2_po_0[3:2], {2{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_2_po_1, n_0_2_po_1_ax;
    assign n_0_2_po_1 = $unsigned(inp[7:4]) * $unsigned(1'b1);
    assign n_0_2_po_1_ax = {n_0_2_po_1[3:2], {2{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_2_po_2, n_0_2_po_2_ax;
    assign n_0_2_po_2 = $unsigned(inp[11:8]) * $unsigned(1'b1);
    assign n_0_2_po_2_ax = {n_0_2_po_2[3:2], {2{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_2_po_3, n_0_2_po_3_ax;
    assign n_0_2_po_3 = $unsigned(inp[15:12]) * $unsigned(1'b1);
    assign n_0_2_po_3_ax = {n_0_2_po_3[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 4 : 3'b100
    wire [5:0] n_0_2_po_5, n_0_2_po_5_ax;
    assign n_0_2_po_5 = $unsigned(inp[23:20]) * $unsigned(3'b100);
    assign n_0_2_po_5_ax = {n_0_2_po_5[5:4], {4{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_2_po_6, n_0_2_po_6_ax;
    assign n_0_2_po_6 = $unsigned(inp[27:24]) * $unsigned(3'b100);
    assign n_0_2_po_6_ax = n_0_2_po_6[5:0];

    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_2_po_8, n_0_2_po_8_ax;
    assign n_0_2_po_8 = $unsigned(inp[35:32]) * $unsigned(2'b10);
    assign n_0_2_po_8_ax = {n_0_2_po_8[4:3], {3{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_2_po_9, n_0_2_po_9_ax;
    assign n_0_2_po_9 = $unsigned(inp[39:36]) * $unsigned(2'b10);
    assign n_0_2_po_9_ax = {n_0_2_po_9[4:3], {3{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_10, n_0_2_po_10_ax;
    assign n_0_2_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_2_po_10_ax = {n_0_2_po_10[5:4], {4{1'b0}}};

    //accumulate positive/negative subproducts
    wire [7:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 2'b10 + n_0_2_po_1_ax + n_0_2_po_2_ax + n_0_2_po_3_ax + n_0_2_po_5_ax + n_0_2_po_6_ax;
    wire [6:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0_ax + n_0_2_po_8_ax + n_0_2_po_9_ax + n_0_2_po_10_ax;
    wire signed [8:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) + $signed({1'b1,~n_0_2_sum_neg});

    //relu
    wire [7:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_sum[7:0]);

// layer: 0 - neuron: 3
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_3_po_1, n_0_3_po_1_ax;
    assign n_0_3_po_1 = $unsigned(inp[7:4]) * $unsigned(1'b1);
    assign n_0_3_po_1_ax = {n_0_3_po_1[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_3_po_3, n_0_3_po_3_ax;
    assign n_0_3_po_3 = $unsigned(inp[15:12]) * $unsigned(1'b1);
    assign n_0_3_po_3_ax = {n_0_3_po_3[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_3_po_5, n_0_3_po_5_ax;
    assign n_0_3_po_5 = $unsigned(inp[23:20]) * $unsigned(1'b1);
    assign n_0_3_po_5_ax = {n_0_3_po_5[3:2], {2{1'b0}}};

    //weight 2 : 2'b10
    wire [4:0] n_0_3_po_6, n_0_3_po_6_ax;
    assign n_0_3_po_6 = $unsigned(inp[27:24]) * $unsigned(2'b10);
    assign n_0_3_po_6_ax = {n_0_3_po_6[4:3], {3{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-8) : 4'b1000
    wire [6:0] n_0_3_po_10, n_0_3_po_10_ax;
    assign n_0_3_po_10 = $unsigned(inp[43:40]) * $unsigned(4'b1000);
    assign n_0_3_po_10_ax = {n_0_3_po_10[6:5], {5{1'b0}}};

    //accumulate positive/negative subproducts
    wire [5:0] n_0_3_sum_pos;
    assign n_0_3_sum_pos = 5'b10101 + n_0_3_po_1_ax + n_0_3_po_6_ax;
    wire [6:0] n_0_3_sum_neg;
    assign n_0_3_sum_neg = n_0_3_po_3_ax + n_0_3_po_5_ax + n_0_3_po_10_ax;
    wire signed [7:0] n_0_3_sum;
    assign n_0_3_sum = $signed({1'b0,n_0_3_sum_pos}) + $signed({1'b1,~n_0_3_sum_neg});

    //relu
    wire [5:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({6{1'b0}}) : $unsigned(n_0_3_sum[5:0]);

// layer: 1 - neuron: 0
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [1:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 2'b11;

    //WARN: only positive weights. Using identity
    wire [1:0] n_1_0;
    assign n_1_0 = n_1_0_sum_pos;

// layer: 1 - neuron: 1
    //weight abs(-1) : 1'b1
    wire [6:0] n_1_1_po_0, n_1_1_po_0_ax;
    assign n_1_1_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_1_po_0_ax = {n_1_1_po_0[6:5], {5{1'b0}}};

    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [7:0] n_1_1_po_2, n_1_1_po_2_ax;
    assign n_1_1_po_2 = $unsigned(n_0_2) * $unsigned(1'b1);
    assign n_1_1_po_2_ax = {n_1_1_po_2[7:6], {6{1'b0}}};

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [4:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 5'b10101;
    wire [8:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_0_ax + n_1_1_po_2_ax;
    wire signed [9:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) + $signed({1'b1,~n_1_1_sum_neg});

    //relu
    wire [4:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({5{1'b0}}) : $unsigned(n_1_1_sum[4:0]);

// layer: 1 - neuron: 2
    //weight abs(-1) : 1'b1
    wire [6:0] n_1_2_po_0, n_1_2_po_0_ax;
    assign n_1_2_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_2_po_0_ax = {n_1_2_po_0[6:5], {5{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [4:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 5'b11111;
    wire [6:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_0_ax;
    wire signed [7:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) + $signed({1'b1,~n_1_2_sum_neg});

    //relu
    wire [4:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({5{1'b0}}) : $unsigned(n_1_2_sum[4:0]);

// layer: 1 - neuron: 3
    //weight 1 : 1'b1
    wire [6:0] n_1_3_po_0, n_1_3_po_0_ax;
    assign n_1_3_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_3_po_0_ax = n_1_3_po_0[6:0];

    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [7:0] n_1_3_po_2, n_1_3_po_2_ax;
    assign n_1_3_po_2 = $unsigned(n_0_2) * $unsigned(1'b1);
    assign n_1_3_po_2_ax = {n_1_3_po_2[7:6], {6{1'b0}}};

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [7:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 5'b11101 + n_1_3_po_0_ax;
    wire [7:0] n_1_3_sum_neg;
    assign n_1_3_sum_neg = n_1_3_po_2_ax;
    wire signed [8:0] n_1_3_sum;
    assign n_1_3_sum = $signed({1'b0,n_1_3_sum_pos}) + $signed({1'b1,~n_1_3_sum_neg});

    //relu
    wire [7:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_1_3_sum[7:0]);

// layer: 1 - neuron: 4
    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [8:0] n_1_4_po_2, n_1_4_po_2_ax;
    assign n_1_4_po_2 = $unsigned(n_0_2) * $unsigned(2'b10);
    assign n_1_4_po_2_ax = {n_1_4_po_2[8:7], {7{1'b0}}};

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [4:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 5'b10010;
    wire [8:0] n_1_4_sum_neg;
    assign n_1_4_sum_neg = n_1_4_po_2_ax;
    wire signed [9:0] n_1_4_sum;
    assign n_1_4_sum = $signed({1'b0,n_1_4_sum_pos}) + $signed({1'b1,~n_1_4_sum_neg});

    //relu
    wire [4:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({5{1'b0}}) : $unsigned(n_1_4_sum[4:0]);

// layer: 1 - neuron: 5
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [3:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = 4'b1110;

    //WARN: only positive weights. Using identity
    wire [3:0] n_1_5;
    assign n_1_5 = n_1_5_sum_pos;

// layer: 1 - neuron: 6
    //weight 1 : 1'b1
    wire [6:0] n_1_6_po_0, n_1_6_po_0_ax;
    assign n_1_6_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_6_po_0_ax = {n_1_6_po_0[6:5], {5{1'b0}}};

    //weight 0 : skip
    //weight 1 : 1'b1
    wire [7:0] n_1_6_po_2, n_1_6_po_2_ax;
    assign n_1_6_po_2 = $unsigned(n_0_2) * $unsigned(1'b1);
    assign n_1_6_po_2_ax = {n_1_6_po_2[7:6], {6{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [8:0] n_1_6_po_3, n_1_6_po_3_ax;
    assign n_1_6_po_3 = $unsigned(n_0_3) * $unsigned(2'b10);
    assign n_1_6_po_3_ax = {n_1_6_po_3[8:7], {7{1'b0}}};

    //accumulate positive/negative subproducts
    wire [8:0] n_1_6_sum_pos;
    assign n_1_6_sum_pos = n_1_6_po_0_ax + n_1_6_po_2_ax;
    wire [8:0] n_1_6_sum_neg;
    assign n_1_6_sum_neg = 5'b11000 + n_1_6_po_3_ax;
    wire signed [9:0] n_1_6_sum;
    assign n_1_6_sum = $signed({1'b0,n_1_6_sum_pos}) + $signed({1'b1,~n_1_6_sum_neg});

    //relu
    wire [8:0] n_1_6;
    assign n_1_6 = (n_1_6_sum<0) ? $unsigned({9{1'b0}}) : $unsigned(n_1_6_sum[8:0]);

// argmax: 7 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6
    //comp level 0
    wire cmp_0_0;
    wire [8:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [8:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [8:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [8:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [8:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= n_1_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : n_1_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : 3'b110;

    //comp level 2
    wire cmp_2_0;
    wire [8:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    assign out = argmax_idx_2_0;

endmodule
