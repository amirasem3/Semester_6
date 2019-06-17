module memory(clk,reset,address,data_in,data_out,rwn,start,ready,address_test1,address_test2,address_test3,data_test1,data_test2,data_test3);
	input clk,reset,start,rwn;
	input [31:0] address,address_test1,address_test2,address_test3;
	input [31:0] data_in;
	output [31:0] data_test1,data_test2,data_test3;
	output reg [31:0] data_out;
	output ready;
	reg [7:0] array[127:0];
	reg state;
	reg [15:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;
	reg rwn_t;
	integer i;
	assign ready=~state;
	
	
	
	
	assign data_test1={array[address_test1[15:0]+3][7:0], array[address_test1[15:0]+2][7:0], array[address_test1[15:0]+1][7:0], array[address_test1[15:0]][7:0]};
	assign data_test2={array[address_test2[15:0]+3][7:0], array[address_test2[15:0]+2][7:0], array[address_test2[15:0]+1][7:0], array[address_test2[15:0]][7:0]};
	assign data_test3={array[address_test3[15:0]+3][7:0], array[address_test3[15:0]+2][7:0], array[address_test3[15:0]+1][7:0], array[address_test3[15:0]][7:0]};
	

	
		

	
	
	always @(posedge clk or posedge reset)
	begin
		if(reset) begin
			for(i=0; i<128; i=i+1) begin
				array[i] <= 8'b0000_0000;
			end
			state=0;
			array[0] <= 8'b0001_0001;
			array[1] <= 8'b0100_0000;
			array[2] <= 8'b0000_0000;
			array[3] <= 8'b0000_0000;
			array[4] <= 8'b0000_0000;
			
			array[5] <= 8'b0001_0000;
			array[6] <= 8'b0000_0010;
			
			array[10] <= 8'b0001_0000;
			array[11] <= 8'b0000_0110;
			
			array[15] <= 8'b0001_0000;
			array[16] <= 8'b0000_0011;
			
			
//			3BYPUSH
			
//			ENVOKE
			array[20] <= 8'b1011_0110;
			array[21] <= 8'b0010_0000;
			array[22] <= 8'b0000_0000;		
			array[32] <= 8'b0000_0011;
			array[34] <= 8'b0000_1000;
//			2WIDE ILOAD
			array[36] <= 8'b1100_0000;
			array[37] <= 8'b0001_0101;
			array[38] <= 8'b0000_0001;
			array[40] <= 8'b1100_0000;
			array[41] <= 8'b0001_0101;
			array[42] <= 8'b0000_0010;
//			1IAND
			array[44] <= 8'b0111_1110;
			
//			RET
			
			array[45] <= 8'b1010_1100;
		
		
		
			
			
		end
		else if(start & ~state) begin
			ad_t=address[15:0];
			rwn_t=rwn;
			data_t=data_in;
			counter=address[1:0];
			state=1;
		end
		else if(|counter && state)
			counter=counter-1;
		else if(state) begin
			if(rwn_t)
				data_out={array[ad_t+3], array[ad_t+2], array[ad_t+1], array[ad_t]};
			else begin
				array[ad_t]   <= data_t[7:0];
				array[ad_t+1] <= data_t[15:8];
				array[ad_t+2] <= data_t[23:16];
				array[ad_t+3] <= data_t[31:24];
			end
			state=0;
		end
	end
endmodule
