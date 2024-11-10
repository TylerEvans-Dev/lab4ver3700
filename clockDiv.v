module clockDiv(input FC,output reg SC);
reg [31:0]count = 0;
always @(posedge FC) 
	begin
		
		//checks if the count is 25 million
		// then count = 0
		if (count == 25_000_000)
			begin 
				count = 0;
				SC = ~(SC);
			
			end
		
		//if not count. 
		else
			begin
				count = count + 1;
			end
	end
endmodule 