module up_down_counter #(parameter width = 4 )(
	input clk , reset ,up_down,
	output reg [width-1:0] counts 
);
	always@ (posedge clk or negedge reset)
	begin
		if(!reset)
			counts <= 0;
		else 
		begin
			if(up_down)
				counts <= counts+1 ;
			else
				counts <= counts-1;
		end
	end

endmodule