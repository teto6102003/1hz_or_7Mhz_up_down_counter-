module top #(parameter width = 8 , parameter target_freq = 1)(
	input sys_clk , reset,up_down,
	output [width-1:0]counts
);
	wire pll_clk ,div_clk ;
	clk_div #(.in_freq(7_000_000),.terget_freq(target_freq))
	 div1 (.reset(reset),
	.clk(pll_clk),
	.o_clk(div_clk));
	up_down_counter #(.width(8)) 
	c1(.clk(div_clk),
	.up_down(up_down),
	.reset(reset),
	.counts(counts));
	
	 clk_wiz_0 pll_1
      (
       // Clock out ports
       .clk_out1(pll_clk),     // output clk_out1
       // Status and control signals
       .resetn(reset), // input resetn
      // Clock in ports
       .clk_in1(sys_clk));      // input clk_in1
endmodule