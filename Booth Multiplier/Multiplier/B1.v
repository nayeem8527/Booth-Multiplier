module booth_multiplier(P,multiplicand,multiplier,start,clk,busy);
input [3:0] multiplicand,multiplier;
input start,clk;
output reg [8:0] P;
output reg busy;
reg [8:0] A,S;
reg [3:0] count;

always @(posedge clk)
begin
	if(start) begin                     //setting all the initial conditions
	A = 9'b0; // 9 bit
	S = 9'b0; // 9 bit
	P = 9'b0; // 9 bit
	A = A + multiplicand;
	A = A << 5;
	S = S + (~multiplicand + 1);
	S = S << 5;
	P = P + multiplier;
	P = P << 1;
	count = 4'b0; // 4 bit
	busy = 1'b1;
	end

	else begin
		if(count<4) begin
			if(P[1]==0 && P[0]==1) begin                  //checking the least significant bit and the bit after that 01
				P = P + A;
				if(P[8] == 0)begin
					P = P >> 1;	                     //right arithmatic shift
				end
				else if(P[8] == 1) begin
					P = P >> 1;                     //right arithmatic shift
					P[8] = 1;
				end
			end
		
			else if(P[1]==1 && P[0]==0)begin		//checking the least significant bit and the bit after that 10
				P = P + S;				
				if(P[8] == 0)begin
					P = P >> 1;	
				end
				else if(P[8] == 1) begin
					P = P >> 1;
					P[8] = 1;
				end
			end
			else begin    
				if(P[8] == 0)begin			//checking the least significant bit and the bit after that 00 or 11 
					P = P >> 1;	
				end
				else if(P[8] == 1) begin
					P = P >> 1;
					P[8] = 1;
				end
			end
			count = count + 1'b1;
		end
		else
			busy = 1'b0;
	end
end
	
endmodule