

`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/000-push-button-flows/bench/koios_axi_wrap.v"

module pe_15_noc (
    input clk,
    input clk_noc,
    input reset,
    
    // AXI Stream input interface
    input [127:0] inp_data,
    input inp_valid,
    output inp_ready,
    input [3:0] inp_dest,
    input [1:0] inp_id,

    // AXI Stream output interface
    output [127:0] outp_data,
    output outp_valid,
    input outp_ready,
    output [3:0] outp_dest,
    output [1:0] outp_id,

    // Test signals for router 
    input  [8 :0] in_tlast,
    output [8 :0] out_tlast,
    // Test signals for all PEs
    input [31:0] test_input,
    output [31:0] test_output
);

    // Main router instantiation
    (* keep = "true" *) router_wrap rtr_main(
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),

        .axis_in_tdata(inp_data),
        .axis_in_tvalid(inp_valid),
        .axis_in_tready(inp_ready),
        .axis_in_tdest(inp_dest),
        .axis_in_tid(inp_id),
        .axis_in_tlast(in_tlast[0]),

        .axis_out_tdata(outp_data),
        .axis_out_tvalid(outp_valid),
        .axis_out_tready(outp_ready),
        .axis_out_tdest(outp_dest),
        .axis_out_tid(outp_id),
        .axis_out_tlast(out_tlast[0]),

        .router_address(4'b1111)
    );

// PE 0 signals
    wire [127:0] pe0_out_data;
    wire                     pe0_out_valid;
    wire                     pe0_out_ready;
    wire [3:0] pe0_out_dest;
    wire [1:0]   pe0_out_id;
    
    wire [127:0] pe0_in_data;
    wire                     pe0_in_valid;
    wire                     pe0_in_ready;
    wire [3:0] pe0_in_dest;
    wire [1:0]   pe0_in_id;

// Router 0 signals
    wire [127:0] rtr0_in_data;
    wire                     rtr0_in_valid;
    wire                     rtr0_in_ready;
    wire [3:0] rtr0_in_dest;
    wire [1:0]   rtr0_in_id;

    wire [127:0] rtr0_out_data;
    wire                     rtr0_out_valid;
    wire                     rtr0_out_ready;
    wire [3:0] rtr0_out_dest;
    wire [1:0]   rtr0_out_id;

// PE 1 signals
    wire [127:0] pe1_out_data;
    wire                     pe1_out_valid;
    wire                     pe1_out_ready;
    wire [3:0] pe1_out_dest;
    wire [1:0]   pe1_out_id;
    
    wire [127:0] pe1_in_data;
    wire                     pe1_in_valid;
    wire                     pe1_in_ready;
    wire [3:0] pe1_in_dest;
    wire [1:0]   pe1_in_id;

// Router 1 signals
    wire [127:0] rtr1_in_data;
    wire                     rtr1_in_valid;
    wire                     rtr1_in_ready;
    wire [3:0] rtr1_in_dest;
    wire [1:0]   rtr1_in_id;

    wire [127:0] rtr1_out_data;
    wire                     rtr1_out_valid;
    wire                     rtr1_out_ready;
    wire [3:0] rtr1_out_dest;
    wire [1:0]   rtr1_out_id;

// PE 2 signals
    wire [127:0] pe2_out_data;
    wire                     pe2_out_valid;
    wire                     pe2_out_ready;
    wire [3:0] pe2_out_dest;
    wire [1:0]   pe2_out_id;
    
    wire [127:0] pe2_in_data;
    wire                     pe2_in_valid;
    wire                     pe2_in_ready;
    wire [3:0] pe2_in_dest;
    wire [1:0]   pe2_in_id;

// Router 2 signals
    wire [127:0] rtr2_in_data;
    wire                     rtr2_in_valid;
    wire                     rtr2_in_ready;
    wire [3:0] rtr2_in_dest;
    wire [1:0]   rtr2_in_id;

    wire [127:0] rtr2_out_data;
    wire                     rtr2_out_valid;
    wire                     rtr2_out_ready;
    wire [3:0] rtr2_out_dest;
    wire [1:0]   rtr2_out_id;

// PE 3 signals
    wire [127:0] pe3_out_data;
    wire                     pe3_out_valid;
    wire                     pe3_out_ready;
    wire [3:0] pe3_out_dest;
    wire [1:0]   pe3_out_id;
    
    wire [127:0] pe3_in_data;
    wire                     pe3_in_valid;
    wire                     pe3_in_ready;
    wire [3:0] pe3_in_dest;
    wire [1:0]   pe3_in_id;

// Router 3 signals
    wire [127:0] rtr3_in_data;
    wire                     rtr3_in_valid;
    wire                     rtr3_in_ready;
    wire [3:0] rtr3_in_dest;
    wire [1:0]   rtr3_in_id;

    wire [127:0] rtr3_out_data;
    wire                     rtr3_out_valid;
    wire                     rtr3_out_ready;
    wire [3:0] rtr3_out_dest;
    wire [1:0]   rtr3_out_id;

// PE 4 signals
    wire [127:0] pe4_out_data;
    wire                     pe4_out_valid;
    wire                     pe4_out_ready;
    wire [3:0] pe4_out_dest;
    wire [1:0]   pe4_out_id;
    
    wire [127:0] pe4_in_data;
    wire                     pe4_in_valid;
    wire                     pe4_in_ready;
    wire [3:0] pe4_in_dest;
    wire [1:0]   pe4_in_id;

// Router 4 signals
    wire [127:0] rtr4_in_data;
    wire                     rtr4_in_valid;
    wire                     rtr4_in_ready;
    wire [3:0] rtr4_in_dest;
    wire [1:0]   rtr4_in_id;

    wire [127:0] rtr4_out_data;
    wire                     rtr4_out_valid;
    wire                     rtr4_out_ready;
    wire [3:0] rtr4_out_dest;
    wire [1:0]   rtr4_out_id;

// PE 5 signals
    wire [127:0] pe5_out_data;
    wire                     pe5_out_valid;
    wire                     pe5_out_ready;
    wire [3:0] pe5_out_dest;
    wire [1:0]   pe5_out_id;
    
    wire [127:0] pe5_in_data;
    wire                     pe5_in_valid;
    wire                     pe5_in_ready;
    wire [3:0] pe5_in_dest;
    wire [1:0]   pe5_in_id;

// Router 5 signals
    wire [127:0] rtr5_in_data;
    wire                     rtr5_in_valid;
    wire                     rtr5_in_ready;
    wire [3:0] rtr5_in_dest;
    wire [1:0]   rtr5_in_id;

    wire [127:0] rtr5_out_data;
    wire                     rtr5_out_valid;
    wire                     rtr5_out_ready;
    wire [3:0] rtr5_out_dest;
    wire [1:0]   rtr5_out_id;

// PE 6 signals
    wire [127:0] pe6_out_data;
    wire                     pe6_out_valid;
    wire                     pe6_out_ready;
    wire [3:0] pe6_out_dest;
    wire [1:0]   pe6_out_id;
    
    wire [127:0] pe6_in_data;
    wire                     pe6_in_valid;
    wire                     pe6_in_ready;
    wire [3:0] pe6_in_dest;
    wire [1:0]   pe6_in_id;

// Router 6 signals
    wire [127:0] rtr6_in_data;
    wire                     rtr6_in_valid;
    wire                     rtr6_in_ready;
    wire [3:0] rtr6_in_dest;
    wire [1:0]   rtr6_in_id;

    wire [127:0] rtr6_out_data;
    wire                     rtr6_out_valid;
    wire                     rtr6_out_ready;
    wire [3:0] rtr6_out_dest;
    wire [1:0]   rtr6_out_id;

// PE 7 signals
    wire [127:0] pe7_out_data;
    wire                     pe7_out_valid;
    wire                     pe7_out_ready;
    wire [3:0] pe7_out_dest;
    wire [1:0]   pe7_out_id;
    
    wire [127:0] pe7_in_data;
    wire                     pe7_in_valid;
    wire                     pe7_in_ready;
    wire [3:0] pe7_in_dest;
    wire [1:0]   pe7_in_id;

// Router 7 signals
    wire [127:0] rtr7_in_data;
    wire                     rtr7_in_valid;
    wire                     rtr7_in_ready;
    wire [3:0] rtr7_in_dest;
    wire [1:0]   rtr7_in_id;

    wire [127:0] rtr7_out_data;
    wire                     rtr7_out_valid;
    wire                     rtr7_out_ready;
    wire [3:0] rtr7_out_dest;
    wire [1:0]   rtr7_out_id;



// PE 0 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_0 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe0_in_data),
        .inp_valid(pe0_in_valid),
        .inp_ready(pe0_in_ready),
        .inp_dest(pe0_in_dest),
        .inp_id(pe0_in_id),
        
        .outp_data(pe0_out_data),
        .outp_valid(pe0_out_valid),
        .outp_ready(pe0_out_ready),
        .outp_dest(pe0_out_dest),
        .outp_id(pe0_out_id),
        
        .test_input(test_input[3:0]),
        .test_output(test_output[3:0])
    );
    
// Router 0 instantiation
    (* keep = "true" *) router_wrap rtr_inst_0 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr0_in_data),
        .axis_in_tvalid(rtr0_in_valid),
        .axis_in_tready(rtr0_in_ready),
        .axis_in_tdest(rtr0_in_dest),
        .axis_in_tid(rtr0_in_id),
        .axis_in_tlast(in_tlast[1]),
        
        .axis_out_tdata(rtr0_out_data),
        .axis_out_tvalid(rtr0_out_valid),
        .axis_out_tready(rtr0_out_ready),
        .axis_out_tdest(rtr0_out_dest),
        .axis_out_tid(rtr0_out_id),
        .axis_out_tlast(out_tlast[1]),
        
        .router_address(4'd0)
    );


// PE 1 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_1 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe1_in_data),
        .inp_valid(pe1_in_valid),
        .inp_ready(pe1_in_ready),
        .inp_dest(pe1_in_dest),
        .inp_id(pe1_in_id),
        
        .outp_data(pe1_out_data),
        .outp_valid(pe1_out_valid),
        .outp_ready(pe1_out_ready),
        .outp_dest(pe1_out_dest),
        .outp_id(pe1_out_id),
        
        .test_input(test_input[7:4]),
        .test_output(test_output[7:4])
    );
    
// Router 1 instantiation
    (* keep = "true" *) router_wrap rtr_inst_1 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr1_in_data),
        .axis_in_tvalid(rtr1_in_valid),
        .axis_in_tready(rtr1_in_ready),
        .axis_in_tdest(rtr1_in_dest),
        .axis_in_tid(rtr1_in_id),
        .axis_in_tlast(in_tlast[2]),
        
        .axis_out_tdata(rtr1_out_data),
        .axis_out_tvalid(rtr1_out_valid),
        .axis_out_tready(rtr1_out_ready),
        .axis_out_tdest(rtr1_out_dest),
        .axis_out_tid(rtr1_out_id),
        .axis_out_tlast(out_tlast[2]),
        
        .router_address(4'd1)
    );


// PE 2 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_2 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe2_in_data),
        .inp_valid(pe2_in_valid),
        .inp_ready(pe2_in_ready),
        .inp_dest(pe2_in_dest),
        .inp_id(pe2_in_id),
        
        .outp_data(pe2_out_data),
        .outp_valid(pe2_out_valid),
        .outp_ready(pe2_out_ready),
        .outp_dest(pe2_out_dest),
        .outp_id(pe2_out_id),
        
        .test_input(test_input[11:8]),
        .test_output(test_output[11:8])
    );
    
// Router 2 instantiation
    (* keep = "true" *) router_wrap rtr_inst_2 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr2_in_data),
        .axis_in_tvalid(rtr2_in_valid),
        .axis_in_tready(rtr2_in_ready),
        .axis_in_tdest(rtr2_in_dest),
        .axis_in_tid(rtr2_in_id),
        .axis_in_tlast(in_tlast[3]),
        
        .axis_out_tdata(rtr2_out_data),
        .axis_out_tvalid(rtr2_out_valid),
        .axis_out_tready(rtr2_out_ready),
        .axis_out_tdest(rtr2_out_dest),
        .axis_out_tid(rtr2_out_id),
        .axis_out_tlast(out_tlast[3]),
        
        .router_address(4'd2)
    );


// PE 3 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_3 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe3_in_data),
        .inp_valid(pe3_in_valid),
        .inp_ready(pe3_in_ready),
        .inp_dest(pe3_in_dest),
        .inp_id(pe3_in_id),
        
        .outp_data(pe3_out_data),
        .outp_valid(pe3_out_valid),
        .outp_ready(pe3_out_ready),
        .outp_dest(pe3_out_dest),
        .outp_id(pe3_out_id),
        
        .test_input(test_input[15:12]),
        .test_output(test_output[15:12])
    );
    
// Router 3 instantiation
    (* keep = "true" *) router_wrap rtr_inst_3 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr3_in_data),
        .axis_in_tvalid(rtr3_in_valid),
        .axis_in_tready(rtr3_in_ready),
        .axis_in_tdest(rtr3_in_dest),
        .axis_in_tid(rtr3_in_id),
        .axis_in_tlast(in_tlast[4]),
        
        .axis_out_tdata(rtr3_out_data),
        .axis_out_tvalid(rtr3_out_valid),
        .axis_out_tready(rtr3_out_ready),
        .axis_out_tdest(rtr3_out_dest),
        .axis_out_tid(rtr3_out_id),
        .axis_out_tlast(out_tlast[4]),
        
        .router_address(4'd3)
    );


// PE 4 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_4 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe4_in_data),
        .inp_valid(pe4_in_valid),
        .inp_ready(pe4_in_ready),
        .inp_dest(pe4_in_dest),
        .inp_id(pe4_in_id),
        
        .outp_data(pe4_out_data),
        .outp_valid(pe4_out_valid),
        .outp_ready(pe4_out_ready),
        .outp_dest(pe4_out_dest),
        .outp_id(pe4_out_id),
        
        .test_input(test_input[19:16]),
        .test_output(test_output[19:16])
    );
    
// Router 4 instantiation
    (* keep = "true" *) router_wrap rtr_inst_4 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr4_in_data),
        .axis_in_tvalid(rtr4_in_valid),
        .axis_in_tready(rtr4_in_ready),
        .axis_in_tdest(rtr4_in_dest),
        .axis_in_tid(rtr4_in_id),
        .axis_in_tlast(in_tlast[5]),
        
        .axis_out_tdata(rtr4_out_data),
        .axis_out_tvalid(rtr4_out_valid),
        .axis_out_tready(rtr4_out_ready),
        .axis_out_tdest(rtr4_out_dest),
        .axis_out_tid(rtr4_out_id),
        .axis_out_tlast(out_tlast[5]),
        
        .router_address(4'd4)
    );


// PE 5 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_5 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe5_in_data),
        .inp_valid(pe5_in_valid),
        .inp_ready(pe5_in_ready),
        .inp_dest(pe5_in_dest),
        .inp_id(pe5_in_id),
        
        .outp_data(pe5_out_data),
        .outp_valid(pe5_out_valid),
        .outp_ready(pe5_out_ready),
        .outp_dest(pe5_out_dest),
        .outp_id(pe5_out_id),
        
        .test_input(test_input[23:20]),
        .test_output(test_output[23:20])
    );
    
// Router 5 instantiation
    (* keep = "true" *) router_wrap rtr_inst_5 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr5_in_data),
        .axis_in_tvalid(rtr5_in_valid),
        .axis_in_tready(rtr5_in_ready),
        .axis_in_tdest(rtr5_in_dest),
        .axis_in_tid(rtr5_in_id),
        .axis_in_tlast(in_tlast[6]),
        
        .axis_out_tdata(rtr5_out_data),
        .axis_out_tvalid(rtr5_out_valid),
        .axis_out_tready(rtr5_out_ready),
        .axis_out_tdest(rtr5_out_dest),
        .axis_out_tid(rtr5_out_id),
        .axis_out_tlast(out_tlast[6]),
        
        .router_address(4'd5)
    );


// PE 6 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_6 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe6_in_data),
        .inp_valid(pe6_in_valid),
        .inp_ready(pe6_in_ready),
        .inp_dest(pe6_in_dest),
        .inp_id(pe6_in_id),
        
        .outp_data(pe6_out_data),
        .outp_valid(pe6_out_valid),
        .outp_ready(pe6_out_ready),
        .outp_dest(pe6_out_dest),
        .outp_id(pe6_out_id),
        
        .test_input(test_input[27:24]),
        .test_output(test_output[27:24])
    );
    
// Router 6 instantiation
    (* keep = "true" *) router_wrap rtr_inst_6 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr6_in_data),
        .axis_in_tvalid(rtr6_in_valid),
        .axis_in_tready(rtr6_in_ready),
        .axis_in_tdest(rtr6_in_dest),
        .axis_in_tid(rtr6_in_id),
        .axis_in_tlast(in_tlast[7]),
        
        .axis_out_tdata(rtr6_out_data),
        .axis_out_tvalid(rtr6_out_valid),
        .axis_out_tready(rtr6_out_ready),
        .axis_out_tdest(rtr6_out_dest),
        .axis_out_tid(rtr6_out_id),
        .axis_out_tlast(out_tlast[7]),
        
        .router_address(4'd6)
    );


// PE 7 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_7 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe7_in_data),
        .inp_valid(pe7_in_valid),
        .inp_ready(pe7_in_ready),
        .inp_dest(pe7_in_dest),
        .inp_id(pe7_in_id),
        
        .outp_data(pe7_out_data),
        .outp_valid(pe7_out_valid),
        .outp_ready(pe7_out_ready),
        .outp_dest(pe7_out_dest),
        .outp_id(pe7_out_id),
        
        .test_input(test_input[31:28]),
        .test_output(test_output[31:28])
    );
    
// Router 7 instantiation
    (* keep = "true" *) router_wrap rtr_inst_7 (
        .clk_usr(clk),
        .clk_noc(clk_noc),
        .rst_n(reset),
        
        .axis_in_tdata(rtr7_in_data),
        .axis_in_tvalid(rtr7_in_valid),
        .axis_in_tready(rtr7_in_ready),
        .axis_in_tdest(rtr7_in_dest),
        .axis_in_tid(rtr7_in_id),
        .axis_in_tlast(in_tlast[8]),
        
        .axis_out_tdata(rtr7_out_data),
        .axis_out_tvalid(rtr7_out_valid),
        .axis_out_tready(rtr7_out_ready),
        .axis_out_tdest(rtr7_out_dest),
        .axis_out_tid(rtr7_out_id),
        .axis_out_tlast(out_tlast[8]),
        
        .router_address(4'd7)
    );




// PE 0 to rtr 0 
    // Connect PE 0 output to Router 0 input
    assign rtr0_in_data = pe0_out_data;
    assign rtr0_in_valid = pe0_out_valid;
    assign rtr0_in_dest = pe0_out_dest;
    assign rtr0_in_id = pe0_out_id;
    assign pe0_out_ready = rtr0_in_ready; // ready is from the router

    // Connect Router 0 output to PE 0 input
    assign pe0_in_data = rtr0_out_data;
    assign pe0_in_valid = rtr0_out_valid;
    assign pe0_in_dest = rtr0_out_dest;
    assign pe0_in_id = rtr0_out_id;
    assign rtr0_out_ready = pe0_in_ready; // ready is from the PE 


// PE 1 to rtr 1 
    // Connect PE 1 output to Router 1 input
    assign rtr1_in_data = pe1_out_data;
    assign rtr1_in_valid = pe1_out_valid;
    assign rtr1_in_dest = pe1_out_dest;
    assign rtr1_in_id = pe1_out_id;
    assign pe1_out_ready = rtr1_in_ready; // ready is from the router

    // Connect Router 1 output to PE 1 input
    assign pe1_in_data = rtr1_out_data;
    assign pe1_in_valid = rtr1_out_valid;
    assign pe1_in_dest = rtr1_out_dest;
    assign pe1_in_id = rtr1_out_id;
    assign rtr1_out_ready = pe1_in_ready; // ready is from the PE 


// PE 2 to rtr 2 
    // Connect PE 2 output to Router 2 input
    assign rtr2_in_data = pe2_out_data;
    assign rtr2_in_valid = pe2_out_valid;
    assign rtr2_in_dest = pe2_out_dest;
    assign rtr2_in_id = pe2_out_id;
    assign pe2_out_ready = rtr2_in_ready; // ready is from the router

    // Connect Router 2 output to PE 2 input
    assign pe2_in_data = rtr2_out_data;
    assign pe2_in_valid = rtr2_out_valid;
    assign pe2_in_dest = rtr2_out_dest;
    assign pe2_in_id = rtr2_out_id;
    assign rtr2_out_ready = pe2_in_ready; // ready is from the PE 


// PE 3 to rtr 3 
    // Connect PE 3 output to Router 3 input
    assign rtr3_in_data = pe3_out_data;
    assign rtr3_in_valid = pe3_out_valid;
    assign rtr3_in_dest = pe3_out_dest;
    assign rtr3_in_id = pe3_out_id;
    assign pe3_out_ready = rtr3_in_ready; // ready is from the router

    // Connect Router 3 output to PE 3 input
    assign pe3_in_data = rtr3_out_data;
    assign pe3_in_valid = rtr3_out_valid;
    assign pe3_in_dest = rtr3_out_dest;
    assign pe3_in_id = rtr3_out_id;
    assign rtr3_out_ready = pe3_in_ready; // ready is from the PE 


// PE 4 to rtr 4 
    // Connect PE 4 output to Router 4 input
    assign rtr4_in_data = pe4_out_data;
    assign rtr4_in_valid = pe4_out_valid;
    assign rtr4_in_dest = pe4_out_dest;
    assign rtr4_in_id = pe4_out_id;
    assign pe4_out_ready = rtr4_in_ready; // ready is from the router

    // Connect Router 4 output to PE 4 input
    assign pe4_in_data = rtr4_out_data;
    assign pe4_in_valid = rtr4_out_valid;
    assign pe4_in_dest = rtr4_out_dest;
    assign pe4_in_id = rtr4_out_id;
    assign rtr4_out_ready = pe4_in_ready; // ready is from the PE 


// PE 5 to rtr 5 
    // Connect PE 5 output to Router 5 input
    assign rtr5_in_data = pe5_out_data;
    assign rtr5_in_valid = pe5_out_valid;
    assign rtr5_in_dest = pe5_out_dest;
    assign rtr5_in_id = pe5_out_id;
    assign pe5_out_ready = rtr5_in_ready; // ready is from the router

    // Connect Router 5 output to PE 5 input
    assign pe5_in_data = rtr5_out_data;
    assign pe5_in_valid = rtr5_out_valid;
    assign pe5_in_dest = rtr5_out_dest;
    assign pe5_in_id = rtr5_out_id;
    assign rtr5_out_ready = pe5_in_ready; // ready is from the PE 


// PE 6 to rtr 6 
    // Connect PE 6 output to Router 6 input
    assign rtr6_in_data = pe6_out_data;
    assign rtr6_in_valid = pe6_out_valid;
    assign rtr6_in_dest = pe6_out_dest;
    assign rtr6_in_id = pe6_out_id;
    assign pe6_out_ready = rtr6_in_ready; // ready is from the router

    // Connect Router 6 output to PE 6 input
    assign pe6_in_data = rtr6_out_data;
    assign pe6_in_valid = rtr6_out_valid;
    assign pe6_in_dest = rtr6_out_dest;
    assign pe6_in_id = rtr6_out_id;
    assign rtr6_out_ready = pe6_in_ready; // ready is from the PE 


// PE 7 to rtr 7 
    // Connect PE 7 output to Router 7 input
    assign rtr7_in_data = pe7_out_data;
    assign rtr7_in_valid = pe7_out_valid;
    assign rtr7_in_dest = pe7_out_dest;
    assign rtr7_in_id = pe7_out_id;
    assign pe7_out_ready = rtr7_in_ready; // ready is from the router

    // Connect Router 7 output to PE 7 input
    assign pe7_in_data = rtr7_out_data;
    assign pe7_in_valid = rtr7_out_valid;
    assign pe7_in_dest = rtr7_out_dest;
    assign pe7_in_id = rtr7_out_id;
    assign rtr7_out_ready = pe7_in_ready; // ready is from the PE 

endmodule