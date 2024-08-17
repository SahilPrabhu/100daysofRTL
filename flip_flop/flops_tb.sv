module flops_tb();
  logic clk,reset;
  logic [7:0] D;
  logic [7:0] Q_noreset,Q_syncreset,Q_asyncreset;
  
  flops dut (.*);
  
  initial begin 
    clk = 0; 
    forever 
      clk = #30 ~clk; 
  end
  
  initial begin
    reset = 1'b1;
    D = 8'h0F;
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    D = 8'hFE;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    reset = 1'b1;
    @(posedge clk);
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    @(posedge clk);
    $finish();
  end
  initial begin
    $dumpfile("flops.vcd");
    $dumpvars(0, flops_tb);
  end
endmodule
