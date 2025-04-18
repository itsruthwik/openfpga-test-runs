//rtr_routing_logic submodule for DIM_ORDER_ASCENDING

//==============================================================================
// routing logic for VC router
//==============================================================================

module rtr_routing_logic_asc
  (router_address, sel_mc, sel_irc, dest_info, route_op, route_orc);
   
`include "c_functions.v"
`include "c_constants.v"
   
   //---------------------------------------------------------------------------
   // parameters
   //---------------------------------------------------------------------------
   
   // number of message classes (e.g. request, reply)
   parameter num_message_classes = 2;
   
   // number of resource classes (e.g. minimal, adaptive)
   parameter num_resource_classes = 2;
   
   // number of routers in each dimension
   parameter num_routers_per_dim = 4;
   
   // number of dimensions in network
   parameter num_dimensions = 2;
   
   // number of nodes per router (a.k.a. concentration factor)
   parameter num_nodes_per_router = 1;
   
   // connectivity within each dimension
   parameter connectivity = `CONNECTIVITY_LINE;
   
   // select routing function type
   parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
   
   // FIXED order of dimension traversal: always ascending
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
   
   // current router's address
   input [0:router_addr_width-1] router_address;
   
   // select current message class
   input [0:num_message_classes-1] sel_mc;
   
   // select current resource class
   input [0:num_resource_classes-1] sel_irc;
   
   // routing data
   input [0:dest_info_width-1]     dest_info;
   
   // output port to forward to
   output [0:num_ports-1] 	    route_op;
   wire [0:num_ports-1] 	    route_op;
   
   // select outgoing resource class
   output [0:num_resource_classes-1] route_orc;
   wire [0:num_resource_classes-1]   route_orc;
   
   
   //---------------------------------------------------------------------------
   // implementation
   //---------------------------------------------------------------------------
   
   wire [0:num_network_ports-1]      route_onp;
   assign route_op[0:num_network_ports-1] = route_onp;
   
   wire [0:num_resource_classes*num_network_ports-1] route_orc_onp;
   wire 					     eject;
   
   generate
      
      case(routing_type)
	
	`ROUTING_TYPE_PHASED_DOR:
	  begin
	     
	     // all router addresses (intermediate + final)
	     wire [0:num_resource_classes*router_addr_width-1] dest_router_addr_irc;
	     assign dest_router_addr_irc
	       = dest_info[0:num_resource_classes*router_addr_width-1];
	     
	     wire [0:num_resource_classes-1] reached_dest_irc;
	     
	     genvar 			     irc;
	     
	     for(irc = 0; irc < num_resource_classes; irc = irc + 1)
	       begin:ircs
		  
		  // address of destination router for current resource class
		  wire [0:router_addr_width-1] dest_router_addr;
		  assign dest_router_addr
		    = dest_router_addr_irc[irc*router_addr_width:
					   (irc+1)*router_addr_width-1];
		  
		  wire [0:num_network_ports-1] route_onp;
		  
		  // We will compute an array of match signals for each dimension.
		  // (Note that addr_match_d is indexed per dimension.)
		  wire [0:num_dimensions-1]    addr_match_d;
		  
		  genvar 		       dim;
		  
		  for(dim = 0; dim < num_dimensions; dim = dim + 1)
		    begin:dims
		       
		       wire [0:dim_addr_width-1] dest_dim_addr;
		       assign dest_dim_addr
			 = dest_router_addr[dim*dim_addr_width:
					    (dim+1)*dim_addr_width-1];
		       
		       wire [0:dim_addr_width-1] curr_dim_addr;
		       assign curr_dim_addr
			 = router_address[dim*dim_addr_width:
					  (dim+1)*dim_addr_width-1];
		       
		       wire 			 dest_lt_curr;
		       wire [0:dim_addr_width-1] dest_minus_curr;
		       assign {dest_lt_curr, dest_minus_curr}
			 = dest_dim_addr - curr_dim_addr;
		       
		       wire 			 curr_lt_dest;
		       wire [0:dim_addr_width-1] curr_minus_dest;
		       assign {curr_lt_dest, curr_minus_dest}
			 = curr_dim_addr - dest_dim_addr;
		       
		       // Record whether the addresses match in this dimension
		       assign addr_match_d[dim] = ~dest_lt_curr & ~curr_lt_dest;
		       
		       // With DIM_ORDER fixed to ASCENDING:
		       // For the first dimension, always select.
		       // For subsequent dimensions, select only if all previous dimensions match.
		       wire dim_sel;
		       if (dim == num_dimensions-1) begin : gen_last_dim
      		   	assign dim_sel = 1'b1;
   			   end else begin : gen_non_last_dim
      			assign dim_sel = &addr_match_d[dim+1:num_dimensions-1];
    		   end
		       
		       wire [0:num_neighbors_per_dim-1] 	      port_dec;
		       
		       case(connectivity)
			 
			 `CONNECTIVITY_LINE:
			   begin
			      assign port_dec = {dest_lt_curr, curr_lt_dest};
			   end
			 
			 `CONNECTIVITY_RING:
			   begin
			      // Use a tie-breaker based on the LSB of the current dimension address.
			      wire tie_break;
			      assign tie_break = curr_dim_addr[dim_addr_width-1];
			      
			      wire [0:dim_addr_width] dest_minus_curr_x2;
			      assign dest_minus_curr_x2 = {dest_minus_curr, tie_break};
			      
			      wire [0:dim_addr_width] curr_minus_dest_x2;
			      assign curr_minus_dest_x2 = {curr_minus_dest, ~tie_break};
			      
			      wire 		      dest_minus_curr_gt_half;
			      assign dest_minus_curr_gt_half = dest_minus_curr_x2 > num_routers_per_dim;
			      
			      wire 		      curr_minus_dest_gt_half;
			      assign curr_minus_dest_gt_half = curr_minus_dest_x2 > num_routers_per_dim;
			      
			      wire 		      route_down;
			      assign route_down = (curr_lt_dest & dest_minus_curr_gt_half) |
						   (dest_lt_curr & ~curr_minus_dest_gt_half);
			      
			      wire 		      route_up;
			      assign route_up = (curr_lt_dest & ~dest_minus_curr_gt_half) |
						   (dest_lt_curr & curr_minus_dest_gt_half);
			      
			      assign port_dec = {route_down, route_up};
			   end
			 
			 `CONNECTIVITY_FULL:
			   begin
			      wire [0:num_routers_per_dim-1] port_sel_up;
			      c_decode
				#(.num_ports(num_routers_per_dim))
			      port_sel_up_dec
				(.data_in(dest_minus_curr),
				 .data_out(port_sel_up));
			      
			      wire [0:num_routers_per_dim-1] port_sel_down_rev;
			      c_decode
				#(.num_ports(num_routers_per_dim))
			      port_sel_down_rev_dec
				(.data_in(curr_minus_dest),
				 .data_out(port_sel_down_rev));
			      
			      wire [0:num_routers_per_dim-1] port_sel_down;
			      c_reverse
				#(.width(num_routers_per_dim))
			      port_sel_down_revr
				(.data_in(port_sel_down_rev),
				 .data_out(port_sel_down));
			      
			      wire [0:num_neighbors_per_dim-1] port_dec_up;
			      assign port_dec_up = port_sel_up[1:num_routers_per_dim-1];
			      
			      wire [0:num_neighbors_per_dim-1] port_dec_down;
			      assign port_dec_down = port_sel_down[0:num_routers_per_dim-2];
			      
			      c_select_mofn
				#(.num_ports(2),
				  .width(num_neighbors_per_dim))
			      port_dec_sel
				(.select({dest_lt_curr, curr_lt_dest}),
				 .data_in({port_dec_down, port_dec_up}),
				 .data_out(port_dec));
			      
			   end
			 
		       endcase
		       
		       assign route_onp[dim*num_neighbors_per_dim:
					(dim+1)*num_neighbors_per_dim-1]
			 = port_dec & {num_neighbors_per_dim{dim_sel}};
		       
		    end
		  
		  assign route_orc_onp[irc*num_network_ports:
				       (irc+1)*num_network_ports-1]
		    = route_onp;
		  
		  assign reached_dest_irc[irc] = &addr_match_d;
		  
	       end
	     
	     if(num_resource_classes == 1)
	       begin
		  assign eject = reached_dest_irc;
		  assign route_orc = 1'b1;
	       end
	     else
	       begin
		  
		  wire [0:num_resource_classes-1] class_done_irc;
		  assign class_done_irc = sel_irc & reached_dest_irc;
		  
		  wire inc_rc;
		  assign inc_rc = |class_done_irc[0:num_resource_classes-2];
		  
		  assign eject = class_done_irc[num_resource_classes-1];
		  
		  assign route_orc = inc_rc ?
				     {1'b0, sel_irc[0:num_resource_classes-2]} :
				     sel_irc;
		  
	       end
	     
	  end
	
      endcase
      
   endgenerate
   
   c_select_1ofn
     #(.num_ports(num_resource_classes),
       .width(num_network_ports))
   route_onp_sel
     (.select(route_orc),
      .data_in(route_orc_onp),
      .data_out(route_onp));
   
   generate
      
      if(num_nodes_per_router == 1)
	    assign route_op[num_ports-1] = eject;
      else if(num_nodes_per_router > 1)
	begin
	   
	   wire [0:node_addr_width-1] dest_node_address;
	   assign dest_node_address
	     = dest_info[dest_info_width-node_addr_width:dest_info_width-1];
	   
	   wire [0:num_nodes_per_router-1] node_sel;
	   c_decode
	     #(.num_ports(num_nodes_per_router))
	   node_sel_dec
	     (.data_in(dest_node_address),
	      .data_out(node_sel));
	   
	   assign route_op[num_ports-num_nodes_per_router:num_ports-1]
		    = node_sel & {num_nodes_per_router{eject}};
	   
	end
      
   endgenerate
   
endmodule
