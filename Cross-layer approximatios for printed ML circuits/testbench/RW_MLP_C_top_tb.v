`timescale 1ns/1ps

`define EOF 32'hFFFF_FFFF
`define NULL 0

module top_tb();

parameter period = 200000000;
parameter WIDTH_A = 4;
parameter NUM_A = 11;
parameter OUTWIDTH = 3;

reg  [WIDTH_A-1:0] at[NUM_A-1:0];
wire [NUM_A*WIDTH_A-1:0] inp;
wire [OUTWIDTH-1:0] out;

wire [WIDTH_A:0] r;


top DUT(.inp(inp),
        .predo(),
        .out(out)
        );


integer inFile,outFile,i;
initial
begin
        $display($time, " << Starting the Simulation >>");
        inFile = $fopen("./../inputs.txt","r");
        if (inFile == `NULL) begin
                $display($time, " file not found");
                $finish;
        end
        outFile = $fopen("./sim_outputs.txt");
        while (!$feof(inFile)) begin
                for (i=0;i<NUM_A;i=i+1) begin
                        $fscanf(inFile,"%d ",at[i]);
                end
                $fscanf(inFile,"\n");
                #(period)
                $fwrite(outFile,"%d\n", out+3);

        end
        #(period)
        $display($time, " << Finishing the Simulation >>");
        $fclose(outFile);
        $fclose(inFile);
        $finish;
end


genvar gi;
generate
for (gi=0;gi<NUM_A;gi=gi+1) begin
        assign inp[(gi+1)*WIDTH_A-1:gi*WIDTH_A] = at[gi];
end
endgenerate


endmodule

