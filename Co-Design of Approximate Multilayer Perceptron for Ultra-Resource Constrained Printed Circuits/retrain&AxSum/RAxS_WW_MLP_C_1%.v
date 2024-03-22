//AX Config: [0.36, 2.91, 3, 0.764, 0.5211]
//THL0: 0.36
//THL1: 2.91
//MSB: 3
//weights: [[[2, 6, 2, -2, 0, -2, 2, 0, 0, -2, -4], [-1, -4, 1, 5, -2, 2, 0, 0, 1, 2, 8], [0, 0, -4, -1, -4, -1, -4, -4, 2, 2, 4], [1, -4, 2, 2, 0, 0, 0, 0, 1, 0, 4]], [[0, -2, 2, 2], [1, -2, -4, -1], [2, -2, -2, -2], [-2, 0, -4, 2], [-1, 2, 2, 0], [0, 1, -1, -1], [0, 0, 0, 0]]]
//intercepts: [[3, -46, -61, 7], [11, 103, 157, 70, 61, 96, 4]]
//ax width : [[[(5, 0), (7, 0), (5, 0), (5, 3), (0, 0), (5, 0), (5, 0), (0, 0), (0, 0), (5, 0), (6, 0)], [(4, 2), (6, 4), (4, 2), (7, 5), (5, 3), (5, 3), (0, 0), (0, 0), (4, 2), (5, 3), (7, 0)], [(0, 0), (0, 0), (6, 0), (4, 2), (6, 0), (4, 2), (6, 0), (6, 0), (5, 0), (5, 0), (6, 0)], [(4, 2), (6, 0), (5, 3), (5, 3), (0, 0), (0, 0), (0, 0), (0, 0), (4, 2), (0, 0), (6, 0)]], [[(0, 0), (10, 8), (10, 8), (9, 7)], [(8, 6), (10, 8), (11, 9), (8, 6)], [(9, 7), (10, 8), (10, 8), (9, 7)], [(9, 7), (0, 0), (11, 9), (9, 7)], [(8, 6), (10, 8), (10, 8), (0, 0)], [(0, 0), (9, 7), (9, 7), (8, 6)], [(0, 0), (0, 0), (0, 0), (0, 0)]]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

// layer: 0 - neuron: 0
    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_0, n_0_0_po_0_ax;
    assign n_0_0_po_0 = $unsigned(inp[3:0]) * $unsigned(2'b10);
    assign n_0_0_po_0_ax = n_0_0_po_0[4:0];

    //weight 6 : 3'b110
    wire [6:0] n_0_0_po_1, n_0_0_po_1_ax;
    assign n_0_0_po_1 = $unsigned(inp[7:4]) * $unsigned(3'b110);
    assign n_0_0_po_1_ax = n_0_0_po_1[6:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_2, n_0_0_po_2_ax;
    assign n_0_0_po_2 = $unsigned(inp[11:8]) * $unsigned(2'b10);
    assign n_0_0_po_2_ax = n_0_0_po_2[4:0];

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_3, n_0_0_po_3_ax;
    assign n_0_0_po_3 = $unsigned(inp[15:12]) * $unsigned(2'b10);
    assign n_0_0_po_3_ax = {n_0_0_po_3[4:2], {2{1'b0}}};

    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_5, n_0_0_po_5_ax;
    assign n_0_0_po_5 = $unsigned(inp[23:20]) * $unsigned(2'b10);
    assign n_0_0_po_5_ax = n_0_0_po_5[4:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_6, n_0_0_po_6_ax;
    assign n_0_0_po_6 = $unsigned(inp[27:24]) * $unsigned(2'b10);
    assign n_0_0_po_6_ax = n_0_0_po_6[4:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_9, n_0_0_po_9_ax;
    assign n_0_0_po_9 = $unsigned(inp[39:36]) * $unsigned(2'b10);
    assign n_0_0_po_9_ax = n_0_0_po_9[4:0];

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_0_po_10, n_0_0_po_10_ax;
    assign n_0_0_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_0_po_10_ax = n_0_0_po_10[5:0];

    //accumulate positive/negative subproducts
    wire [7:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 2'b11 + n_0_0_po_0_ax + n_0_0_po_1_ax + n_0_0_po_2_ax + n_0_0_po_6_ax;
    wire [7:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_3_ax + n_0_0_po_5_ax + n_0_0_po_9_ax + n_0_0_po_10_ax;
    wire signed [8:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) + $signed({1'b1,~n_0_0_sum_neg});

    //relu
    wire [7:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_sum[7:0]);

// layer: 0 - neuron: 1
    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_0, n_0_1_po_0_ax;
    assign n_0_1_po_0 = $unsigned(inp[3:0]) * $unsigned(1'b1);
    assign n_0_1_po_0_ax = {n_0_1_po_0[3:1], {1{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_1_po_1, n_0_1_po_1_ax;
    assign n_0_1_po_1 = $unsigned(inp[7:4]) * $unsigned(3'b100);
    assign n_0_1_po_1_ax = {n_0_1_po_1[5:3], {3{1'b0}}};

    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_2, n_0_1_po_2_ax;
    assign n_0_1_po_2 = $unsigned(inp[11:8]) * $unsigned(1'b1);
    assign n_0_1_po_2_ax = {n_0_1_po_2[3:1], {1{1'b0}}};

    //weight 5 : 3'b101
    wire [6:0] n_0_1_po_3, n_0_1_po_3_ax;
    assign n_0_1_po_3 = $unsigned(inp[15:12]) * $unsigned(3'b101);
    assign n_0_1_po_3_ax = {n_0_1_po_3[6:4], {4{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_4, n_0_1_po_4_ax;
    assign n_0_1_po_4 = $unsigned(inp[19:16]) * $unsigned(2'b10);
    assign n_0_1_po_4_ax = {n_0_1_po_4[4:2], {2{1'b0}}};

    //weight 2 : 2'b10
    wire [4:0] n_0_1_po_5, n_0_1_po_5_ax;
    assign n_0_1_po_5 = $unsigned(inp[23:20]) * $unsigned(2'b10);
    assign n_0_1_po_5_ax = {n_0_1_po_5[4:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_8, n_0_1_po_8_ax;
    assign n_0_1_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_1_po_8_ax = {n_0_1_po_8[3:1], {1{1'b0}}};

    //weight 2 : 2'b10
    wire [4:0] n_0_1_po_9, n_0_1_po_9_ax;
    assign n_0_1_po_9 = $unsigned(inp[39:36]) * $unsigned(2'b10);
    assign n_0_1_po_9_ax = {n_0_1_po_9[4:2], {2{1'b0}}};

    //weight 8 : 4'b1000
    wire [6:0] n_0_1_po_10, n_0_1_po_10_ax;
    assign n_0_1_po_10 = $unsigned(inp[43:40]) * $unsigned(4'b1000);
    assign n_0_1_po_10_ax = n_0_1_po_10[6:0];

    //accumulate positive/negative subproducts
    wire [8:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_2_ax + n_0_1_po_3_ax + n_0_1_po_5_ax + n_0_1_po_8_ax + n_0_1_po_9_ax + n_0_1_po_10_ax;
    wire [7:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 6'b101110 + n_0_1_po_0_ax + n_0_1_po_1_ax + n_0_1_po_4_ax;
    wire signed [9:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) + $signed({1'b1,~n_0_1_sum_neg});

    //relu
    wire [8:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({9{1'b0}}) : $unsigned(n_0_1_sum[8:0]);

// layer: 0 - neuron: 2
    //weight 0 : skip
    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_2, n_0_2_po_2_ax;
    assign n_0_2_po_2 = $unsigned(inp[11:8]) * $unsigned(3'b100);
    assign n_0_2_po_2_ax = n_0_2_po_2[5:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_2_po_3, n_0_2_po_3_ax;
    assign n_0_2_po_3 = $unsigned(inp[15:12]) * $unsigned(1'b1);
    assign n_0_2_po_3_ax = {n_0_2_po_3[3:1], {1{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_4, n_0_2_po_4_ax;
    assign n_0_2_po_4 = $unsigned(inp[19:16]) * $unsigned(3'b100);
    assign n_0_2_po_4_ax = n_0_2_po_4[5:0];

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_2_po_5, n_0_2_po_5_ax;
    assign n_0_2_po_5 = $unsigned(inp[23:20]) * $unsigned(1'b1);
    assign n_0_2_po_5_ax = {n_0_2_po_5[3:1], {1{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_6, n_0_2_po_6_ax;
    assign n_0_2_po_6 = $unsigned(inp[27:24]) * $unsigned(3'b100);
    assign n_0_2_po_6_ax = n_0_2_po_6[5:0];

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_2_po_7, n_0_2_po_7_ax;
    assign n_0_2_po_7 = $unsigned(inp[31:28]) * $unsigned(3'b100);
    assign n_0_2_po_7_ax = n_0_2_po_7[5:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_8, n_0_2_po_8_ax;
    assign n_0_2_po_8 = $unsigned(inp[35:32]) * $unsigned(2'b10);
    assign n_0_2_po_8_ax = n_0_2_po_8[4:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_2_po_9, n_0_2_po_9_ax;
    assign n_0_2_po_9 = $unsigned(inp[39:36]) * $unsigned(2'b10);
    assign n_0_2_po_9_ax = n_0_2_po_9[4:0];

    //weight 4 : 3'b100
    wire [5:0] n_0_2_po_10, n_0_2_po_10_ax;
    assign n_0_2_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_2_po_10_ax = n_0_2_po_10[5:0];

    //accumulate positive/negative subproducts
    wire [6:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = n_0_2_po_8_ax + n_0_2_po_9_ax + n_0_2_po_10_ax;
    wire [8:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = 6'b111101 + n_0_2_po_2_ax + n_0_2_po_3_ax + n_0_2_po_4_ax + n_0_2_po_5_ax + n_0_2_po_6_ax + n_0_2_po_7_ax;
    wire signed [9:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) + $signed({1'b1,~n_0_2_sum_neg});

    //relu
    wire [6:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({7{1'b0}}) : $unsigned(n_0_2_sum[6:0]);

// layer: 0 - neuron: 3
    //weight 1 : 1'b1
    wire [3:0] n_0_3_po_0, n_0_3_po_0_ax;
    assign n_0_3_po_0 = $unsigned(inp[3:0]) * $unsigned(1'b1);
    assign n_0_3_po_0_ax = {n_0_3_po_0[3:1], {1{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_3_po_1, n_0_3_po_1_ax;
    assign n_0_3_po_1 = $unsigned(inp[7:4]) * $unsigned(3'b100);
    assign n_0_3_po_1_ax = n_0_3_po_1[5:0];

    //weight 2 : 2'b10
    wire [4:0] n_0_3_po_2, n_0_3_po_2_ax;
    assign n_0_3_po_2 = $unsigned(inp[11:8]) * $unsigned(2'b10);
    assign n_0_3_po_2_ax = {n_0_3_po_2[4:2], {2{1'b0}}};

    //weight 2 : 2'b10
    wire [4:0] n_0_3_po_3, n_0_3_po_3_ax;
    assign n_0_3_po_3 = $unsigned(inp[15:12]) * $unsigned(2'b10);
    assign n_0_3_po_3_ax = {n_0_3_po_3[4:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_3_po_8, n_0_3_po_8_ax;
    assign n_0_3_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_3_po_8_ax = {n_0_3_po_8[3:1], {1{1'b0}}};

    //weight 0 : skip
    //weight 4 : 3'b100
    wire [5:0] n_0_3_po_10, n_0_3_po_10_ax;
    assign n_0_3_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_3_po_10_ax = n_0_3_po_10[5:0];

    //accumulate positive/negative subproducts
    wire [7:0] n_0_3_sum_pos;
    assign n_0_3_sum_pos = 3'b111 + n_0_3_po_0_ax + n_0_3_po_2_ax + n_0_3_po_3_ax + n_0_3_po_8_ax + n_0_3_po_10_ax;
    wire [5:0] n_0_3_sum_neg;
    assign n_0_3_sum_neg = n_0_3_po_1_ax;
    wire signed [8:0] n_0_3_sum;
    assign n_0_3_sum = $signed({1'b0,n_0_3_sum_pos}) + $signed({1'b1,~n_0_3_sum_neg});

    //relu
    wire [7:0] n_0_3;
    assign n_0_3 = (n_0_3_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_3_sum[7:0]);

// layer: 1 - neuron: 0
    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [9:0] n_1_0_po_1, n_1_0_po_1_ax;
    assign n_1_0_po_1 = $unsigned(n_0_1) * $unsigned(2'b10);
    assign n_1_0_po_1_ax = {n_1_0_po_1[9:7], {7{1'b0}}};

    //weight 2 : 2'b10
    wire [9:0] n_1_0_po_2, n_1_0_po_2_ax;
    assign n_1_0_po_2 = $unsigned(n_0_2) * $unsigned(2'b10);
    assign n_1_0_po_2_ax = {n_1_0_po_2[9:7], {7{1'b0}}};

    //weight 2 : 2'b10
    wire [8:0] n_1_0_po_3, n_1_0_po_3_ax;
    assign n_1_0_po_3 = $unsigned(n_0_3) * $unsigned(2'b10);
    assign n_1_0_po_3_ax = {n_1_0_po_3[8:6], {6{1'b0}}};

    //accumulate positive/negative subproducts
    wire [10:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 4'b1011 + n_1_0_po_2_ax + n_1_0_po_3_ax;
    wire [9:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = n_1_0_po_1_ax;
    wire signed [11:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) + $signed({1'b1,~n_1_0_sum_neg});

    //relu
    wire [10:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_1_0_sum[10:0]);

// layer: 1 - neuron: 1
    //weight 1 : 1'b1
    wire [7:0] n_1_1_po_0, n_1_1_po_0_ax;
    assign n_1_1_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_1_po_0_ax = {n_1_1_po_0[7:5], {5{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [9:0] n_1_1_po_1, n_1_1_po_1_ax;
    assign n_1_1_po_1 = $unsigned(n_0_1) * $unsigned(2'b10);
    assign n_1_1_po_1_ax = {n_1_1_po_1[9:7], {7{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [10:0] n_1_1_po_2, n_1_1_po_2_ax;
    assign n_1_1_po_2 = $unsigned(n_0_2) * $unsigned(3'b100);
    assign n_1_1_po_2_ax = {n_1_1_po_2[10:8], {8{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [7:0] n_1_1_po_3, n_1_1_po_3_ax;
    assign n_1_1_po_3 = $unsigned(n_0_3) * $unsigned(1'b1);
    assign n_1_1_po_3_ax = {n_1_1_po_3[7:5], {5{1'b0}}};

    //accumulate positive/negative subproducts
    wire [8:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 7'b1100111 + n_1_1_po_0_ax;
    wire [11:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_1_ax + n_1_1_po_2_ax + n_1_1_po_3_ax;
    wire signed [12:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) + $signed({1'b1,~n_1_1_sum_neg});

    //relu
    wire [8:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({9{1'b0}}) : $unsigned(n_1_1_sum[8:0]);

// layer: 1 - neuron: 2
    //weight 2 : 2'b10
    wire [8:0] n_1_2_po_0, n_1_2_po_0_ax;
    assign n_1_2_po_0 = $unsigned(n_0_0) * $unsigned(2'b10);
    assign n_1_2_po_0_ax = {n_1_2_po_0[8:6], {6{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [9:0] n_1_2_po_1, n_1_2_po_1_ax;
    assign n_1_2_po_1 = $unsigned(n_0_1) * $unsigned(2'b10);
    assign n_1_2_po_1_ax = {n_1_2_po_1[9:7], {7{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [9:0] n_1_2_po_2, n_1_2_po_2_ax;
    assign n_1_2_po_2 = $unsigned(n_0_2) * $unsigned(2'b10);
    assign n_1_2_po_2_ax = {n_1_2_po_2[9:7], {7{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [8:0] n_1_2_po_3, n_1_2_po_3_ax;
    assign n_1_2_po_3 = $unsigned(n_0_3) * $unsigned(2'b10);
    assign n_1_2_po_3_ax = {n_1_2_po_3[8:6], {6{1'b0}}};

    //accumulate positive/negative subproducts
    wire [9:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 8'b10011101 + n_1_2_po_0_ax;
    wire [11:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_1_ax + n_1_2_po_2_ax + n_1_2_po_3_ax;
    wire signed [12:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) + $signed({1'b1,~n_1_2_sum_neg});

    //relu
    wire [9:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({10{1'b0}}) : $unsigned(n_1_2_sum[9:0]);

// layer: 1 - neuron: 3
    //weight abs(-2) : 2'b10
    wire [8:0] n_1_3_po_0, n_1_3_po_0_ax;
    assign n_1_3_po_0 = $unsigned(n_0_0) * $unsigned(2'b10);
    assign n_1_3_po_0_ax = {n_1_3_po_0[8:6], {6{1'b0}}};

    //weight 0 : skip
    //weight abs(-4) : 3'b100
    wire [10:0] n_1_3_po_2, n_1_3_po_2_ax;
    assign n_1_3_po_2 = $unsigned(n_0_2) * $unsigned(3'b100);
    assign n_1_3_po_2_ax = {n_1_3_po_2[10:8], {8{1'b0}}};

    //weight 2 : 2'b10
    wire [8:0] n_1_3_po_3, n_1_3_po_3_ax;
    assign n_1_3_po_3 = $unsigned(n_0_3) * $unsigned(2'b10);
    assign n_1_3_po_3_ax = {n_1_3_po_3[8:6], {6{1'b0}}};

    //accumulate positive/negative subproducts
    wire [9:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 7'b1000110 + n_1_3_po_3_ax;
    wire [11:0] n_1_3_sum_neg;
    assign n_1_3_sum_neg = n_1_3_po_0_ax + n_1_3_po_2_ax;
    wire signed [12:0] n_1_3_sum;
    assign n_1_3_sum = $signed({1'b0,n_1_3_sum_pos}) + $signed({1'b1,~n_1_3_sum_neg});

    //relu
    wire [9:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({10{1'b0}}) : $unsigned(n_1_3_sum[9:0]);

// layer: 1 - neuron: 4
    //weight abs(-1) : 1'b1
    wire [7:0] n_1_4_po_0, n_1_4_po_0_ax;
    assign n_1_4_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_4_po_0_ax = {n_1_4_po_0[7:5], {5{1'b0}}};

    //weight 2 : 2'b10
    wire [9:0] n_1_4_po_1, n_1_4_po_1_ax;
    assign n_1_4_po_1 = $unsigned(n_0_1) * $unsigned(2'b10);
    assign n_1_4_po_1_ax = {n_1_4_po_1[9:7], {7{1'b0}}};

    //weight 2 : 2'b10
    wire [9:0] n_1_4_po_2, n_1_4_po_2_ax;
    assign n_1_4_po_2 = $unsigned(n_0_2) * $unsigned(2'b10);
    assign n_1_4_po_2_ax = {n_1_4_po_2[9:7], {7{1'b0}}};

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [10:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 6'b111101 + n_1_4_po_1_ax + n_1_4_po_2_ax;
    wire [7:0] n_1_4_sum_neg;
    assign n_1_4_sum_neg = n_1_4_po_0_ax;
    wire signed [11:0] n_1_4_sum;
    assign n_1_4_sum = $signed({1'b0,n_1_4_sum_pos}) + $signed({1'b1,~n_1_4_sum_neg});

    //relu
    wire [10:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_1_4_sum[10:0]);

// layer: 1 - neuron: 5
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [8:0] n_1_5_po_1, n_1_5_po_1_ax;
    assign n_1_5_po_1 = $unsigned(n_0_1) * $unsigned(1'b1);
    assign n_1_5_po_1_ax = {n_1_5_po_1[8:6], {6{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [8:0] n_1_5_po_2, n_1_5_po_2_ax;
    assign n_1_5_po_2 = $unsigned(n_0_2) * $unsigned(1'b1);
    assign n_1_5_po_2_ax = {n_1_5_po_2[8:6], {6{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [7:0] n_1_5_po_3, n_1_5_po_3_ax;
    assign n_1_5_po_3 = $unsigned(n_0_3) * $unsigned(1'b1);
    assign n_1_5_po_3_ax = {n_1_5_po_3[7:5], {5{1'b0}}};

    //accumulate positive/negative subproducts
    wire [9:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = 7'b1100000 + n_1_5_po_1_ax;
    wire [9:0] n_1_5_sum_neg;
    assign n_1_5_sum_neg = n_1_5_po_2_ax + n_1_5_po_3_ax;
    wire signed [10:0] n_1_5_sum;
    assign n_1_5_sum = $signed({1'b0,n_1_5_sum_pos}) + $signed({1'b1,~n_1_5_sum_neg});

    //relu
    wire [9:0] n_1_5;
    assign n_1_5 = (n_1_5_sum<0) ? $unsigned({10{1'b0}}) : $unsigned(n_1_5_sum[9:0]);

// layer: 1 - neuron: 6
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [2:0] n_1_6_sum_pos;
    assign n_1_6_sum_pos = 3'b100;

    //WARN: only positive weights. Using identity
    wire [2:0] n_1_6;
    assign n_1_6 = n_1_6_sum_pos;

// argmax: 7 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6
    //comp level 0
    wire cmp_0_0;
    wire [10:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [10:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [10:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [10:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [10:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= n_1_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : n_1_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : 3'b110;

    //comp level 2
    wire cmp_2_0;
    wire [10:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    assign out = argmax_idx_2_0;

endmodule
