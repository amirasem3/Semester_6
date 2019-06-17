module rom(address,data);
input [6:0] address; //needs to be changed
output [22:0] data;	//needs to be changed
reg [31:0] array[255:0];	//needs to be changed
always @*
begin
array[0]=23'b00000000000000000000000;//to program the rom
array[1]=23'b00000000000000000000000;
end
assign data=array[address];
endmodule