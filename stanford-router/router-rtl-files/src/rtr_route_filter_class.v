//submodule rtr_route_filter for dim_order_class
module rtr_route_filter_class
  (clk, route_valid, route_in_op, route_in_orc, route_out_op, route_out_orc, 
   errors);
   
`include "c_constants.v"
`include "rtr_constants.v"
   
   //--------------------------------------------------------------------------
   // Parameters
   //--------------------------------------------------------------------------
   parameter num_message_classes = 2;
   parameter num_resource_classes = 2;
   parameter num_vcs_per_class = 1;
   parameter num_ports = 5;
   parameter num_neighbors_per_dim = 2;
   parameter num_nodes_per_router = 4;
   parameter restrict_turns = 1;
   parameter connectivity = `CONNECTIVITY_LINE;
   parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
   parameter port_id = 0;
   parameter vc_id = 0;
   
   //--------------------------------------------------------------------------
   // Derived Parameters
   //--------------------------------------------------------------------------
   localparam message_class = (vc_id / (num_resource_classes*num_vcs_per_class)) % num_message_classes;
   localparam resource_class = (vc_id / num_vcs_per_class) % num_resource_classes;
   
   //--------------------------------------------------------------------------
   // Ports
   //--------------------------------------------------------------------------
   input clk;
   input route_valid;
   input [0:num_ports-1] route_in_op;
   input [0:num_resource_classes-1] route_in_orc;
   output [0:num_ports-1] route_out_op;
   output [0:num_resource_classes-1] route_out_orc;
   output [0:1] errors;
   
  
  wire [0:num_ports-1] 	     error_op;
  
  genvar 			     op;
  generate
    for(op = 0; op < num_ports; op = op + 1) begin: ops
      case(routing_type)
        `ROUTING_TYPE_PHASED_DOR: begin
          // Handle network ports
          if(op < (num_ports - num_nodes_per_router)) begin
            if(
              // For line and ring connectivity: packets are not allowed to
              // turn back when in the last resource class
              (
                (((connectivity == `CONNECTIVITY_LINE) ||
                  (connectivity == `CONNECTIVITY_RING)) &&
                 (op == port_id) &&
                 (resource_class == (num_resource_classes - 1)))
                ||
                // For full connectivity: packets cannot take two successive steps
                // in the same dimension in the last resource class
                ((connectivity == `CONNECTIVITY_FULL) &&
                 ((op / num_neighbors_per_dim) == (port_id / num_neighbors_per_dim)) &&
                 (resource_class == (num_resource_classes - 1)))
                ||
                // For class-based ordering:
                (
                  (
                    (((message_class % 2) == 0) && 
                     ((op / num_neighbors_per_dim) < (port_id / num_neighbors_per_dim)))
                  ||
                    (((message_class % 2) == 1) &&
                     ((op / num_neighbors_per_dim) > (port_id / num_neighbors_per_dim)))
                  )
                  && (resource_class == (num_resource_classes - 1)) &&
                  (port_id < (num_ports - num_nodes_per_router))
                )
              )
            ) begin
              assign route_out_op[op] = 1'b0;
              assign error_op[op] = route_in_op[op];
            end else begin
              assign route_out_op[op] = route_in_op[op];
              assign error_op[op] = 1'b0;
            end
          end else begin
            // Handle injection/ejection ports
            if(op == port_id) begin
              assign route_out_op[op] = 1'b0;
              assign error_op[op] = route_in_op[op];
            end else begin
              assign route_out_op[op] = route_in_op[op];
              assign error_op[op] = 1'b0;
            end
          end
        end
      endcase
    end
  endgenerate

wire [0:num_resource_classes-1] error_orc;
   
   generate
      
      if(num_resource_classes == 1)
	begin
	   assign route_out_orc = 1'b1;
	   assign error_orc = ~route_out_orc;
	end
      else if(num_resource_classes > 1)
	begin
	   
	   genvar orc;
	   
	   for(orc = 0; orc < num_resource_classes; orc = orc + 1)
	     begin:orcs
		
		case(routing_type)
		  
		  `ROUTING_TYPE_PHASED_DOR:
		    begin
		       
		       // at each hop, packets can either stay in the same 
		       // resource class or advance to the next one
		       if((orc == resource_class) || 
			  (orc == (resource_class + 1)))
			 begin
			    assign route_out_orc[orc] = route_in_orc[orc];
			    assign error_orc[orc] = 1'b0;
			 end
		       else
			 begin
			    assign route_out_orc[orc] = 1'b0;
			    assign error_orc[orc] = route_in_orc[orc];
			 end
		       
		    end
		  
		endcase
		
	     end
	   
	end
      
   endgenerate
   
   wire error_invalid_port;
   assign error_invalid_port = route_valid & ((|error_op) | (~|route_in_op));
   
   wire error_invalid_class;
   assign error_invalid_class = route_valid & ((|error_orc) | (~|route_in_orc));
   
   // synopsys translate_off
   always @(posedge clk)
     begin
	
	if(error_invalid_port)
	  $display({"ERROR: Received flit's destination port violates ",
		    "constraints in module %m."});
	
	if(error_invalid_class)
	  $display({"ERROR: Received flit's destination class violates ",
		    "constraints in module %m."});
	
     end
   
   // synopsys translate_on
   
   assign errors[0] = error_invalid_port;
   assign errors[1] = error_invalid_class;
   
endmodule

