

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
    input  [2 :0] in_tlast,
    output [2 :0] out_tlast,
    // Test signals for all PEs
    input [7:0] test_input,
    output [7:0] test_output
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

endmodule