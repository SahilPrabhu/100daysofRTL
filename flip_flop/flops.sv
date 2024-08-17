module flops(input logic clk, reset,
             input logic [7:0] D,
             output logic [7:0] Q_noreset, Q_syncreset, Q_asyncreset);
  
  // no reset case
  always_ff @(posedge clk)
    Q_noreset <= D;
  
  // synchronous rese
  always_ff @(posedge clk)
    begin
    if(reset)
      Q_syncreset <= 8'h0;
    else 
      Q_syncreset <= D;
    end
  // asynchronous reset
  always_ff @(posedge clk or negedge reset)
    begin
      if(reset)
        Q_asyncreset <= 8'h0;
      else 
        Q_asyncreset <= D;
    end
endmodule
