 
/****************************************************************************************************************************************************************************************/
 
module top(input logic clk, reset,
	   output logic [31:0] writedata, adr,
	   output logic memwrite);
 
	logic [31:0] readdata;
	
  mips mips(clk, reset, adr, writedata, memwrite, readdata);/* Microprocessor (control & datapath) */
  mem mem(clk, memwrite, adr, writedata, readdata);/* Memory */
endmodule 
 
/****************************************************************************************************************************************************************************************/
 
module mips(input logic clk, reset,
	    output logic [31:0] adr, writedata,
	    output logic memwrite,
	    input logic [31:0] readdata);   
	    
	logic zero, pcen, irwrite, regwrite, alusrca, iord, memtoreg, regdst;
	logic [1:0] alusrcb, pcsrc;
	logic [2:0] alucontrol;
	logic [5:0] op, funct;
				 
	 controller c(clk, reset, op, funct, zero, pcen, memwrite, irwrite, regwrite,
		      alusrca, iord, memtoreg, regdst, alusrcb, pcsrc, alucontrol);
	 datapath dp(clk, reset, pcen, irwrite, regwrite,alusrca, iord, memtoreg, regdst,
		     alusrcb, pcsrc, alucontrol, op, funct, zero, adr, writedata, readdata);
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module mem(input logic clk, we,
	   input logic [31:0] a, wd,
	   output logic [31:0] rd);
 
	logic [31:0] RAM[63:0];
 
	initial begin
		$readmemh("C:/Users/Eric/Desktop/NEWece469/memfile.dat",RAM);
 	end
	
  assign rd = RAM[a[31:2]]; /* Word aligned */
 
	always_ff @(posedge clk) begin
		if (we) begin
			RAM[a[31:2]] <= wd;
		end
	end
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module controller(input logic clk, reset,
		  input logic [5:0] op, funct,
		  input logic zero,
		  output logic pcen, memwrite, irwrite, regwrite,
		  output logic alusrca, iord, memtoreg, regdst,
		  output logic [1:0] alusrcb, pcsrc,
		  output logic [2:0] alucontrol);
 
	logic [1:0] aluop;
	logic branch, pcwrite;
	
	/* PC enable is high only when there is a jump (pc write signal) or a BEQ (branch & zero) */
	assign pcen = (pcwrite | (branch & zero));
 
	maindec md(clk, reset, op, pcwrite, memwrite, irwrite, regwrite,
               alusrca, branch, iord, memtoreg, regdst, alusrcb, pcsrc, aluop); 
	aludec ad(funct, aluop, alucontrol);
 endmodule 
 
/****************************************************************************************************************************************************************************************/
 
module datapath(input logic clk, reset,
		input logic pcen, irwrite, regwrite,
		input logic alusrca, iord, memtoreg, regdst,
		input logic [1:0] alusrcb, pcsrc,
		input logic [2:0] alucontrol,
		output logic [5:0] op, funct,
		output logic zero,
		output logic [31:0] adr, writedata,
		input logic [31:0] readdata);
 
    	/* INTERNAL SIGNALS OF DATAPATH */
	logic [4:0] writereg;  
	logic [31:0] pcnext, pc;
	logic [31:0] instr, data, srca, srcb;
	logic [31:0] a, b;
	logic [31:0] aluresult, aluout;
  	logic [31:0] signimm; /* Sign-extended immediate */
  	logic [31:0] signimmsh; /* Sign-extended immediate shifted left by 2 */
	logic [31:0] wd3, rd1, rd2;
 
	assign op = instr[31:26];
	assign funct = instr[5:0];
	assign writedata = b;
 
	flopr_en #(32)  pcreg(clk, reset, pcnext, pcen, pc);
	mux3 #(32) 	pc_next(aluresult, aluout, {pc[3:0], instr[25:0], 2'b00}, pcsrc,  pcnext); 
	flopr_en #(32)  Instr(clk, reset, readdata, irwrite, instr); /* Instruction register: outside Instr/Data memory on datapath */
 
	assign adr = iord ? aluout : pc; /* Assign the address going into Instr/ Data memory */
 
 	flopr #(32)	Data(clk, reset, readdata, data);/* Data register: outside the Instr/Data memory on datapath */
 
  	assign wd3 = memtoreg ? data : aluout;/* Assign the value to write into the register file on datapath */
	assign writereg = regdst ? instr[15:11] : instr[20:16];  /* Assign the A3 value going into the register file */ 
 
	regfile  	rf(clk, regwrite, instr[25:21], instr[20:16], writereg, wd3, rd1, rd2); /* Declare register file */
	flopr #(32) 	SourceA(clk, reset, rd1, a);/* Declare register source A and source B */
	flopr #(32) 	SourceB(clk, reset, rd2, b);
 
 	assign srca = alusrca ? a : pc; /* Assign the ALU source A to either the content of reg A or PC */
 
	mux4 #(32) muxfour(b, 32'b100, signimm, signimmsh, alusrcb, srcb);  /* Assign the ALU soure B */
	signext 	Immsigext(instr[15:0], signimm);  /* Sign extend the immediate value */ 
	sl2		immsh(signimm, signimmsh);  /* Shift the sign extened number to the left by two */
	alu 		TheALU(srca, srcb, alucontrol, aluresult, zero);
	flopr #(32)	aluregister(clk, reset, aluresult, aluout);  /* Declare a register at the output of the ALU */
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module maindec(input logic clk, reset,
	       input logic [5:0] op,
	       output logic pcwrite, memwrite, irwrite, regwrite,
	       output logic alusrca, branch, iord, memtoreg, regdst,
	       output logic [1:0] alusrcb, pcsrc,
	       output logic [1:0] aluop);
 
	parameter FETCH = 4'b0000; 		// State 0
	parameter DECODE = 4'b0001;	 	// State 1
	parameter MEMADR = 4'b0010; 		// State 2
	parameter MEMRD = 4'b0011; 		// State 3
	parameter MEMWB = 4'b0100; 		// State 4
	parameter MEMWR = 4'b0101; 		// State 5
	parameter RTYPEEX = 4'b0110;	 	// State 6
	parameter RTYPEWB = 4'b0111; 		// State 7
	parameter BEQEX = 4'b1000; 		// State 8
	parameter ADDIEX = 4'b1001; 		// State 9
	parameter ADDIWB = 4'b1010; 		// state 10
	parameter JEX = 4'b1011; 		// State 11
 
	parameter LW = 6'b100011; 		// Opcode for lw
	parameter SW = 6'b101011; 		// Opcode for sw
	parameter RTYPE = 6'b000000;		// Opcode for R-type
	parameter BEQ = 6'b000100; 		// Opcode for beq
	parameter ADDI = 6'b001000; 		// Opcode for addi
	parameter J = 6'b000010; 		// Opcode for j
	 
	logic [3:0] state, nextstate;
	logic [14:0] controls;
 
	/* State register */
	always_ff @(posedge clk or posedge reset) begin
		if (reset) begin
			state <= FETCH;
		end
	 	else begin
			state <= nextstate;
		end
	end
	
  /* Next state logic */
	always_comb begin  
		case(state)
			FETCH: nextstate = DECODE;/* Nextstate for FETCH is always Decode */
		 
			DECODE: /* Find nextstate for Decode */
				case(op)
					LW: nextstate = MEMADR;
					SW: nextstate = MEMADR;
					RTYPE: nextstate = RTYPEEX;
					BEQ: nextstate = BEQEX;
					ADDI: nextstate = ADDIEX;
					J: nextstate = JEX;
					default: nextstate = 4'bxxxx; // should never happen
				endcase 
		 	MEMADR: /* Nextstate for MemAdr: can only be lw or sw */
				case(op) 
					LW: nextstate = MEMRD;
					SW: nextstate = MEMWR;
					default: nextstate = 4'bxxxx; //should never happen
				endcase
	    
		 	MEMRD: nextstate = MEMWB; 		/* Nextstate for MemRead: only instruction that can take this path is a lw, next state must be MemWriteback */
		 	MEMWB: nextstate = FETCH; 		/* NExtstate for MemWriteback: has to go directly back to the fetch state */
		 	MEMWR: nextstate = FETCH; 		/* Nextstate for MemWrite: instruction has to be a sw */
		 	RTYPEEX: nextstate = RTYPEWB; 		/* Nextstate for R-type Execute: after the execution, the next state must be ALU writeback */
		 	RTYPEWB: nextstate = FETCH; 		/* Nextstate for ALU Writeback: must return to fetch new instruction */
		 	BEQEX: nextstate = FETCH; 		/* Nextstate for Branch: must retuen and fetch new instruction */
		 	ADDIEX: nextstate = ADDIWB; 		/* Nextstate for ADDI Execute: needs to writeback the ADDI result */
		 	ADDIWB: nextstate = FETCH;  		/* Nextstate for ADDI WritebackL must return to Fetch new instruction */
		 	JEX: nextstate = FETCH; 		/* NExtstate for a Jump: needs to update pc in Fetch state */
			default: nextstate = 4'bx; 		/* Should never happen */
		endcase
	end
 
	/* Control output logic */
	assign {pcwrite, memwrite, irwrite, regwrite, alusrca, branch, iord, memtoreg, regdst,  
 		alusrcb, pcsrc, aluop} = controls; 
 
	always_comb begin
		case(state)
			FETCH: 		controls = 15'h5010;
			DECODE: 	controls = 15'h0030;
			MEMADR:  	controls = 15'h0420; 
			MEMRD: 		controls = 15'h0100;
			MEMWB: 		controls = 15'h0880;
			MEMWR: 		controls = 15'h2100;
			RTYPEEX: 	controls = 15'h0402;
			RTYPEWB:	controls = 15'h0840;
			BEQEX: 		controls = 15'h0605;
			ADDIEX: 	controls = 15'h0420;
			ADDIWB: 	controls = 15'h0800;
			JEX:		controls = 15'h4008;
			default: 	controls = 15'hxxxx; /* Should never happen */
		endcase
	end
endmodule  
 
/****************************************************************************************************************************************************************************************/
 
module aludec(input logic [5:0] funct,
	      input logic [1:0] aluop,
	      output logic [2:0] alucontrol);
 
	always_comb begin
		case(aluop)
			2'b00: alucontrol = 3'b010; //add (for lw/sw/addi)
			2'b01: alucontrol = 3'b110; //sub (for beq)
			default: 
				case(funct) //R-type instructions
					6'b100000: alucontrol = 3'b010; //add
					6'b100010: alucontrol = 3'b110; //sub
					6'b100100: alucontrol = 3'b000; //and
					6'b100101: alucontrol = 3'b001; //or
					6'b101010: alucontrol = 3'b111; //slt
					default: alucontrol = 3'bxxx; //???
				endcase
		endcase
	end
endmodule 
 
/****************************************************************************************************************************************************************************************/
 
module mux3 #(parameter WIDTH = 8)
	     (input logic [WIDTH-1:0] d0, d1, d2,
	      input logic [1:0] s,
	      output logic [WIDTH-1:0] y);
 
	assign #1 y = s[1] ? d2 : (s[0] ? d1 : d0);
 
endmodule 
 
/****************************************************************************************************************************************************************************************/
 
module mux4 #(parameter WIDTH = 8)
	
	(input logic [WIDTH-1:0] d0, d1, d2, d3,
	 input logic [1:0] s,
	 output logic [WIDTH-1:0] y);
 
	always_comb begin
		case(s)
			2'b00: y = d0;
			2'b01: y = d1;
			2'b10: y = d2;
			2'b11: y = d3;
		endcase
	end
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module flopr #(parameter WIDTH = 8)
 
	(input logic clk, reset,
	 input logic [WIDTH-1:0] d, 
	 output logic [WIDTH-1:0] q);
 
	always_ff @(posedge clk, posedge reset) begin
		if (reset) begin
			q <= 0;
		end
		else begin
			q <= d;
		end
	end
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module regfile(input logic clk, 
	       input logic we3,
	       input logic [4:0] ra1, ra2, wa3,
               input logic [31:0] wd3,
	       output logic [31:0] rd1, rd2);
 
	logic [31:0] rf[31:0];
 
	always_ff @(posedge clk) begin
		if (we3) rf[wa3] <= wd3;
	end  
	
	assign rd1=(ra1 !=0) ? rf[ra1] : 0;
	assign rd2=(ra2 !=0) ? rf[ra2] : 0; 
 
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module sl2(input logic [31:0] a, 
	  output logic [31:0] y);
 
  assign y = {a[29:0], 2'b00}; /* Shift left by 2 */
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module flopr_en #(parameter WIDTH = 8)
        (input logic clk, reset,
        input logic [WIDTH-1:0] d,
	input logic enable,
        output logic [WIDTH-1:0] q);
	
	always_ff @(posedge clk, posedge reset)begin
		if (reset) begin
			q <= 0;
		end
		else begin
			if(enable)
			q <= d;
		end
	end
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module signext(input logic [15:0] a, 
	       output logic [31:0] y);
 
	assign y = {{16{a[15]}}, a}; 
endmodule
 
/****************************************************************************************************************************************************************************************/
 
module alu(input logic [31:0] a, b,
	   input logic [2:0] f,
	   output logic [31:0] y,
	   output logic zero);  
	
	wire [31:0] ANDed, ORed, SLT, sum, cout, bn;
	wire set_less;
	reg zero_detect;
 
	assign bn = b ^ f[2];
  
	assign sum = a + bn;
	assign ANDed = a & bn; 
	assign ORed = a | bn;
  assign set_less = sum[31]; /* Set less than, A < B then the first digit of the sum will be 1 */
	assign SLT = {{31'b0000000000000000000000000000000}, set_less};
  assign zero = !(|y); /* Set the zero flag if there aren't any 1's in the output */
	assign y = f[1] ? (f[0] ? SLT : sum ): (f[0] ? ORed : ANDed);
endmodule
 
/****************************************************************************************************************************************************************************************/