module mux21_tb();
  logic [7:0] a,b;
  logic sel;
  logic [7:0] y;
  
  mux21 dut (.*);
  
  initial begin
    for(int i = 0 ; i<10 ; i++) begin
      a = $urandom_range(0,8'hFF);
      b = $urandom_range(0,8'hFF);
      sel = $random % 2;
      #10;
    end
  end
  
  initial begin
      $dumpfile("mux21.vcd");
      $dumpvars(0, mux21_tb);
  end

endmodule
