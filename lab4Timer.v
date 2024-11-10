module lab4Timer(input St, input Stp, input R, input Clk, output [7:0]HD1);
//reg
reg [3:0] numb = 0;
reg countOn = 1;

//for using clock divider
wire pulse;
clockDiv c(.FC(Clk), .SC(pulse));

//for using the hex display
HexDecoder dis(.numb(numb), .HD(HD1));


// Control logic
always @(negedge St, negedge Stp, posedge R) begin
	
	//turns off count on if tapped
	if(Stp == 0| R == 1) begin
		countOn = 0;
	end
	
	// sets count on if started
	else if(St == 0) begin
		countOn = 1;
	end
	
	else
		; // latch inferred for "countOn"

end

// Counting logic

//todo do a spearte clock with the verilog code.
always @(posedge pulse, posedge R) begin //commit out if tb 
//always @(posedge Clk, posedge R) // begin uncomment to do tb
	//if reset pressed starts from zero
	if(R) begin
		numb = 0;
	end
	else begin
		if(countOn == 1 && numb >= 9) begin
			numb = 0;
		end
		else begin
			if(countOn == 1) begin
				numb = numb + 1;
			end
		end
	end
end
endmodule 