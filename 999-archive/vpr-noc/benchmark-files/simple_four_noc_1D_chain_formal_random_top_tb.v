//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: simple_four_noc_1D_chain
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Feb  3 16:06:20 2025
//-------------------------------------------
//----- Default net type -----
`default_nettype none

module simple_four_noc_1D_chain_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] reset;

// ----- FPGA fabric outputs -------
	wire [0:0] data_out_0__gfpga;
	wire [0:0] data_out_1__gfpga;
	wire [0:0] data_out_2__gfpga;
	wire [0:0] data_out_3__gfpga;
	wire [0:0] data_out_4__gfpga;
	wire [0:0] data_out_5__gfpga;
	wire [0:0] data_out_6__gfpga;
	wire [0:0] data_out_7__gfpga;
	wire [0:0] data_out_8__gfpga;
	wire [0:0] data_out_9__gfpga;
	wire [0:0] data_out_10__gfpga;
	wire [0:0] data_out_11__gfpga;
	wire [0:0] data_out_12__gfpga;
	wire [0:0] data_out_13__gfpga;
	wire [0:0] data_out_14__gfpga;
	wire [0:0] data_out_15__gfpga;
	wire [0:0] data_out_16__gfpga;
	wire [0:0] data_out_17__gfpga;
	wire [0:0] data_out_18__gfpga;
	wire [0:0] data_out_19__gfpga;
	wire [0:0] data_out_20__gfpga;
	wire [0:0] data_out_21__gfpga;
	wire [0:0] data_out_22__gfpga;
	wire [0:0] data_out_23__gfpga;
	wire [0:0] data_out_24__gfpga;
	wire [0:0] data_out_25__gfpga;
	wire [0:0] data_out_26__gfpga;
	wire [0:0] data_out_27__gfpga;
	wire [0:0] data_out_28__gfpga;
	wire [0:0] data_out_29__gfpga;
	wire [0:0] data_out_30__gfpga;
	wire [0:0] data_out_31__gfpga;
	wire [0:0] data_out_32__gfpga;
	wire [0:0] data_out_33__gfpga;
	wire [0:0] data_out_34__gfpga;
	wire [0:0] data_out_35__gfpga;
	wire [0:0] data_out_36__gfpga;
	wire [0:0] data_out_37__gfpga;
	wire [0:0] data_out_38__gfpga;
	wire [0:0] data_out_39__gfpga;
	wire [0:0] data_out_40__gfpga;
	wire [0:0] data_out_41__gfpga;
	wire [0:0] data_out_42__gfpga;
	wire [0:0] data_out_43__gfpga;
	wire [0:0] data_out_44__gfpga;
	wire [0:0] data_out_45__gfpga;
	wire [0:0] data_out_46__gfpga;
	wire [0:0] data_out_47__gfpga;
	wire [0:0] data_out_48__gfpga;
	wire [0:0] data_out_49__gfpga;
	wire [0:0] data_out_50__gfpga;
	wire [0:0] data_out_51__gfpga;
	wire [0:0] data_out_52__gfpga;
	wire [0:0] data_out_53__gfpga;
	wire [0:0] data_out_54__gfpga;
	wire [0:0] data_out_55__gfpga;
	wire [0:0] data_out_56__gfpga;
	wire [0:0] data_out_57__gfpga;
	wire [0:0] data_out_58__gfpga;
	wire [0:0] data_out_59__gfpga;
	wire [0:0] data_out_60__gfpga;
	wire [0:0] data_out_61__gfpga;
	wire [0:0] data_out_62__gfpga;
	wire [0:0] data_out_63__gfpga;

// ----- Benchmark outputs -------
	wire [0:0] data_out_0__bench;
	wire [0:0] data_out_1__bench;
	wire [0:0] data_out_2__bench;
	wire [0:0] data_out_3__bench;
	wire [0:0] data_out_4__bench;
	wire [0:0] data_out_5__bench;
	wire [0:0] data_out_6__bench;
	wire [0:0] data_out_7__bench;
	wire [0:0] data_out_8__bench;
	wire [0:0] data_out_9__bench;
	wire [0:0] data_out_10__bench;
	wire [0:0] data_out_11__bench;
	wire [0:0] data_out_12__bench;
	wire [0:0] data_out_13__bench;
	wire [0:0] data_out_14__bench;
	wire [0:0] data_out_15__bench;
	wire [0:0] data_out_16__bench;
	wire [0:0] data_out_17__bench;
	wire [0:0] data_out_18__bench;
	wire [0:0] data_out_19__bench;
	wire [0:0] data_out_20__bench;
	wire [0:0] data_out_21__bench;
	wire [0:0] data_out_22__bench;
	wire [0:0] data_out_23__bench;
	wire [0:0] data_out_24__bench;
	wire [0:0] data_out_25__bench;
	wire [0:0] data_out_26__bench;
	wire [0:0] data_out_27__bench;
	wire [0:0] data_out_28__bench;
	wire [0:0] data_out_29__bench;
	wire [0:0] data_out_30__bench;
	wire [0:0] data_out_31__bench;
	wire [0:0] data_out_32__bench;
	wire [0:0] data_out_33__bench;
	wire [0:0] data_out_34__bench;
	wire [0:0] data_out_35__bench;
	wire [0:0] data_out_36__bench;
	wire [0:0] data_out_37__bench;
	wire [0:0] data_out_38__bench;
	wire [0:0] data_out_39__bench;
	wire [0:0] data_out_40__bench;
	wire [0:0] data_out_41__bench;
	wire [0:0] data_out_42__bench;
	wire [0:0] data_out_43__bench;
	wire [0:0] data_out_44__bench;
	wire [0:0] data_out_45__bench;
	wire [0:0] data_out_46__bench;
	wire [0:0] data_out_47__bench;
	wire [0:0] data_out_48__bench;
	wire [0:0] data_out_49__bench;
	wire [0:0] data_out_50__bench;
	wire [0:0] data_out_51__bench;
	wire [0:0] data_out_52__bench;
	wire [0:0] data_out_53__bench;
	wire [0:0] data_out_54__bench;
	wire [0:0] data_out_55__bench;
	wire [0:0] data_out_56__bench;
	wire [0:0] data_out_57__bench;
	wire [0:0] data_out_58__bench;
	wire [0:0] data_out_59__bench;
	wire [0:0] data_out_60__bench;
	wire [0:0] data_out_61__bench;
	wire [0:0] data_out_62__bench;
	wire [0:0] data_out_63__bench;

// ----- Output vectors checking flags -------
	reg [0:0] data_out_0__flag;
	reg [0:0] data_out_1__flag;
	reg [0:0] data_out_2__flag;
	reg [0:0] data_out_3__flag;
	reg [0:0] data_out_4__flag;
	reg [0:0] data_out_5__flag;
	reg [0:0] data_out_6__flag;
	reg [0:0] data_out_7__flag;
	reg [0:0] data_out_8__flag;
	reg [0:0] data_out_9__flag;
	reg [0:0] data_out_10__flag;
	reg [0:0] data_out_11__flag;
	reg [0:0] data_out_12__flag;
	reg [0:0] data_out_13__flag;
	reg [0:0] data_out_14__flag;
	reg [0:0] data_out_15__flag;
	reg [0:0] data_out_16__flag;
	reg [0:0] data_out_17__flag;
	reg [0:0] data_out_18__flag;
	reg [0:0] data_out_19__flag;
	reg [0:0] data_out_20__flag;
	reg [0:0] data_out_21__flag;
	reg [0:0] data_out_22__flag;
	reg [0:0] data_out_23__flag;
	reg [0:0] data_out_24__flag;
	reg [0:0] data_out_25__flag;
	reg [0:0] data_out_26__flag;
	reg [0:0] data_out_27__flag;
	reg [0:0] data_out_28__flag;
	reg [0:0] data_out_29__flag;
	reg [0:0] data_out_30__flag;
	reg [0:0] data_out_31__flag;
	reg [0:0] data_out_32__flag;
	reg [0:0] data_out_33__flag;
	reg [0:0] data_out_34__flag;
	reg [0:0] data_out_35__flag;
	reg [0:0] data_out_36__flag;
	reg [0:0] data_out_37__flag;
	reg [0:0] data_out_38__flag;
	reg [0:0] data_out_39__flag;
	reg [0:0] data_out_40__flag;
	reg [0:0] data_out_41__flag;
	reg [0:0] data_out_42__flag;
	reg [0:0] data_out_43__flag;
	reg [0:0] data_out_44__flag;
	reg [0:0] data_out_45__flag;
	reg [0:0] data_out_46__flag;
	reg [0:0] data_out_47__flag;
	reg [0:0] data_out_48__flag;
	reg [0:0] data_out_49__flag;
	reg [0:0] data_out_50__flag;
	reg [0:0] data_out_51__flag;
	reg [0:0] data_out_52__flag;
	reg [0:0] data_out_53__flag;
	reg [0:0] data_out_54__flag;
	reg [0:0] data_out_55__flag;
	reg [0:0] data_out_56__flag;
	reg [0:0] data_out_57__flag;
	reg [0:0] data_out_58__flag;
	reg [0:0] data_out_59__flag;
	reg [0:0] data_out_60__flag;
	reg [0:0] data_out_61__flag;
	reg [0:0] data_out_62__flag;
	reg [0:0] data_out_63__flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	simple_four_noc_1D_chain_top_formal_verification FPGA_DUT(
		clk,
		reset,
		data_out_0__gfpga,
		data_out_1__gfpga,
		data_out_2__gfpga,
		data_out_3__gfpga,
		data_out_4__gfpga,
		data_out_5__gfpga,
		data_out_6__gfpga,
		data_out_7__gfpga,
		data_out_8__gfpga,
		data_out_9__gfpga,
		data_out_10__gfpga,
		data_out_11__gfpga,
		data_out_12__gfpga,
		data_out_13__gfpga,
		data_out_14__gfpga,
		data_out_15__gfpga,
		data_out_16__gfpga,
		data_out_17__gfpga,
		data_out_18__gfpga,
		data_out_19__gfpga,
		data_out_20__gfpga,
		data_out_21__gfpga,
		data_out_22__gfpga,
		data_out_23__gfpga,
		data_out_24__gfpga,
		data_out_25__gfpga,
		data_out_26__gfpga,
		data_out_27__gfpga,
		data_out_28__gfpga,
		data_out_29__gfpga,
		data_out_30__gfpga,
		data_out_31__gfpga,
		data_out_32__gfpga,
		data_out_33__gfpga,
		data_out_34__gfpga,
		data_out_35__gfpga,
		data_out_36__gfpga,
		data_out_37__gfpga,
		data_out_38__gfpga,
		data_out_39__gfpga,
		data_out_40__gfpga,
		data_out_41__gfpga,
		data_out_42__gfpga,
		data_out_43__gfpga,
		data_out_44__gfpga,
		data_out_45__gfpga,
		data_out_46__gfpga,
		data_out_47__gfpga,
		data_out_48__gfpga,
		data_out_49__gfpga,
		data_out_50__gfpga,
		data_out_51__gfpga,
		data_out_52__gfpga,
		data_out_53__gfpga,
		data_out_54__gfpga,
		data_out_55__gfpga,
		data_out_56__gfpga,
		data_out_57__gfpga,
		data_out_58__gfpga,
		data_out_59__gfpga,
		data_out_60__gfpga,
		data_out_61__gfpga,
		data_out_62__gfpga,
		data_out_63__gfpga
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	simple_four_noc_1D_chain REF_DUT(
		.clk(clk),
		.reset(reset),
		.data_out({ data_out_63__bench,
		data_out_62__bench,
		data_out_61__bench,
		data_out_60__bench,
		data_out_59__bench,
		data_out_58__bench,
		data_out_57__bench,
		data_out_56__bench,
		data_out_55__bench,
		data_out_54__bench,
		data_out_53__bench,
		data_out_52__bench,
		data_out_51__bench,
		data_out_50__bench,
		data_out_49__bench,
		data_out_48__bench,
		data_out_47__bench,
		data_out_46__bench,
		data_out_45__bench,
		data_out_44__bench,
		data_out_43__bench,
		data_out_42__bench,
		data_out_41__bench,
		data_out_40__bench,
		data_out_39__bench,
		data_out_38__bench,
		data_out_37__bench,
		data_out_36__bench,
		data_out_35__bench,
		data_out_34__bench,
		data_out_33__bench,
		data_out_32__bench,
		data_out_31__bench,
		data_out_30__bench,
		data_out_29__bench,
		data_out_28__bench,
		data_out_27__bench,
		data_out_26__bench,
		data_out_25__bench,
		data_out_24__bench,
		data_out_23__bench,
		data_out_22__bench,
		data_out_21__bench,
		data_out_20__bench,
		data_out_19__bench,
		data_out_18__bench,
		data_out_17__bench,
		data_out_16__bench,
		data_out_15__bench,
		data_out_14__bench,
		data_out_13__bench,
		data_out_12__bench,
		data_out_11__bench,
		data_out_10__bench,
		data_out_9__bench,
		data_out_8__bench,
		data_out_7__bench,
		data_out_6__bench,
		data_out_5__bench,
		data_out_4__bench,
		data_out_3__bench,
		data_out_2__bench,
		data_out_1__bench,
		data_out_0__bench })
	);
// ----- End reference Benchmark Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#1
			clk[0] <= !clk[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		reset <= 1'b0;

		data_out_0__flag[0] <= 1'b0;
		data_out_1__flag[0] <= 1'b0;
		data_out_2__flag[0] <= 1'b0;
		data_out_3__flag[0] <= 1'b0;
		data_out_4__flag[0] <= 1'b0;
		data_out_5__flag[0] <= 1'b0;
		data_out_6__flag[0] <= 1'b0;
		data_out_7__flag[0] <= 1'b0;
		data_out_8__flag[0] <= 1'b0;
		data_out_9__flag[0] <= 1'b0;
		data_out_10__flag[0] <= 1'b0;
		data_out_11__flag[0] <= 1'b0;
		data_out_12__flag[0] <= 1'b0;
		data_out_13__flag[0] <= 1'b0;
		data_out_14__flag[0] <= 1'b0;
		data_out_15__flag[0] <= 1'b0;
		data_out_16__flag[0] <= 1'b0;
		data_out_17__flag[0] <= 1'b0;
		data_out_18__flag[0] <= 1'b0;
		data_out_19__flag[0] <= 1'b0;
		data_out_20__flag[0] <= 1'b0;
		data_out_21__flag[0] <= 1'b0;
		data_out_22__flag[0] <= 1'b0;
		data_out_23__flag[0] <= 1'b0;
		data_out_24__flag[0] <= 1'b0;
		data_out_25__flag[0] <= 1'b0;
		data_out_26__flag[0] <= 1'b0;
		data_out_27__flag[0] <= 1'b0;
		data_out_28__flag[0] <= 1'b0;
		data_out_29__flag[0] <= 1'b0;
		data_out_30__flag[0] <= 1'b0;
		data_out_31__flag[0] <= 1'b0;
		data_out_32__flag[0] <= 1'b0;
		data_out_33__flag[0] <= 1'b0;
		data_out_34__flag[0] <= 1'b0;
		data_out_35__flag[0] <= 1'b0;
		data_out_36__flag[0] <= 1'b0;
		data_out_37__flag[0] <= 1'b0;
		data_out_38__flag[0] <= 1'b0;
		data_out_39__flag[0] <= 1'b0;
		data_out_40__flag[0] <= 1'b0;
		data_out_41__flag[0] <= 1'b0;
		data_out_42__flag[0] <= 1'b0;
		data_out_43__flag[0] <= 1'b0;
		data_out_44__flag[0] <= 1'b0;
		data_out_45__flag[0] <= 1'b0;
		data_out_46__flag[0] <= 1'b0;
		data_out_47__flag[0] <= 1'b0;
		data_out_48__flag[0] <= 1'b0;
		data_out_49__flag[0] <= 1'b0;
		data_out_50__flag[0] <= 1'b0;
		data_out_51__flag[0] <= 1'b0;
		data_out_52__flag[0] <= 1'b0;
		data_out_53__flag[0] <= 1'b0;
		data_out_54__flag[0] <= 1'b0;
		data_out_55__flag[0] <= 1'b0;
		data_out_56__flag[0] <= 1'b0;
		data_out_57__flag[0] <= 1'b0;
		data_out_58__flag[0] <= 1'b0;
		data_out_59__flag[0] <= 1'b0;
		data_out_60__flag[0] <= 1'b0;
		data_out_61__flag[0] <= 1'b0;
		data_out_62__flag[0] <= 1'b0;
		data_out_63__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		reset <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
begin
			if(!(data_out_0__gfpga === data_out_0__bench) && !(data_out_0__bench === 1'bx)) begin
				data_out_0__flag <= 1'b1;
			end else begin
				data_out_0__flag<= 1'b0;
			end
			if(!(data_out_1__gfpga === data_out_1__bench) && !(data_out_1__bench === 1'bx)) begin
				data_out_1__flag <= 1'b1;
			end else begin
				data_out_1__flag<= 1'b0;
			end
			if(!(data_out_2__gfpga === data_out_2__bench) && !(data_out_2__bench === 1'bx)) begin
				data_out_2__flag <= 1'b1;
			end else begin
				data_out_2__flag<= 1'b0;
			end
			if(!(data_out_3__gfpga === data_out_3__bench) && !(data_out_3__bench === 1'bx)) begin
				data_out_3__flag <= 1'b1;
			end else begin
				data_out_3__flag<= 1'b0;
			end
			if(!(data_out_4__gfpga === data_out_4__bench) && !(data_out_4__bench === 1'bx)) begin
				data_out_4__flag <= 1'b1;
			end else begin
				data_out_4__flag<= 1'b0;
			end
			if(!(data_out_5__gfpga === data_out_5__bench) && !(data_out_5__bench === 1'bx)) begin
				data_out_5__flag <= 1'b1;
			end else begin
				data_out_5__flag<= 1'b0;
			end
			if(!(data_out_6__gfpga === data_out_6__bench) && !(data_out_6__bench === 1'bx)) begin
				data_out_6__flag <= 1'b1;
			end else begin
				data_out_6__flag<= 1'b0;
			end
			if(!(data_out_7__gfpga === data_out_7__bench) && !(data_out_7__bench === 1'bx)) begin
				data_out_7__flag <= 1'b1;
			end else begin
				data_out_7__flag<= 1'b0;
			end
			if(!(data_out_8__gfpga === data_out_8__bench) && !(data_out_8__bench === 1'bx)) begin
				data_out_8__flag <= 1'b1;
			end else begin
				data_out_8__flag<= 1'b0;
			end
			if(!(data_out_9__gfpga === data_out_9__bench) && !(data_out_9__bench === 1'bx)) begin
				data_out_9__flag <= 1'b1;
			end else begin
				data_out_9__flag<= 1'b0;
			end
			if(!(data_out_10__gfpga === data_out_10__bench) && !(data_out_10__bench === 1'bx)) begin
				data_out_10__flag <= 1'b1;
			end else begin
				data_out_10__flag<= 1'b0;
			end
			if(!(data_out_11__gfpga === data_out_11__bench) && !(data_out_11__bench === 1'bx)) begin
				data_out_11__flag <= 1'b1;
			end else begin
				data_out_11__flag<= 1'b0;
			end
			if(!(data_out_12__gfpga === data_out_12__bench) && !(data_out_12__bench === 1'bx)) begin
				data_out_12__flag <= 1'b1;
			end else begin
				data_out_12__flag<= 1'b0;
			end
			if(!(data_out_13__gfpga === data_out_13__bench) && !(data_out_13__bench === 1'bx)) begin
				data_out_13__flag <= 1'b1;
			end else begin
				data_out_13__flag<= 1'b0;
			end
			if(!(data_out_14__gfpga === data_out_14__bench) && !(data_out_14__bench === 1'bx)) begin
				data_out_14__flag <= 1'b1;
			end else begin
				data_out_14__flag<= 1'b0;
			end
			if(!(data_out_15__gfpga === data_out_15__bench) && !(data_out_15__bench === 1'bx)) begin
				data_out_15__flag <= 1'b1;
			end else begin
				data_out_15__flag<= 1'b0;
			end
			if(!(data_out_16__gfpga === data_out_16__bench) && !(data_out_16__bench === 1'bx)) begin
				data_out_16__flag <= 1'b1;
			end else begin
				data_out_16__flag<= 1'b0;
			end
			if(!(data_out_17__gfpga === data_out_17__bench) && !(data_out_17__bench === 1'bx)) begin
				data_out_17__flag <= 1'b1;
			end else begin
				data_out_17__flag<= 1'b0;
			end
			if(!(data_out_18__gfpga === data_out_18__bench) && !(data_out_18__bench === 1'bx)) begin
				data_out_18__flag <= 1'b1;
			end else begin
				data_out_18__flag<= 1'b0;
			end
			if(!(data_out_19__gfpga === data_out_19__bench) && !(data_out_19__bench === 1'bx)) begin
				data_out_19__flag <= 1'b1;
			end else begin
				data_out_19__flag<= 1'b0;
			end
			if(!(data_out_20__gfpga === data_out_20__bench) && !(data_out_20__bench === 1'bx)) begin
				data_out_20__flag <= 1'b1;
			end else begin
				data_out_20__flag<= 1'b0;
			end
			if(!(data_out_21__gfpga === data_out_21__bench) && !(data_out_21__bench === 1'bx)) begin
				data_out_21__flag <= 1'b1;
			end else begin
				data_out_21__flag<= 1'b0;
			end
			if(!(data_out_22__gfpga === data_out_22__bench) && !(data_out_22__bench === 1'bx)) begin
				data_out_22__flag <= 1'b1;
			end else begin
				data_out_22__flag<= 1'b0;
			end
			if(!(data_out_23__gfpga === data_out_23__bench) && !(data_out_23__bench === 1'bx)) begin
				data_out_23__flag <= 1'b1;
			end else begin
				data_out_23__flag<= 1'b0;
			end
			if(!(data_out_24__gfpga === data_out_24__bench) && !(data_out_24__bench === 1'bx)) begin
				data_out_24__flag <= 1'b1;
			end else begin
				data_out_24__flag<= 1'b0;
			end
			if(!(data_out_25__gfpga === data_out_25__bench) && !(data_out_25__bench === 1'bx)) begin
				data_out_25__flag <= 1'b1;
			end else begin
				data_out_25__flag<= 1'b0;
			end
			if(!(data_out_26__gfpga === data_out_26__bench) && !(data_out_26__bench === 1'bx)) begin
				data_out_26__flag <= 1'b1;
			end else begin
				data_out_26__flag<= 1'b0;
			end
			if(!(data_out_27__gfpga === data_out_27__bench) && !(data_out_27__bench === 1'bx)) begin
				data_out_27__flag <= 1'b1;
			end else begin
				data_out_27__flag<= 1'b0;
			end
			if(!(data_out_28__gfpga === data_out_28__bench) && !(data_out_28__bench === 1'bx)) begin
				data_out_28__flag <= 1'b1;
			end else begin
				data_out_28__flag<= 1'b0;
			end
			if(!(data_out_29__gfpga === data_out_29__bench) && !(data_out_29__bench === 1'bx)) begin
				data_out_29__flag <= 1'b1;
			end else begin
				data_out_29__flag<= 1'b0;
			end
			if(!(data_out_30__gfpga === data_out_30__bench) && !(data_out_30__bench === 1'bx)) begin
				data_out_30__flag <= 1'b1;
			end else begin
				data_out_30__flag<= 1'b0;
			end
			if(!(data_out_31__gfpga === data_out_31__bench) && !(data_out_31__bench === 1'bx)) begin
				data_out_31__flag <= 1'b1;
			end else begin
				data_out_31__flag<= 1'b0;
			end
			if(!(data_out_32__gfpga === data_out_32__bench) && !(data_out_32__bench === 1'bx)) begin
				data_out_32__flag <= 1'b1;
			end else begin
				data_out_32__flag<= 1'b0;
			end
			if(!(data_out_33__gfpga === data_out_33__bench) && !(data_out_33__bench === 1'bx)) begin
				data_out_33__flag <= 1'b1;
			end else begin
				data_out_33__flag<= 1'b0;
			end
			if(!(data_out_34__gfpga === data_out_34__bench) && !(data_out_34__bench === 1'bx)) begin
				data_out_34__flag <= 1'b1;
			end else begin
				data_out_34__flag<= 1'b0;
			end
			if(!(data_out_35__gfpga === data_out_35__bench) && !(data_out_35__bench === 1'bx)) begin
				data_out_35__flag <= 1'b1;
			end else begin
				data_out_35__flag<= 1'b0;
			end
			if(!(data_out_36__gfpga === data_out_36__bench) && !(data_out_36__bench === 1'bx)) begin
				data_out_36__flag <= 1'b1;
			end else begin
				data_out_36__flag<= 1'b0;
			end
			if(!(data_out_37__gfpga === data_out_37__bench) && !(data_out_37__bench === 1'bx)) begin
				data_out_37__flag <= 1'b1;
			end else begin
				data_out_37__flag<= 1'b0;
			end
			if(!(data_out_38__gfpga === data_out_38__bench) && !(data_out_38__bench === 1'bx)) begin
				data_out_38__flag <= 1'b1;
			end else begin
				data_out_38__flag<= 1'b0;
			end
			if(!(data_out_39__gfpga === data_out_39__bench) && !(data_out_39__bench === 1'bx)) begin
				data_out_39__flag <= 1'b1;
			end else begin
				data_out_39__flag<= 1'b0;
			end
			if(!(data_out_40__gfpga === data_out_40__bench) && !(data_out_40__bench === 1'bx)) begin
				data_out_40__flag <= 1'b1;
			end else begin
				data_out_40__flag<= 1'b0;
			end
			if(!(data_out_41__gfpga === data_out_41__bench) && !(data_out_41__bench === 1'bx)) begin
				data_out_41__flag <= 1'b1;
			end else begin
				data_out_41__flag<= 1'b0;
			end
			if(!(data_out_42__gfpga === data_out_42__bench) && !(data_out_42__bench === 1'bx)) begin
				data_out_42__flag <= 1'b1;
			end else begin
				data_out_42__flag<= 1'b0;
			end
			if(!(data_out_43__gfpga === data_out_43__bench) && !(data_out_43__bench === 1'bx)) begin
				data_out_43__flag <= 1'b1;
			end else begin
				data_out_43__flag<= 1'b0;
			end
			if(!(data_out_44__gfpga === data_out_44__bench) && !(data_out_44__bench === 1'bx)) begin
				data_out_44__flag <= 1'b1;
			end else begin
				data_out_44__flag<= 1'b0;
			end
			if(!(data_out_45__gfpga === data_out_45__bench) && !(data_out_45__bench === 1'bx)) begin
				data_out_45__flag <= 1'b1;
			end else begin
				data_out_45__flag<= 1'b0;
			end
			if(!(data_out_46__gfpga === data_out_46__bench) && !(data_out_46__bench === 1'bx)) begin
				data_out_46__flag <= 1'b1;
			end else begin
				data_out_46__flag<= 1'b0;
			end
			if(!(data_out_47__gfpga === data_out_47__bench) && !(data_out_47__bench === 1'bx)) begin
				data_out_47__flag <= 1'b1;
			end else begin
				data_out_47__flag<= 1'b0;
			end
			if(!(data_out_48__gfpga === data_out_48__bench) && !(data_out_48__bench === 1'bx)) begin
				data_out_48__flag <= 1'b1;
			end else begin
				data_out_48__flag<= 1'b0;
			end
			if(!(data_out_49__gfpga === data_out_49__bench) && !(data_out_49__bench === 1'bx)) begin
				data_out_49__flag <= 1'b1;
			end else begin
				data_out_49__flag<= 1'b0;
			end
			if(!(data_out_50__gfpga === data_out_50__bench) && !(data_out_50__bench === 1'bx)) begin
				data_out_50__flag <= 1'b1;
			end else begin
				data_out_50__flag<= 1'b0;
			end
			if(!(data_out_51__gfpga === data_out_51__bench) && !(data_out_51__bench === 1'bx)) begin
				data_out_51__flag <= 1'b1;
			end else begin
				data_out_51__flag<= 1'b0;
			end
			if(!(data_out_52__gfpga === data_out_52__bench) && !(data_out_52__bench === 1'bx)) begin
				data_out_52__flag <= 1'b1;
			end else begin
				data_out_52__flag<= 1'b0;
			end
			if(!(data_out_53__gfpga === data_out_53__bench) && !(data_out_53__bench === 1'bx)) begin
				data_out_53__flag <= 1'b1;
			end else begin
				data_out_53__flag<= 1'b0;
			end
			if(!(data_out_54__gfpga === data_out_54__bench) && !(data_out_54__bench === 1'bx)) begin
				data_out_54__flag <= 1'b1;
			end else begin
				data_out_54__flag<= 1'b0;
			end
			if(!(data_out_55__gfpga === data_out_55__bench) && !(data_out_55__bench === 1'bx)) begin
				data_out_55__flag <= 1'b1;
			end else begin
				data_out_55__flag<= 1'b0;
			end
			if(!(data_out_56__gfpga === data_out_56__bench) && !(data_out_56__bench === 1'bx)) begin
				data_out_56__flag <= 1'b1;
			end else begin
				data_out_56__flag<= 1'b0;
			end
			if(!(data_out_57__gfpga === data_out_57__bench) && !(data_out_57__bench === 1'bx)) begin
				data_out_57__flag <= 1'b1;
			end else begin
				data_out_57__flag<= 1'b0;
			end
			if(!(data_out_58__gfpga === data_out_58__bench) && !(data_out_58__bench === 1'bx)) begin
				data_out_58__flag <= 1'b1;
			end else begin
				data_out_58__flag<= 1'b0;
			end
			if(!(data_out_59__gfpga === data_out_59__bench) && !(data_out_59__bench === 1'bx)) begin
				data_out_59__flag <= 1'b1;
			end else begin
				data_out_59__flag<= 1'b0;
			end
			if(!(data_out_60__gfpga === data_out_60__bench) && !(data_out_60__bench === 1'bx)) begin
				data_out_60__flag <= 1'b1;
			end else begin
				data_out_60__flag<= 1'b0;
			end
			if(!(data_out_61__gfpga === data_out_61__bench) && !(data_out_61__bench === 1'bx)) begin
				data_out_61__flag <= 1'b1;
			end else begin
				data_out_61__flag<= 1'b0;
			end
			if(!(data_out_62__gfpga === data_out_62__bench) && !(data_out_62__bench === 1'bx)) begin
				data_out_62__flag <= 1'b1;
			end else begin
				data_out_62__flag<= 1'b0;
			end
			if(!(data_out_63__gfpga === data_out_63__bench) && !(data_out_63__bench === 1'bx)) begin
				data_out_63__flag <= 1'b1;
			end else begin
				data_out_63__flag<= 1'b0;
			end
		end
	end

	always@(posedge data_out_0__flag) begin
		if(data_out_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_1__flag) begin
		if(data_out_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_2__flag) begin
		if(data_out_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_3__flag) begin
		if(data_out_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_4__flag) begin
		if(data_out_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_5__flag) begin
		if(data_out_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_6__flag) begin
		if(data_out_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_7__flag) begin
		if(data_out_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_8__flag) begin
		if(data_out_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_9__flag) begin
		if(data_out_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_10__flag) begin
		if(data_out_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_11__flag) begin
		if(data_out_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_12__flag) begin
		if(data_out_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_13__flag) begin
		if(data_out_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_14__flag) begin
		if(data_out_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_15__flag) begin
		if(data_out_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_16__flag) begin
		if(data_out_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_17__flag) begin
		if(data_out_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_18__flag) begin
		if(data_out_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_19__flag) begin
		if(data_out_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_20__flag) begin
		if(data_out_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_21__flag) begin
		if(data_out_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_22__flag) begin
		if(data_out_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_23__flag) begin
		if(data_out_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_24__flag) begin
		if(data_out_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_25__flag) begin
		if(data_out_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_26__flag) begin
		if(data_out_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_27__flag) begin
		if(data_out_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_28__flag) begin
		if(data_out_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_29__flag) begin
		if(data_out_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_30__flag) begin
		if(data_out_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_31__flag) begin
		if(data_out_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_32__flag) begin
		if(data_out_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_33__flag) begin
		if(data_out_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_34__flag) begin
		if(data_out_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_35__flag) begin
		if(data_out_35__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_35__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_36__flag) begin
		if(data_out_36__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_36__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_37__flag) begin
		if(data_out_37__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_37__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_38__flag) begin
		if(data_out_38__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_38__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_39__flag) begin
		if(data_out_39__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_39__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_40__flag) begin
		if(data_out_40__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_40__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_41__flag) begin
		if(data_out_41__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_41__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_42__flag) begin
		if(data_out_42__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_42__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_43__flag) begin
		if(data_out_43__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_43__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_44__flag) begin
		if(data_out_44__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_44__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_45__flag) begin
		if(data_out_45__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_45__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_46__flag) begin
		if(data_out_46__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_46__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_47__flag) begin
		if(data_out_47__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_47__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_48__flag) begin
		if(data_out_48__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_48__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_49__flag) begin
		if(data_out_49__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_49__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_50__flag) begin
		if(data_out_50__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_50__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_51__flag) begin
		if(data_out_51__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_51__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_52__flag) begin
		if(data_out_52__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_52__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_53__flag) begin
		if(data_out_53__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_53__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_54__flag) begin
		if(data_out_54__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_54__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_55__flag) begin
		if(data_out_55__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_55__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_56__flag) begin
		if(data_out_56__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_56__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_57__flag) begin
		if(data_out_57__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_57__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_58__flag) begin
		if(data_out_58__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_58__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_59__flag) begin
		if(data_out_59__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_59__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_60__flag) begin
		if(data_out_60__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_60__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_61__flag) begin
		if(data_out_61__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_61__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_62__flag) begin
		if(data_out_62__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_62__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge data_out_63__flag) begin
		if(data_out_63__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on data_out_63__gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("simple_four_noc_1D_chain_formal.vcd");
		$dumpvars(1, simple_four_noc_1D_chain_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

initial begin
	sim_start[0] <= 1'b1;
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------
	#20
	if(nb_error == 0) begin
		$display("Simulation Succeed");
	end else begin
		$display("Simulation Failed with %d error(s)", nb_error);
	end
	$finish;
end

endmodule
// ----- END Verilog module for simple_four_noc_1D_chain_top_formal_verification_random_tb -----

