// $Id: rtr_route_filter.v 5188 2012-08-30 00:31:31Z dub $

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
// module to generate a mask of legal output port and resource class requests 
// based on routing restrictions
//==============================================================================
`include "rtr_route_filter_asc.v"
`include "rtr_route_filter_desc.v"
`include "rtr_route_filter_class.v"

module rtr_route_filter
  (mode_dim_order, clk, route_valid, route_in_op, route_in_orc, route_out_op, route_out_orc, 
   errors);
   
`include "c_constants.v"
`include "rtr_constants.v"
   
   
   //---------------------------------------------------------------------------
   // parameters
   //---------------------------------------------------------------------------
   
   // number of message classes (e.g. request, reply)
   parameter num_message_classes = 2;
   
   // nuber of resource classes (e.g. minimal, adaptive)
   parameter num_resource_classes = 2;
   
   // number of VCs available for each class
   parameter num_vcs_per_class = 1;
   
   // number of input and output ports on router
   parameter num_ports = 5;
   
   // number of adjacent routers in each dimension
   parameter num_neighbors_per_dim = 2;
   
   // number of nodes per router (a.k.a. consentration factor)
   parameter num_nodes_per_router = 4;
   
   // filter out illegal destination ports
   // (the intent is to allow synthesis to optimize away the logic associated 
   // with such turns)
   parameter restrict_turns = 1;
   
   // connectivity within each dimension
   parameter connectivity = `CONNECTIVITY_LINE;
   
   // select routing function type
   parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
   
   // select order of dimension traversal
   //parameter dim_order = `DIM_ORDER_ASCENDING;
   
   // ID of current input port
   parameter port_id = 0;
   
   // ID of current input VC
   parameter vc_id = 0;
   
   
   //---------------------------------------------------------------------------
   // derived parameters
   //---------------------------------------------------------------------------
   
   // current message class
   localparam message_class
     = (vc_id / (num_resource_classes*num_vcs_per_class)) % num_message_classes;
   
   // current resource class
   localparam resource_class
     = (vc_id / num_vcs_per_class) % num_resource_classes;
   
   
   //---------------------------------------------------------------------------
   // implementation
   //---------------------------------------------------------------------------
   
   input clk;
   
   // route information is valid
   input route_valid;
   
   // raw output port
   input [0:num_ports-1] route_in_op;
   
   // raw output resource class
   input [0:num_resource_classes-1] route_in_orc;
   
   // filtered output port
   output [0:num_ports-1] 	    route_out_op;
   reg [0:num_ports-1] 	    route_out_op;
   
   // filtered output resource class
   output [0:num_resource_classes-1] route_out_orc;
   reg [0:num_resource_classes-1]   route_out_orc;
   
   // internal error condition detected
   output [0:1] 		     errors;
   reg [0:1] 			     errors;   

   input [1:0] mode_dim_order;


   //---------------------------------------------------------------------------
   // internal signals
   //----------------------------------------------------------------------------
   wire [0:num_ports-1] 	    route_out_op_asc;
   wire [0:num_ports-1] 	    route_out_op_desc;
   wire [0:num_ports-1] 	    route_out_op_class;
   
   // filtered output resource class
   wire [0:num_resource_classes-1]   route_out_orc_asc;
   wire [0:num_resource_classes-1]   route_out_orc_desc;
   wire [0:num_resource_classes-1]   route_out_orc_class;
   
   // internal error condition detected
   wire [0:1] 			     errors_asc;
   wire [0:1] 			     errors_desc;
   wire [0:1] 			     errors_class; 

   
   
   //---------------------------------------------------------------------------
   // implementation
   //---------------------------------------------------------------------------
  

  rtr_route_filter_asc 	#(.num_message_classes(num_message_classes),
		    .num_resource_classes(num_resource_classes),
		    .num_vcs_per_class(num_vcs_per_class),
		    .num_ports(num_ports),
		    .num_neighbors_per_dim(num_neighbors_per_dim),
		    .num_nodes_per_router(num_nodes_per_router),
		    .restrict_turns(restrict_turns),
		    .connectivity(connectivity),
		    .routing_type(routing_type),
		    .port_id(port_id),
		    .vc_id(vc_id))   rt_filt_asc(clk, route_valid, route_in_op, route_in_orc, route_out_op_asc, route_out_orc_asc, errors_asc);
  
  rtr_route_filter_desc 		  #(.num_message_classes(num_message_classes),
		    .num_resource_classes(num_resource_classes),
		    .num_vcs_per_class(num_vcs_per_class),
		    .num_ports(num_ports),
		    .num_neighbors_per_dim(num_neighbors_per_dim),
		    .num_nodes_per_router(num_nodes_per_router),
		    .restrict_turns(restrict_turns),
		    .connectivity(connectivity),
		    .routing_type(routing_type),
		    .port_id(port_id),
		    .vc_id(vc_id))  rt_filt_desc(clk, route_valid, route_in_op, route_in_orc, route_out_op_desc, route_out_orc_desc, errors_desc);
  rtr_route_filter_class  		 #(.num_message_classes(num_message_classes),
		    .num_resource_classes(num_resource_classes),
		    .num_vcs_per_class(num_vcs_per_class),
		    .num_ports(num_ports),
		    .num_neighbors_per_dim(num_neighbors_per_dim),
		    .num_nodes_per_router(num_nodes_per_router),
		    .restrict_turns(restrict_turns),
		    .connectivity(connectivity),
		    .routing_type(routing_type),
		    .port_id(port_id),
		    .vc_id(vc_id)) rt_filt_class(clk, route_valid, route_in_op, route_in_orc, route_out_op_class, route_out_orc_class, errors_class);   
   

  always @(*) begin
    if(mode_dim_order == `DIM_ORDER_DESCENDING) begin
      route_out_op = route_out_op_desc;
      route_out_orc = route_out_orc_desc;
      errors = errors_desc;    
    end
    else if(mode_dim_order == `DIM_ORDER_BY_CLASS) begin
      route_out_op = route_out_op_class;
      route_out_orc = route_out_orc_class;
      errors = errors_class; 
    end
    else begin
      route_out_op = route_out_op_asc;
      route_out_orc = route_out_orc_asc;
      errors = errors_asc;
    end
  
  end
   
endmodule