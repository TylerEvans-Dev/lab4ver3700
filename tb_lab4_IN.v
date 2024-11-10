module tb_lab4_IN;


//since it is up to me to test there are a few things I will test
//I will test the HEX decoder since mine is a custom version. 
//and I will test the clock div. 
reg [3:0]testnumb;
wire [7:0]THEX;
reg [7:0]HEX; 
HexDecoder ob1(.numb(testnumb), .HD(THEX));
//to test the hex I will do two values since I can see what the
//values are on the display and if they are working correctly
reg s;
reg st;
reg r;
reg clk;
wire [7:0]res;
//checking the timer HD1 is the ouput value hD1 = 7:0;
lab4Timer ob2(.St(s), .Stp(st), .R(r), .Clk(clk), .HD1(res));

initial begin
clk = 0;
forever #1 clk = ~(clk);

end
 
initial begin
//now checking the timer values
$monitor("start %d stop %d reset %d, hex %b", s , st, r, res);
//testing start 
$display("start state");
s = 0;
st =1;
r = 0;
s = 1;
#23;
//testing rest
$display("stop state");
$monitor("start %d stop %d reset %d, hex %b", s , st, r, res);
s = 1;
st =0;
r = 1;
s = 1;
r=0;
#23;
//testing stop
$display("stop state");
$monitor("start %d stop %d reset %d, hex %b", s , st, r, res);
s = 1;
st =0;
r = 0;
s = 1;
st = 1;
#23;
//testing restart

$display("restart state");
s = 0;
st =1;
r = 0;
s = 1;

#10;



//hex decoder value 0
testnumb = 0;
HEX[0] = 0;
HEX[1] = 0;
HEX[2] = 0;
HEX[3] = 0;
HEX[4] = 0;
HEX[5] = 0;
HEX[6] = 1;
HEX[7] = 1;
#1;
if(THEX == HEX) begin
	$display("test hex == 0 passed");
end
else begin
	$display("the value comming out %d, value expected %d", THEX, HEX);
	$display("test hex == 0 failed");
end

//hex decoder value 8
testnumb = 8;
HEX[0] = 0;
HEX[1] = 0;
HEX[2] = 0;
HEX[3] = 0;
HEX[4] = 0;
HEX[5] = 0;
HEX[6] = 0;
HEX[7] = 1;
#1;
if(THEX == HEX) begin
	$display("test hex == 8 passed");
end
else begin
	$display("test hex == 8 failed");
end
end




endmodule 