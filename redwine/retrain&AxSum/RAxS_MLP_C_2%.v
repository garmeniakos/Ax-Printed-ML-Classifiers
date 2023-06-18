//AX Config: [4.0, 0.0, 2, 0.853, 0.55]
//THL0: 4.0
//THL1: 0.0
//MSB: 2
//weights: [[[0, 2, 0, 0, 0, 0, 0, 1, 0, -2, -2], [1, -2, -1, 0, 0, 1, -4, 0, 1, 4, 4]], [[1, 0], [0, 0], [0, -1], [-1, 0], [0, 0], [0, 0]]]
//intercepts: [[0, -9], [-10, 11, 39, 29, 13, 2]]
//ax width : [[[(0, 0), (5, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (4, 3), (0, 0), (5, 4), (5, 0)], [(4, 3), (5, 4), (4, 3), (0, 0), (0, 0), (4, 3), (6, 5), (0, 0), (4, 3), (6, 5), (6, 5)]], [[(6, 0), (0, 0)], [(0, 0), (0, 0)], [(0, 0), (8, 0)], [(6, 0), (0, 0)], [(0, 0), (0, 0)], [(0, 0), (0, 0)]]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

// layer: 0 - neuron: 0
    //weight 0 : skip
    //weight 2 : 2'b10
    wire [4:0] n_0_0_po_1, n_0_0_po_1_ax;
    assign n_0_0_po_1 = $unsigned(inp[7:4]) * $unsigned(2'b10);
    assign n_0_0_po_1_ax = n_0_0_po_1[4:0];

    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_0_po_7, n_0_0_po_7_ax;
    assign n_0_0_po_7 = $unsigned(inp[31:28]) * $unsigned(1'b1);
    assign n_0_0_po_7_ax = {n_0_0_po_7[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_9, n_0_0_po_9_ax;
    assign n_0_0_po_9 = $unsigned(inp[39:36]) * $unsigned(2'b10);
    assign n_0_0_po_9_ax = {n_0_0_po_9[4:3], {3{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_0_po_10, n_0_0_po_10_ax;
    assign n_0_0_po_10 = $unsigned(inp[43:40]) * $unsigned(2'b10);
    assign n_0_0_po_10_ax = n_0_0_po_10[4:0];

    //accumulate positive/negative subproducts
    wire [5:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = n_0_0_po_1_ax + n_0_0_po_7_ax;
    wire [5:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_9_ax + n_0_0_po_10_ax;
    wire signed [6:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) + $signed({1'b1,~n_0_0_sum_neg});

    //relu
    wire [5:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({6{1'b0}}) : $unsigned(n_0_0_sum[5:0]);

// layer: 0 - neuron: 1
    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_0, n_0_1_po_0_ax;
    assign n_0_1_po_0 = $unsigned(inp[3:0]) * $unsigned(1'b1);
    assign n_0_1_po_0_ax = {n_0_1_po_0[3:2], {2{1'b0}}};

    //weight abs(-2) : 2'b10
    wire [4:0] n_0_1_po_1, n_0_1_po_1_ax;
    assign n_0_1_po_1 = $unsigned(inp[7:4]) * $unsigned(2'b10);
    assign n_0_1_po_1_ax = {n_0_1_po_1[4:3], {3{1'b0}}};

    //weight abs(-1) : 1'b1
    wire [3:0] n_0_1_po_2, n_0_1_po_2_ax;
    assign n_0_1_po_2 = $unsigned(inp[11:8]) * $unsigned(1'b1);
    assign n_0_1_po_2_ax = {n_0_1_po_2[3:2], {2{1'b0}}};

    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_5, n_0_1_po_5_ax;
    assign n_0_1_po_5 = $unsigned(inp[23:20]) * $unsigned(1'b1);
    assign n_0_1_po_5_ax = {n_0_1_po_5[3:2], {2{1'b0}}};

    //weight abs(-4) : 3'b100
    wire [5:0] n_0_1_po_6, n_0_1_po_6_ax;
    assign n_0_1_po_6 = $unsigned(inp[27:24]) * $unsigned(3'b100);
    assign n_0_1_po_6_ax = {n_0_1_po_6[5:4], {4{1'b0}}};

    //weight 0 : skip
    //weight 1 : 1'b1
    wire [3:0] n_0_1_po_8, n_0_1_po_8_ax;
    assign n_0_1_po_8 = $unsigned(inp[35:32]) * $unsigned(1'b1);
    assign n_0_1_po_8_ax = {n_0_1_po_8[3:2], {2{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_1_po_9, n_0_1_po_9_ax;
    assign n_0_1_po_9 = $unsigned(inp[39:36]) * $unsigned(3'b100);
    assign n_0_1_po_9_ax = {n_0_1_po_9[5:4], {4{1'b0}}};

    //weight 4 : 3'b100
    wire [5:0] n_0_1_po_10, n_0_1_po_10_ax;
    assign n_0_1_po_10 = $unsigned(inp[43:40]) * $unsigned(3'b100);
    assign n_0_1_po_10_ax = {n_0_1_po_10[5:4], {4{1'b0}}};

    //accumulate positive/negative subproducts
    wire [7:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_0_ax + n_0_1_po_5_ax + n_0_1_po_8_ax + n_0_1_po_9_ax + n_0_1_po_10_ax;
    wire [6:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 4'b1001 + n_0_1_po_1_ax + n_0_1_po_2_ax + n_0_1_po_6_ax;
    wire signed [8:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) + $signed({1'b1,~n_0_1_sum_neg});

    //relu
    wire [7:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_sum[7:0]);

// layer: 1 - neuron: 0
    //weight 1 : 1'b1
    wire [5:0] n_1_0_po_0, n_1_0_po_0_ax;
    assign n_1_0_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_0_po_0_ax = n_1_0_po_0[5:0];

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [5:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_0_ax;
    wire [3:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = 4'b1010;
    wire signed [6:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) + $signed({1'b1,~n_1_0_sum_neg});

    //relu
    wire [5:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({6{1'b0}}) : $unsigned(n_1_0_sum[5:0]);

// layer: 1 - neuron: 1
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [3:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 4'b1011;

    //WARN: only positive weights. Using identity
    wire [3:0] n_1_1;
    assign n_1_1 = n_1_1_sum_pos;

// layer: 1 - neuron: 2
    //weight 0 : skip
    //weight abs(-1) : 1'b1
    wire [7:0] n_1_2_po_1, n_1_2_po_1_ax;
    assign n_1_2_po_1 = $unsigned(n_0_1) * $unsigned(1'b1);
    assign n_1_2_po_1_ax = n_1_2_po_1[7:0];

    //accumulate positive/negative subproducts
    wire [5:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 6'b100111;
    wire [7:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_1_ax;
    wire signed [8:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) + $signed({1'b1,~n_1_2_sum_neg});

    //relu
    wire [5:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({6{1'b0}}) : $unsigned(n_1_2_sum[5:0]);

// layer: 1 - neuron: 3
    //weight abs(-1) : 1'b1
    wire [5:0] n_1_3_po_0, n_1_3_po_0_ax;
    assign n_1_3_po_0 = $unsigned(n_0_0) * $unsigned(1'b1);
    assign n_1_3_po_0_ax = n_1_3_po_0[5:0];

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [4:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 5'b11101;
    wire [5:0] n_1_3_sum_neg;
    assign n_1_3_sum_neg = n_1_3_po_0_ax;
    wire signed [6:0] n_1_3_sum;
    assign n_1_3_sum = $signed({1'b0,n_1_3_sum_pos}) + $signed({1'b1,~n_1_3_sum_neg});

    //relu
    wire [4:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({5{1'b0}}) : $unsigned(n_1_3_sum[4:0]);

// layer: 1 - neuron: 4
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [3:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 4'b1101;

    //WARN: only positive weights. Using identity
    wire [3:0] n_1_4;
    assign n_1_4 = n_1_4_sum_pos;

// layer: 1 - neuron: 5
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [1:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = 2'b10;

    //WARN: only positive weights. Using identity
    wire [1:0] n_1_5;
    assign n_1_5 = n_1_5_sum_pos;

// argmax: 6 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5
    //comp level 0
    wire cmp_0_0;
    wire [5:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [5:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [5:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [5:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    //comp level 2
    wire cmp_2_0;
    wire [5:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_0_4 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_0_4;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_0_4;

    assign out = argmax_idx_2_0;

endmodule
