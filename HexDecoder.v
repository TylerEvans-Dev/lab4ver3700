module HexDecoder(input [3:0]numb, output reg [7:0]HD);
//more to be added here.
always@(*) 
	begin
	if(numb == 0)
		begin
		//number 0
		HD[0] = 0; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 0; // p3
		HD[4] = 0; // p4
		HD[5] = 0; // p5
		HD[6] = 1; // p6
		HD[7] = 1; // p7
		
		
		end

	else if(numb == 1)
		begin
		//number 1
		HD[0] = 1; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 1; // p3
		HD[4] = 1; // p4
		HD[5] = 1; // p5
		HD[6] = 1; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 2)
		begin
		//number 2
		HD[0] = 0 ; // p0
		HD[1] = 0; // p1
		HD[2] = 1; // p2
		HD[3] = 0; // p3
		HD[4] = 0; // p4
		HD[5] = 1; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 3)
		begin
		//number 3
		HD[0] = 0; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 0; // p3
		HD[4] = 1; // p4
		HD[5] = 1; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 4)
		begin
		//code here
		//number 4
		HD[0] = 1; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 1; // p3
		HD[4] = 1; // p4
		HD[5] = 0; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 5)
		begin
		//number 5 
		HD[0] = 0; // p0
		HD[1] = 1; // p1
		HD[2] = 0; // p2
		HD[3] = 0; // p3
		HD[4] = 1; // p4
		HD[5] = 0; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 6)
		begin
		//number 6 
		HD[0] = 0; // p0
		HD[1] = 1; // p1
		HD[2] = 0; // p2
		HD[3] = 0; // p3
		HD[4] = 0; // p4
		HD[5] = 0; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 7)
		begin
		//number 7
		HD[0] = 0; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 1; // p3
		HD[4] = 1; // p4
		HD[5] = 1; // p5
		HD[6] = 1; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 8)
		begin
		//number 8
		HD[0] = 0; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 0; // p3
		HD[4] = 0; // p4
		HD[5] = 0; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
	else if(numb == 9)
		begin
		//numb 9
		HD[0] = 0; // p0
		HD[1] = 0; // p1
		HD[2] = 0; // p2
		HD[3] = 1; // p3
		HD[4] = 1; // p4
		HD[5] = 0; // p5
		HD[6] = 0; // p6
		HD[7] = 1; // p7
		end
		else if(numb == 10)
		begin
		//value .
		HD[0] = 1; // p0
		HD[1] = 1; // p1
		HD[2] = 1; // p2
		HD[3] = 1; // p3
		HD[4] = 1; // p4
		HD[5] = 1; // p5
		HD[6] = 1; // p6
		HD[7] = 0; // p7
		end
else 
	begin
	//else codehere
		//will turn all off in the case of   
		HD[0] = 0;
		HD[1] = 0;
		HD[2] = 0;
		HD[3] = 0;
		HD[4] = 0;
		HD[5] = 0;
		HD[6] = 0;
		HD[7] = 0;
	end
end
endmodule 