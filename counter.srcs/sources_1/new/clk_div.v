module clk_div #(parameter in_freq =7_000_000 , parameter terget_freq =1)(
	input clk , reset ,
	output reg o_clk
);
	localparam threshold = (in_freq/(2*terget_freq)) -1;
	localparam counts = $clog2(threshold) ;
	reg [counts :0] counter ;
	always@ (posedge clk or negedge reset)
	begin
		if(!reset)
		begin
			counter <= 0;
			o_clk <= 0;
		end
		else
		begin
			counter <= counter +1 ;
			if(threshold == counter)
				begin
					o_clk <= ~o_clk;
					counter <= 0; 
				end
		end
	end
endmodule