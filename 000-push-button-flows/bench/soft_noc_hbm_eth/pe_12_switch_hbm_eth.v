

`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/koios_axi_wrap.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/axi_switch/axi_switch_1_13.v"

module pe_12_switch (
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

    // test for hbm_inst
    input  [1:0] in_tlast,
    output [1:0] out_tlast,

    // Test signals for all PEs
    input [47:0] test_input,
    output [47:0] test_output
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

// PE 8 signals
    wire [127:0] pe8_out_data;
    wire                     pe8_out_valid;
    wire                     pe8_out_ready;
    wire [3:0] pe8_out_dest;
    wire [1:0]   pe8_out_id;
    
    wire [127:0] pe8_in_data;
    wire                     pe8_in_valid;
    wire                     pe8_in_ready;
    wire [3:0] pe8_in_dest;
    wire [1:0]   pe8_in_id;

// PE 9 signals
    wire [127:0] pe9_out_data;
    wire                     pe9_out_valid;
    wire                     pe9_out_ready;
    wire [3:0] pe9_out_dest;
    wire [1:0]   pe9_out_id;
    
    wire [127:0] pe9_in_data;
    wire                     pe9_in_valid;
    wire                     pe9_in_ready;
    wire [3:0] pe9_in_dest;
    wire [1:0]   pe9_in_id;

// PE 10 signals
    wire [127:0] pe10_out_data;
    wire                     pe10_out_valid;
    wire                     pe10_out_ready;
    wire [3:0] pe10_out_dest;
    wire [1:0]   pe10_out_id;
    
    wire [127:0] pe10_in_data;
    wire                     pe10_in_valid;
    wire                     pe10_in_ready;
    wire [3:0] pe10_in_dest;
    wire [1:0]   pe10_in_id;

// PE 11 signals
    wire [127:0] pe11_out_data;
    wire                     pe11_out_valid;
    wire                     pe11_out_ready;
    wire [3:0] pe11_out_dest;
    wire [1:0]   pe11_out_id;
    
    wire [127:0] pe11_in_data;
    wire                     pe11_in_valid;
    wire                     pe11_in_ready;
    wire [3:0] pe11_in_dest;
    wire [1:0]   pe11_in_id;


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

// PE 8 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_8 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe8_in_data),
        .inp_valid(pe8_in_valid),
        .inp_ready(pe8_in_ready),
        .inp_dest(pe8_in_dest),
        .inp_id(pe8_in_id),
        
        .outp_data(pe8_out_data),
        .outp_valid(pe8_out_valid),
        .outp_ready(pe8_out_ready),
        .outp_dest(pe8_out_dest),
        .outp_id(pe8_out_id),
        
        .test_input(test_input[35:32]),
        .test_output(test_output[35:32])
    );

// PE 9 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_9 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe9_in_data),
        .inp_valid(pe9_in_valid),
        .inp_ready(pe9_in_ready),
        .inp_dest(pe9_in_dest),
        .inp_id(pe9_in_id),
        
        .outp_data(pe9_out_data),
        .outp_valid(pe9_out_valid),
        .outp_ready(pe9_out_ready),
        .outp_dest(pe9_out_dest),
        .outp_id(pe9_out_id),
        
        .test_input(test_input[39:36]),
        .test_output(test_output[39:36])
    );

// PE 10 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_10 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe10_in_data),
        .inp_valid(pe10_in_valid),
        .inp_ready(pe10_in_ready),
        .inp_dest(pe10_in_dest),
        .inp_id(pe10_in_id),
        
        .outp_data(pe10_out_data),
        .outp_valid(pe10_out_valid),
        .outp_ready(pe10_out_ready),
        .outp_dest(pe10_out_dest),
        .outp_id(pe10_out_id),
        
        .test_input(test_input[43:40]),
        .test_output(test_output[43:40])
    );

// PE 11 instantiation
    (* keep = "true" *) koios_axi_wrap pe_inst_11 (
        .clk(clk),
        .reset(reset),
        
        .inp_data(pe11_in_data),
        .inp_valid(pe11_in_valid),
        .inp_ready(pe11_in_ready),
        .inp_dest(pe11_in_dest),
        .inp_id(pe11_in_id),
        
        .outp_data(pe11_out_data),
        .outp_valid(pe11_out_valid),
        .outp_ready(pe11_out_ready),
        .outp_dest(pe11_out_dest),
        .outp_id(pe11_out_id),
        
        .test_input(test_input[47:44]),
        .test_output(test_output[47:44])
    );



    wire [127:0] switch_in_0_tdata;
    wire                     switch_in_0_tvalid;
    wire [3:0] switch_in_0_tdest;
    wire [1:0]   switch_in_0_tid;
    wire                     switch_in_0_tready;

    wire [127:0] switch_out_0_tdata;
    wire                     switch_out_0_tvalid;
    wire [3:0] switch_out_0_tdest;
    wire [1:0]   switch_out_0_tid;
    wire                     switch_out_0_tready;


    wire [127:0] switch_in_1_tdata;
    wire                     switch_in_1_tvalid;
    wire [3:0] switch_in_1_tdest;
    wire [1:0]   switch_in_1_tid;
    wire                     switch_in_1_tready;

    wire [127:0] switch_out_1_tdata;
    wire                     switch_out_1_tvalid;
    wire [3:0] switch_out_1_tdest;
    wire [1:0]   switch_out_1_tid;
    wire                     switch_out_1_tready;


    wire [127:0] switch_in_2_tdata;
    wire                     switch_in_2_tvalid;
    wire [3:0] switch_in_2_tdest;
    wire [1:0]   switch_in_2_tid;
    wire                     switch_in_2_tready;

    wire [127:0] switch_out_2_tdata;
    wire                     switch_out_2_tvalid;
    wire [3:0] switch_out_2_tdest;
    wire [1:0]   switch_out_2_tid;
    wire                     switch_out_2_tready;


    wire [127:0] switch_in_3_tdata;
    wire                     switch_in_3_tvalid;
    wire [3:0] switch_in_3_tdest;
    wire [1:0]   switch_in_3_tid;
    wire                     switch_in_3_tready;

    wire [127:0] switch_out_3_tdata;
    wire                     switch_out_3_tvalid;
    wire [3:0] switch_out_3_tdest;
    wire [1:0]   switch_out_3_tid;
    wire                     switch_out_3_tready;


    wire [127:0] switch_in_4_tdata;
    wire                     switch_in_4_tvalid;
    wire [3:0] switch_in_4_tdest;
    wire [1:0]   switch_in_4_tid;
    wire                     switch_in_4_tready;

    wire [127:0] switch_out_4_tdata;
    wire                     switch_out_4_tvalid;
    wire [3:0] switch_out_4_tdest;
    wire [1:0]   switch_out_4_tid;
    wire                     switch_out_4_tready;


    wire [127:0] switch_in_5_tdata;
    wire                     switch_in_5_tvalid;
    wire [3:0] switch_in_5_tdest;
    wire [1:0]   switch_in_5_tid;
    wire                     switch_in_5_tready;

    wire [127:0] switch_out_5_tdata;
    wire                     switch_out_5_tvalid;
    wire [3:0] switch_out_5_tdest;
    wire [1:0]   switch_out_5_tid;
    wire                     switch_out_5_tready;


    wire [127:0] switch_in_6_tdata;
    wire                     switch_in_6_tvalid;
    wire [3:0] switch_in_6_tdest;
    wire [1:0]   switch_in_6_tid;
    wire                     switch_in_6_tready;

    wire [127:0] switch_out_6_tdata;
    wire                     switch_out_6_tvalid;
    wire [3:0] switch_out_6_tdest;
    wire [1:0]   switch_out_6_tid;
    wire                     switch_out_6_tready;


    wire [127:0] switch_in_7_tdata;
    wire                     switch_in_7_tvalid;
    wire [3:0] switch_in_7_tdest;
    wire [1:0]   switch_in_7_tid;
    wire                     switch_in_7_tready;

    wire [127:0] switch_out_7_tdata;
    wire                     switch_out_7_tvalid;
    wire [3:0] switch_out_7_tdest;
    wire [1:0]   switch_out_7_tid;
    wire                     switch_out_7_tready;


    wire [127:0] switch_in_8_tdata;
    wire                     switch_in_8_tvalid;
    wire [3:0] switch_in_8_tdest;
    wire [1:0]   switch_in_8_tid;
    wire                     switch_in_8_tready;

    wire [127:0] switch_out_8_tdata;
    wire                     switch_out_8_tvalid;
    wire [3:0] switch_out_8_tdest;
    wire [1:0]   switch_out_8_tid;
    wire                     switch_out_8_tready;


    wire [127:0] switch_in_9_tdata;
    wire                     switch_in_9_tvalid;
    wire [3:0] switch_in_9_tdest;
    wire [1:0]   switch_in_9_tid;
    wire                     switch_in_9_tready;

    wire [127:0] switch_out_9_tdata;
    wire                     switch_out_9_tvalid;
    wire [3:0] switch_out_9_tdest;
    wire [1:0]   switch_out_9_tid;
    wire                     switch_out_9_tready;


    wire [127:0] switch_in_10_tdata;
    wire                     switch_in_10_tvalid;
    wire [3:0] switch_in_10_tdest;
    wire [1:0]   switch_in_10_tid;
    wire                     switch_in_10_tready;

    wire [127:0] switch_out_10_tdata;
    wire                     switch_out_10_tvalid;
    wire [3:0] switch_out_10_tdest;
    wire [1:0]   switch_out_10_tid;
    wire                     switch_out_10_tready;


    wire [127:0] switch_in_11_tdata;
    wire                     switch_in_11_tvalid;
    wire [3:0] switch_in_11_tdest;
    wire [1:0]   switch_in_11_tid;
    wire                     switch_in_11_tready;

    wire [127:0] switch_out_11_tdata;
    wire                     switch_out_11_tvalid;
    wire [3:0] switch_out_11_tdest;
    wire [1:0]   switch_out_11_tid;
    wire                     switch_out_11_tready;


    wire [127:0] switch_in_12_tdata;
    wire                     switch_in_12_tvalid;
    wire [3:0] switch_in_12_tdest;
    wire [1:0]   switch_in_12_tid;
    wire                     switch_in_12_tready;

    wire [127:0] switch_out_12_tdata;
    wire                     switch_out_12_tvalid;
    wire [3:0] switch_out_12_tdest;
    wire [1:0]   switch_out_12_tid;
    wire                     switch_out_12_tready;


    wire [127:0] switch_in_13_tdata;
    wire                     switch_in_13_tvalid;
    wire [3:0] switch_in_13_tdest;
    wire [1:0]   switch_in_13_tid;
    wire                     switch_in_13_tready;

    wire [127:0] switch_out_13_tdata;
    wire                     switch_out_13_tvalid;
    wire [3:0] switch_out_13_tdest;
    wire [1:0]   switch_out_13_tid;
    wire                     switch_out_13_tready;



(* keep = "true" *) axis_switch_1_to_13 switch_inst (
    .clk(clk),
    .rst(reset),

    // port 0 inputs
    .axis_in_0_tdata(switch_in_0_tdata),
    .axis_in_0_tvalid(switch_in_0_tvalid),
    .axis_in_0_tdest(switch_in_0_tdest),
    .axis_in_0_tid(switch_in_0_tid),
    .axis_in_0_tready(switch_in_0_tready),
    // port 0 outputs
    .axis_out_0_tdata(switch_out_0_tdata),
    .axis_out_0_tvalid(switch_out_0_tvalid),
    .axis_out_0_tdest(switch_out_0_tdest),
    .axis_out_0_tid(switch_out_0_tid),
    .axis_out_0_tready(switch_out_0_tready),

    // port 1 inputs
    .axis_in_1_tdata(switch_in_1_tdata),
    .axis_in_1_tvalid(switch_in_1_tvalid),
    .axis_in_1_tdest(switch_in_1_tdest),
    .axis_in_1_tid(switch_in_1_tid),
    .axis_in_1_tready(switch_in_1_tready),
    // port 1 outputs
    .axis_out_1_tdata(switch_out_1_tdata),
    .axis_out_1_tvalid(switch_out_1_tvalid),
    .axis_out_1_tdest(switch_out_1_tdest),
    .axis_out_1_tid(switch_out_1_tid),
    .axis_out_1_tready(switch_out_1_tready),

    // port 2 inputs
    .axis_in_2_tdata(switch_in_2_tdata),
    .axis_in_2_tvalid(switch_in_2_tvalid),
    .axis_in_2_tdest(switch_in_2_tdest),
    .axis_in_2_tid(switch_in_2_tid),
    .axis_in_2_tready(switch_in_2_tready),
    // port 2 outputs
    .axis_out_2_tdata(switch_out_2_tdata),
    .axis_out_2_tvalid(switch_out_2_tvalid),
    .axis_out_2_tdest(switch_out_2_tdest),
    .axis_out_2_tid(switch_out_2_tid),
    .axis_out_2_tready(switch_out_2_tready),

    // port 3 inputs
    .axis_in_3_tdata(switch_in_3_tdata),
    .axis_in_3_tvalid(switch_in_3_tvalid),
    .axis_in_3_tdest(switch_in_3_tdest),
    .axis_in_3_tid(switch_in_3_tid),
    .axis_in_3_tready(switch_in_3_tready),
    // port 3 outputs
    .axis_out_3_tdata(switch_out_3_tdata),
    .axis_out_3_tvalid(switch_out_3_tvalid),
    .axis_out_3_tdest(switch_out_3_tdest),
    .axis_out_3_tid(switch_out_3_tid),
    .axis_out_3_tready(switch_out_3_tready),

    // port 4 inputs
    .axis_in_4_tdata(switch_in_4_tdata),
    .axis_in_4_tvalid(switch_in_4_tvalid),
    .axis_in_4_tdest(switch_in_4_tdest),
    .axis_in_4_tid(switch_in_4_tid),
    .axis_in_4_tready(switch_in_4_tready),
    // port 4 outputs
    .axis_out_4_tdata(switch_out_4_tdata),
    .axis_out_4_tvalid(switch_out_4_tvalid),
    .axis_out_4_tdest(switch_out_4_tdest),
    .axis_out_4_tid(switch_out_4_tid),
    .axis_out_4_tready(switch_out_4_tready),

    // port 5 inputs
    .axis_in_5_tdata(switch_in_5_tdata),
    .axis_in_5_tvalid(switch_in_5_tvalid),
    .axis_in_5_tdest(switch_in_5_tdest),
    .axis_in_5_tid(switch_in_5_tid),
    .axis_in_5_tready(switch_in_5_tready),
    // port 5 outputs
    .axis_out_5_tdata(switch_out_5_tdata),
    .axis_out_5_tvalid(switch_out_5_tvalid),
    .axis_out_5_tdest(switch_out_5_tdest),
    .axis_out_5_tid(switch_out_5_tid),
    .axis_out_5_tready(switch_out_5_tready),

    // port 6 inputs
    .axis_in_6_tdata(switch_in_6_tdata),
    .axis_in_6_tvalid(switch_in_6_tvalid),
    .axis_in_6_tdest(switch_in_6_tdest),
    .axis_in_6_tid(switch_in_6_tid),
    .axis_in_6_tready(switch_in_6_tready),
    // port 6 outputs
    .axis_out_6_tdata(switch_out_6_tdata),
    .axis_out_6_tvalid(switch_out_6_tvalid),
    .axis_out_6_tdest(switch_out_6_tdest),
    .axis_out_6_tid(switch_out_6_tid),
    .axis_out_6_tready(switch_out_6_tready),

    // port 7 inputs
    .axis_in_7_tdata(switch_in_7_tdata),
    .axis_in_7_tvalid(switch_in_7_tvalid),
    .axis_in_7_tdest(switch_in_7_tdest),
    .axis_in_7_tid(switch_in_7_tid),
    .axis_in_7_tready(switch_in_7_tready),
    // port 7 outputs
    .axis_out_7_tdata(switch_out_7_tdata),
    .axis_out_7_tvalid(switch_out_7_tvalid),
    .axis_out_7_tdest(switch_out_7_tdest),
    .axis_out_7_tid(switch_out_7_tid),
    .axis_out_7_tready(switch_out_7_tready),

    // port 8 inputs
    .axis_in_8_tdata(switch_in_8_tdata),
    .axis_in_8_tvalid(switch_in_8_tvalid),
    .axis_in_8_tdest(switch_in_8_tdest),
    .axis_in_8_tid(switch_in_8_tid),
    .axis_in_8_tready(switch_in_8_tready),
    // port 8 outputs
    .axis_out_8_tdata(switch_out_8_tdata),
    .axis_out_8_tvalid(switch_out_8_tvalid),
    .axis_out_8_tdest(switch_out_8_tdest),
    .axis_out_8_tid(switch_out_8_tid),
    .axis_out_8_tready(switch_out_8_tready),

    // port 9 inputs
    .axis_in_9_tdata(switch_in_9_tdata),
    .axis_in_9_tvalid(switch_in_9_tvalid),
    .axis_in_9_tdest(switch_in_9_tdest),
    .axis_in_9_tid(switch_in_9_tid),
    .axis_in_9_tready(switch_in_9_tready),
    // port 9 outputs
    .axis_out_9_tdata(switch_out_9_tdata),
    .axis_out_9_tvalid(switch_out_9_tvalid),
    .axis_out_9_tdest(switch_out_9_tdest),
    .axis_out_9_tid(switch_out_9_tid),
    .axis_out_9_tready(switch_out_9_tready),

    // port 10 inputs
    .axis_in_10_tdata(switch_in_10_tdata),
    .axis_in_10_tvalid(switch_in_10_tvalid),
    .axis_in_10_tdest(switch_in_10_tdest),
    .axis_in_10_tid(switch_in_10_tid),
    .axis_in_10_tready(switch_in_10_tready),
    // port 10 outputs
    .axis_out_10_tdata(switch_out_10_tdata),
    .axis_out_10_tvalid(switch_out_10_tvalid),
    .axis_out_10_tdest(switch_out_10_tdest),
    .axis_out_10_tid(switch_out_10_tid),
    .axis_out_10_tready(switch_out_10_tready),

    // port 11 inputs
    .axis_in_11_tdata(switch_in_11_tdata),
    .axis_in_11_tvalid(switch_in_11_tvalid),
    .axis_in_11_tdest(switch_in_11_tdest),
    .axis_in_11_tid(switch_in_11_tid),
    .axis_in_11_tready(switch_in_11_tready),
    // port 11 outputs
    .axis_out_11_tdata(switch_out_11_tdata),
    .axis_out_11_tvalid(switch_out_11_tvalid),
    .axis_out_11_tdest(switch_out_11_tdest),
    .axis_out_11_tid(switch_out_11_tid),
    .axis_out_11_tready(switch_out_11_tready),

    // port 12 inputs
    .axis_in_12_tdata(switch_in_12_tdata),
    .axis_in_12_tvalid(switch_in_12_tvalid),
    .axis_in_12_tdest(switch_in_12_tdest),
    .axis_in_12_tid(switch_in_12_tid),
    .axis_in_12_tready(switch_in_12_tready),
    // port 12 outputs
    .axis_out_12_tdata(switch_out_12_tdata),
    .axis_out_12_tvalid(switch_out_12_tvalid),
    .axis_out_12_tdest(switch_out_12_tdest),
    .axis_out_12_tid(switch_out_12_tid),
    .axis_out_12_tready(switch_out_12_tready),

    // port 13 inputs
    .axis_in_13_tdata(switch_in_13_tdata),
    .axis_in_13_tvalid(switch_in_13_tvalid),
    .axis_in_13_tdest(switch_in_13_tdest),
    .axis_in_13_tid(switch_in_13_tid),
    .axis_in_13_tready(switch_in_13_tready),
    // port 13 outputs
    .axis_out_13_tdata(switch_out_13_tdata),
    .axis_out_13_tvalid(switch_out_13_tvalid),
    .axis_out_13_tdest(switch_out_13_tdest),
    .axis_out_13_tid(switch_out_13_tid),
    .axis_out_13_tready(switch_out_13_tready),

);

    // Connect PE 0 to switch
    assign switch_in_1_tdata = pe0_out_data;
    assign switch_in_1_tvalid = pe0_out_valid;
    assign switch_in_1_tdest = pe0_out_dest;
    assign switch_in_1_tid = pe0_out_id;
    assign pe0_out_ready = switch_in_1_tready;
    // Connect switch output to PE 0
    assign pe0_in_data = switch_out_1_tdata;
    assign pe0_in_valid = switch_out_1_tvalid;
    assign pe0_in_dest = switch_out_1_tdest;
    assign pe0_in_id = switch_out_1_tid;
    assign switch_out_1_tready = pe0_in_ready; 

    // Connect PE 1 to switch
    assign switch_in_2_tdata = pe1_out_data;
    assign switch_in_2_tvalid = pe1_out_valid;
    assign switch_in_2_tdest = pe1_out_dest;
    assign switch_in_2_tid = pe1_out_id;
    assign pe1_out_ready = switch_in_2_tready;
    // Connect switch output to PE 1
    assign pe1_in_data = switch_out_2_tdata;
    assign pe1_in_valid = switch_out_2_tvalid;
    assign pe1_in_dest = switch_out_2_tdest;
    assign pe1_in_id = switch_out_2_tid;
    assign switch_out_2_tready = pe1_in_ready; 

    // Connect PE 2 to switch
    assign switch_in_3_tdata = pe2_out_data;
    assign switch_in_3_tvalid = pe2_out_valid;
    assign switch_in_3_tdest = pe2_out_dest;
    assign switch_in_3_tid = pe2_out_id;
    assign pe2_out_ready = switch_in_3_tready;
    // Connect switch output to PE 2
    assign pe2_in_data = switch_out_3_tdata;
    assign pe2_in_valid = switch_out_3_tvalid;
    assign pe2_in_dest = switch_out_3_tdest;
    assign pe2_in_id = switch_out_3_tid;
    assign switch_out_3_tready = pe2_in_ready; 

    // Connect PE 3 to switch
    assign switch_in_4_tdata = pe3_out_data;
    assign switch_in_4_tvalid = pe3_out_valid;
    assign switch_in_4_tdest = pe3_out_dest;
    assign switch_in_4_tid = pe3_out_id;
    assign pe3_out_ready = switch_in_4_tready;
    // Connect switch output to PE 3
    assign pe3_in_data = switch_out_4_tdata;
    assign pe3_in_valid = switch_out_4_tvalid;
    assign pe3_in_dest = switch_out_4_tdest;
    assign pe3_in_id = switch_out_4_tid;
    assign switch_out_4_tready = pe3_in_ready; 

    // Connect PE 4 to switch
    assign switch_in_5_tdata = pe4_out_data;
    assign switch_in_5_tvalid = pe4_out_valid;
    assign switch_in_5_tdest = pe4_out_dest;
    assign switch_in_5_tid = pe4_out_id;
    assign pe4_out_ready = switch_in_5_tready;
    // Connect switch output to PE 4
    assign pe4_in_data = switch_out_5_tdata;
    assign pe4_in_valid = switch_out_5_tvalid;
    assign pe4_in_dest = switch_out_5_tdest;
    assign pe4_in_id = switch_out_5_tid;
    assign switch_out_5_tready = pe4_in_ready; 

    // Connect PE 5 to switch
    assign switch_in_6_tdata = pe5_out_data;
    assign switch_in_6_tvalid = pe5_out_valid;
    assign switch_in_6_tdest = pe5_out_dest;
    assign switch_in_6_tid = pe5_out_id;
    assign pe5_out_ready = switch_in_6_tready;
    // Connect switch output to PE 5
    assign pe5_in_data = switch_out_6_tdata;
    assign pe5_in_valid = switch_out_6_tvalid;
    assign pe5_in_dest = switch_out_6_tdest;
    assign pe5_in_id = switch_out_6_tid;
    assign switch_out_6_tready = pe5_in_ready; 

    // Connect PE 6 to switch
    assign switch_in_7_tdata = pe6_out_data;
    assign switch_in_7_tvalid = pe6_out_valid;
    assign switch_in_7_tdest = pe6_out_dest;
    assign switch_in_7_tid = pe6_out_id;
    assign pe6_out_ready = switch_in_7_tready;
    // Connect switch output to PE 6
    assign pe6_in_data = switch_out_7_tdata;
    assign pe6_in_valid = switch_out_7_tvalid;
    assign pe6_in_dest = switch_out_7_tdest;
    assign pe6_in_id = switch_out_7_tid;
    assign switch_out_7_tready = pe6_in_ready; 

    // Connect PE 7 to switch
    assign switch_in_8_tdata = pe7_out_data;
    assign switch_in_8_tvalid = pe7_out_valid;
    assign switch_in_8_tdest = pe7_out_dest;
    assign switch_in_8_tid = pe7_out_id;
    assign pe7_out_ready = switch_in_8_tready;
    // Connect switch output to PE 7
    assign pe7_in_data = switch_out_8_tdata;
    assign pe7_in_valid = switch_out_8_tvalid;
    assign pe7_in_dest = switch_out_8_tdest;
    assign pe7_in_id = switch_out_8_tid;
    assign switch_out_8_tready = pe7_in_ready; 

    // Connect PE 8 to switch
    assign switch_in_9_tdata = pe8_out_data;
    assign switch_in_9_tvalid = pe8_out_valid;
    assign switch_in_9_tdest = pe8_out_dest;
    assign switch_in_9_tid = pe8_out_id;
    assign pe8_out_ready = switch_in_9_tready;
    // Connect switch output to PE 8
    assign pe8_in_data = switch_out_9_tdata;
    assign pe8_in_valid = switch_out_9_tvalid;
    assign pe8_in_dest = switch_out_9_tdest;
    assign pe8_in_id = switch_out_9_tid;
    assign switch_out_9_tready = pe8_in_ready; 

    // Connect PE 9 to switch
    assign switch_in_10_tdata = pe9_out_data;
    assign switch_in_10_tvalid = pe9_out_valid;
    assign switch_in_10_tdest = pe9_out_dest;
    assign switch_in_10_tid = pe9_out_id;
    assign pe9_out_ready = switch_in_10_tready;
    // Connect switch output to PE 9
    assign pe9_in_data = switch_out_10_tdata;
    assign pe9_in_valid = switch_out_10_tvalid;
    assign pe9_in_dest = switch_out_10_tdest;
    assign pe9_in_id = switch_out_10_tid;
    assign switch_out_10_tready = pe9_in_ready; 

    // Connect PE 10 to switch
    assign switch_in_11_tdata = pe10_out_data;
    assign switch_in_11_tvalid = pe10_out_valid;
    assign switch_in_11_tdest = pe10_out_dest;
    assign switch_in_11_tid = pe10_out_id;
    assign pe10_out_ready = switch_in_11_tready;
    // Connect switch output to PE 10
    assign pe10_in_data = switch_out_11_tdata;
    assign pe10_in_valid = switch_out_11_tvalid;
    assign pe10_in_dest = switch_out_11_tdest;
    assign pe10_in_id = switch_out_11_tid;
    assign switch_out_11_tready = pe10_in_ready; 

    // Connect PE 11 to switch
    assign switch_in_12_tdata = pe11_out_data;
    assign switch_in_12_tvalid = pe11_out_valid;
    assign switch_in_12_tdest = pe11_out_dest;
    assign switch_in_12_tid = pe11_out_id;
    assign pe11_out_ready = switch_in_12_tready;
    // Connect switch output to PE 11
    assign pe11_in_data = switch_out_12_tdata;
    assign pe11_in_valid = switch_out_12_tvalid;
    assign pe11_in_dest = switch_out_12_tdest;
    assign pe11_in_id = switch_out_12_tid;
    assign switch_out_12_tready = pe11_in_ready; 


// assign switch_in_13_tdata = inp_data;
// assign switch_in_13_tvalid = inp_valid;
// assign switch_in_13_tdest = inp_dest;
// assign switch_in_13_tid = inp_id;
// assign inp_ready = switch_in_13_tready;

assign outp_data = switch_out_13_tdata;
assign outp_valid = switch_out_13_tvalid;
assign outp_dest = switch_out_13_tdest;
assign outp_id = switch_out_13_tid;
// assign switch_out_13_tready = outp_ready;

// axi_hbm
   (* keep = "true" *) axi_eth eth_inst (
        .clk(clk),
        .rst(reset),

        .axis_in_tvalid(switch_out_0_tvalid),
        .axis_in_tready(switch_out_0_tready),
        .axis_in_tdata(switch_out_0_tdata),
        .axis_in_tid(switch_out_0_tid),
        .axis_in_tdest(switch_out_0_tdest),
        .axis_in_tlast(in_tlast[0]),

        .axis_out_tvalid(switch_in_0_tvalid),
        .axis_out_tready(switch_in_0_tready),
        .axis_out_tdata(switch_in_0_tdata),
        .axis_out_tid(switch_in_0_tid),
        .axis_out_tdest(switch_in_0_tdest),
        .axis_out_tlast(out_tlast[0])
    );

// axi_eth
   (* keep = "true" *) axi_hbm hbm_inst (
        .clk(clk),
        .rst(reset),

        .axis_in_tvalid(switch_out_13_tvalid),
        .axis_in_tready(switch_out_13_tready),
        .axis_in_tdata(switch_out_13_tdata),
        .axis_in_tid(switch_out_13_tid),
        .axis_in_tdest(switch_out_13_tdest),
        .axis_in_tlast(in_tlast[1]),

        .axis_out_tvalid(switch_in_13_tvalid),
        .axis_out_tready(switch_in_13_tready),
        .axis_out_tdata(switch_in_13_tdata),
        .axis_out_tid(switch_in_13_tid),
        .axis_out_tdest(switch_in_13_tdest),
        .axis_out_tlast(out_tlast[1])
    );

endmodule