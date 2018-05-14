// =============================================================================
// Filename: FIR_control.v
// Author: 
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
module FIR_control (
	input clk,
	input rst_n,
	input [0:0] enable,
	input [3:0] tap_num,//0 indicates 1 tap, 15 indicates 16 taps
	input [0:0] mac_done, 
	input [0:0] configuration,//high effect
	output reg done,//indicate ADC could provide new data to the filter 
	output reg load_enable,
	output reg add_enable,
    output reg expand_enable,
    output reg judge_enable, 
	output reg mac_1_enable, 
	output reg mac_2_enable, 
	output reg mac_3_enable, 
	output reg mac_4_enable,//for power saving
	output reg config_enable		
);

//using a FSM as control module to give the control signal to calculation or configuration module
reg [7:0] state, next_state;

localparam 
IDLE = 8'b00000001,
LOAD = 8'b00000010,
CALCU = 8'b00000100,
EXPAND = 8'b00001000,
ADD = 8'b00010000,
JUDGE = 8'b00100000,
DONE = 8'b01000000,
CONFIG = 8'b10000000;


//States
always @ (*)
     begin
     	next_state = state;
        case (state)
            IDLE:
                begin
                	if (configuration == 1'b0) 
                	    begin
                    		if (enable) 
                    		    begin
                    		        next_state = LOAD;
                    		    end
                    		else 
                    		    begin
                    		        next_state = IDLE;
                    		    end
			    end
                    else
                    	begin
                    		next_state = CONFIG;
                    	end
                end
            LOAD:
                begin
                	if (configuration == 1'b0) 
                	    begin
                	        next_state = CALCU;
                	    end
                	else 
                	    begin
                	        next_state =  CONFIG;
                	    end
                end
            CALCU:
                begin
                    if(configuration == 1'b0)
                    	if (mac_done) 
                    	    begin
                    	        next_state = EXPAND;
                    	    end
                    	else 
                    	    begin
                    	        next_state = state;
                    	    end
                    else 
                        begin
                            next_state = CONFIG;
                        end
                end
            EXPAND:
            	begin
            		if (configuration == 1'b0) 
            		    begin
            		        next_state = ADD;
            		    end
            		else 
            		    begin
            		        next_state = CONFIG;
            		    end
            	end
            ADD:
                begin
                    if (configuration == 1'b0) 
                        begin
                            next_state = JUDGE;
                        end
                    else 
                        begin
                            next_state = CONFIG;
                        end
                end
            JUDGE:
                begin
                    if (configuration == 1'b0) 
                        begin
                            next_state = DONE;
                        end
                    else 
                        begin
                            next_state = CONFIG;
                        end
                end
            DONE:
                begin
                    if (configuration == 1'b0) 
                        begin
                            next_state =  IDLE;
                        end
                    else 
                        begin
                            next_state = CONFIG;
                        end
                end
            CONFIG:
                begin
                    if (configuration == 1'b0) 
                        begin
                            next_state = IDLE;
                        end
                    else 
                        begin
                            next_state = state;
                        end
                end
        endcase
     end

//Update state
always @ (posedge clk)
	begin
		if (!rst_n) 
		    begin
		      	state <= IDLE;		  
		    end
		else 
		    begin
		        state <= next_state;
		    end
	end
    
//Outputs
always @ (*) 
     begin
          case (state)
               IDLE:
               	    begin
                    	mac_1_enable = 1'b0;
                    	mac_2_enable = 1'b0;
                    	mac_3_enable = 1'b0;
                    	mac_4_enable = 1'b0;
                    	load_enable = 1'b0;
                    	add_enable = 1'b0;
                    	done = 1'b0;
                    	config_enable = 1'b0;
                        expand_enable = 1'b0;
                        judge_enable = 1'b0;
                    end
               LOAD:
               		begin
                     	mac_1_enable = 1'b0;
                    	mac_2_enable = 1'b0;
                    	mac_3_enable = 1'b0;
                    	mac_4_enable = 1'b0;
                    	load_enable = 1'b1;
                    	add_enable = 1'b0;
                    	done = 1'b0;
                    	config_enable = 1'b0;  
                        expand_enable = 1'b0;
                        judge_enable = 1'b0;            			
               		end
               CALCU:
                    begin
                    	load_enable = 1'b0;
                    	add_enable = 1'b0;
                    	done = 1'b0;
                    	config_enable = 1'b0;
                        expand_enable = 1'b0;
                        judge_enable =1'b0;
                    	if (tap_num ==4'd15 | tap_num == 4'd14 | tap_num == 4'd13 | tap_num == 4'd12) 
                    	    begin
                    			mac_1_enable = 1'b1;
                    			mac_2_enable = 1'b1;
                    			mac_3_enable = 1'b1;
                    			mac_4_enable = 1'b1;                    	        
                    	    end
                    	else if(tap_num ==4'd11 | tap_num == 4'd10 | tap_num == 4'd9 | tap_num == 4'd8) 
                    		begin
                    			mac_1_enable = 1'b1;
                    			mac_2_enable = 1'b1;
                    			mac_3_enable = 1'b1;
                    			mac_4_enable = 1'b0;
                    		end
                    	else if (tap_num ==4'd0 | tap_num == 4'd7 | tap_num == 4'd6 | tap_num == 4'd5) 
                    		begin
                        		mac_1_enable = 1'b1;
                    			mac_2_enable = 1'b1;
                    			mac_3_enable = 1'b0;
                    			mac_4_enable = 1'b0;
                    		end
                    	else if(tap_num ==4'd0 | tap_num == 4'd1 | tap_num == 4'd2 | tap_num == 4'd3) 
                    	    begin
                    			mac_1_enable = 1'b1;
                    			mac_2_enable = 1'b0;
                    			mac_3_enable = 1'b0;
                    			mac_4_enable = 1'b0;
                    	    end
                        else 
                            begin
                                mac_1_enable = 1'b0;
                                mac_2_enable = 1'b0;
                                mac_3_enable = 1'b0;
                                mac_4_enable = 1'b0;                               
                            end

                    end
               EXPAND:
                    begin
                        mac_1_enable = 1'b0;
                        mac_2_enable = 1'b0;
                        mac_3_enable = 1'b0;
                        mac_4_enable = 1'b0;
                        load_enable = 1'b0;
                        add_enable = 1'b0;
                        done = 1'b0;
                        config_enable = 1'b0;  
                        expand_enable = 1'b1;
                        judge_enable = 1'b0;                     
                    end
               ADD:
                    begin
                      	mac_1_enable = 1'b0;
                    	mac_2_enable = 1'b0;
                    	mac_3_enable = 1'b0;
                    	mac_4_enable = 1'b0;
                    	load_enable = 1'b0;
                    	add_enable = 1'b1;
                    	done = 1'b0;
                    	config_enable = 1'b0;
                        expand_enable = 1'b0;
                        judge_enable = 1'b0;                  
                    end
               JUDGE:
                    begin
                        mac_1_enable = 1'b0;
                        mac_2_enable = 1'b0;
                        mac_3_enable = 1'b0;
                        mac_4_enable = 1'b0;
                        load_enable = 1'b0;
                        add_enable = 1'b0;
                        done = 1'b0;
                        config_enable = 1'b0;
                        expand_enable = 1'b0;
                        judge_enable = 1'b1;                         
                    end
               DONE:
                    begin
                     	mac_1_enable = 1'b0;
                    	mac_2_enable = 1'b0;
                    	mac_3_enable = 1'b0;
                    	mac_4_enable = 1'b0;
                    	load_enable = 1'b0;
                    	add_enable = 1'b0;
                    	done = 1'b1;
                    	config_enable = 1'b0; 
                        expand_enable = 1'b0;
                        judge_enable = 1'b0;                  
                    end
               CONFIG:
               		begin
                    	mac_1_enable = 1'b0;
                    	mac_2_enable = 1'b0;
                    	mac_3_enable = 1'b0;
                    	mac_4_enable = 1'b0;
                    	load_enable = 1'b0;
                    	add_enable = 1'b0;
                    	done = 1'b0;
                    	config_enable = 1'b1; 
                        expand_enable = 1'b0;
                        judge_enable =1'b0;              		            		
               		end
          endcase
     end

endmodule