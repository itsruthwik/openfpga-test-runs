// $Id: rtr_routing_logic.v 5188 2012-08-30 00:31:31Z dub $

/*
 Copyright (c) 2007-2012, Trustees of The Leland Stanford Junior University
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 Redistributions of source code must retain the above copyright notice, this 
 list of conditions and the following disclaimer.
 Redistributions in binary form must reproduce the above copyright notice, this
 list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//==============================================================================
// routing logic for VC router
//==============================================================================


`include "rtr_routing_logic_asc.v"
`include "rtr_routing_logic_desc.v"
`include "rtr_routing_logic_class.v"

module rtr_routing_logic
  (mode_dim_order, router_address, sel_mc, sel_irc, dest_info, route_op, route_orc);
   

`include "c_functions.v"
`include "c_constants.v"
//`include "parameters.v"
  //  //---------------------------------------------------------------------------
  //  // parameters
  //  //---------------------------------------------------------------------------
   
   // number of message classes (e.g. request, reply)
   parameter num_message_classes = 2;
   
   // nuber of resource classes (e.g. minimal, adaptive)
   parameter num_resource_classes = 2;
   
   // number of routers in each dimension
   parameter num_routers_per_dim = 4;
   
   // number of dimensions in network
   parameter num_dimensions = 2;
   
   // number of nodes per router (a.k.a. consentration factor)
   parameter num_nodes_per_router = 1;
   
   // connectivity within each dimension
   parameter connectivity = `CONNECTIVITY_LINE;
   
   // select routing function type
   parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
   
   // select order of dimension traversal
   //parameter dim_order = `DIM_ORDER_ASCENDING;
   
   parameter reset_type = `RESET_TYPE_ASYNC;
   
   
   //---------------------------------------------------------------------------
   // derived parameters
   //---------------------------------------------------------------------------
   
   // width required to select individual message class
   localparam message_class_idx_width = clogb(num_message_classes);
   
   // width required to select individual router in a dimension
   localparam dim_addr_width = clogb(num_routers_per_dim);
   
   // width required to select individual router in network
   localparam router_addr_width = num_dimensions * dim_addr_width;
   
   // width required to select individual node at current router
   localparam node_addr_width = clogb(num_nodes_per_router);
   
   // total number of bits required for storing routing information
   localparam dest_info_width
     = (routing_type == `ROUTING_TYPE_PHASED_DOR) ? 
       (num_resource_classes * router_addr_width + node_addr_width) : 
       -1;
   
   // width of global addresses
   localparam addr_width = router_addr_width + node_addr_width;
   
   // number of adjacent routers in each dimension
   localparam num_neighbors_per_dim
     = ((connectivity == `CONNECTIVITY_LINE) ||
	(connectivity == `CONNECTIVITY_RING)) ?
       2 :
       (connectivity == `CONNECTIVITY_FULL) ?
       (num_routers_per_dim - 1) :
       -1;
   
   // number of input and output ports on router
   localparam num_ports
     = num_dimensions * num_neighbors_per_dim + num_nodes_per_router;
   
   // number of network-facing ports on router (i.e., w/o inject/eject ports)
   localparam num_network_ports = num_ports - num_nodes_per_router;
   
   
   //---------------------------------------------------------------------------
   // interface
   //---------------------------------------------------------------------------
   
   //current router's address
   input [0:router_addr_width-1] router_address;
   
   // select current message class
   input [0:num_message_classes-1] sel_mc;
   
   // select current resource class
   input [0:num_resource_classes-1] sel_irc;
   
   // routing data
   input [0:dest_info_width-1]     dest_info;
   
   // output port to forward to
   output [0:num_ports-1] 	    route_op;
   reg [0:num_ports-1] 	    route_op;
   
   // select outgoing resource class
   output [0:num_resource_classes-1] route_orc;
   reg [0:num_resource_classes-1]   route_orc;

   input wire [1:0] mode_dim_order;

   //---------------------------------------------------------------------------
   // internal signals
   //--------------------------------------------------------------------------- 
	 wire [0:num_ports-1] 	    route_op_asc;
	 wire [0:num_resource_classes-1]   route_orc_asc;
	 wire [0:num_ports-1] 	    route_op_desc;
	 wire [0:num_resource_classes-1]   route_orc_desc;
	 wire [0:num_ports-1] 	    route_op_class;
	 wire [0:num_resource_classes-1]   route_orc_class;

   //---------------------------------------------------------------------------
   // implementation
   //---------------------------------------------------------------------------
   
rtr_routing_logic_asc     #(.num_message_classes(num_message_classes),
       .num_resource_classes(num_resource_classes),
       .num_routers_per_dim(num_routers_per_dim),
       .num_dimensions(num_dimensions),
       .num_nodes_per_router(num_nodes_per_router),
       .connectivity(connectivity),
       .routing_type(routing_type)) rtr_logic_asc(.router_address(router_address), .sel_mc(sel_mc), .sel_irc(sel_irc), .dest_info(dest_info), .route_op(route_op_asc), .route_orc(route_orc_asc));
rtr_routing_logic_desc     #(.num_message_classes(num_message_classes),
       .num_resource_classes(num_resource_classes),
       .num_routers_per_dim(num_routers_per_dim),
       .num_dimensions(num_dimensions),
       .num_nodes_per_router(num_nodes_per_router),
       .connectivity(connectivity),
       .routing_type(routing_type)) rtr_logic_desc(.router_address(router_address), .sel_mc(sel_mc), .sel_irc(sel_irc), .dest_info(dest_info), .route_op(route_op_desc), .route_orc(route_orc_desc));
rtr_routing_logic_class     #(.num_message_classes(num_message_classes),
       .num_resource_classes(num_resource_classes),
       .num_routers_per_dim(num_routers_per_dim),
       .num_dimensions(num_dimensions),
       .num_nodes_per_router(num_nodes_per_router),
       .connectivity(connectivity),
       .routing_type(routing_type)) rtr_logic_class(.router_address(router_address), .sel_mc(sel_mc), .sel_irc(sel_irc), .dest_info(dest_info), .route_op(route_op_class), .route_orc(route_orc_class));
   

  always @(*) begin
    if(mode_dim_order == `DIM_ORDER_DESCENDING) begin
      route_op = route_op_desc;
      route_orc = route_orc_desc;   
    end
    else if(mode_dim_order == `DIM_ORDER_BY_CLASS) begin
      route_op = route_op_class;
      route_orc = route_orc_class;
    end
    else begin
      route_op = route_op_asc;
      route_orc = route_orc_asc;
    end
  
  end

endmodule




