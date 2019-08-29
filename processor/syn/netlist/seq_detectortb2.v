`timescale 1ns/10ps
/**
 * `timescale time_unit base / precision base
 *
 * -Specifies the time units and precision for delays:
 * -time_unit is the amount of time a delay of 1 represents.
 *	The time unit must be 1 10 or 100
 * -base is the time base for each unit, ranging from seconds
 *	to femtoseconds, and must be: s ms us ns ps or fs
 * -precision and base represent how many decimal points of
 *	precision to use relative to the time units.
 */

/**
 * This is written by Zhiyang Ong 
 * for EE577b Homework 4, Question 1
 */

/**
 * Testbench for behavioral model for Finite State Machine model of the
 * sequential detector
 */


// Import the modules that will be tested for in this testbench
`include "seq_detect.syn.v"
`include "/auto/home-scf-06/ee577/design_pdk/osu_stdcells/lib/tsmc018/lib/osu018_stdcells.v"

// IMPORTANT: To run this, try: ncverilog -f seq_detector.f +gui
module tb_seq_detect();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the seq_detector
	 *
	 * The reg data type holds a value until a new value is driven
	 * onto it in an "initial" or "always" block. It can only be
	 * assigned a value in an "always" or "initial" block, and is
	 * used to apply stimulus to the inputs of the DUT.
	 *
	 * The wire type is a passive data type that holds a value driven
	 * onto it by a port, assign statement or reg type. Wires cannot be
	 * assigned values inside "always" and "initial" blocks. They can
	 * be used to hold the values of the DUT's outputs
	 */
	
	// Declare "wire" signals: outputs from the DUT
	wire error,match_op;
	
	
	
	
	
	
	
	// ============================================================
	
	// Declare "reg" signals: inputs to the DUT
	reg inp,clock,reset;
	
	
	
	
	
	
	
	
	
	// ============================================================
	// Counter for loop to enumerate all the values of r
	integer count;
	
	
	
	
	
	
	
	
	
	
	
	
	// ============================================================
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is arbitrarily chosen; Period=10ns
    	#5 clock = 0;
    	#5 clock = 1;
    end	
	
	
	
	
	
	
	
	
	
	// ============================================================
	
	/**
	 * Instantiate an instance of ee577bHw1q5model1() so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "xor1model"
	 */
	seq_detect sqd (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		inp,clock,reset,error,match_op);
	
	
	
	
	
	
	// ============================================================
	
	/**
	 * Initial block start executing sequentially @ t=0
	 * If and when a delay is encountered, the execution of this block
	 * pauses or waits until the delay time has passed, before resuming
	 * execution
	 *
	 * Each intial or always block executes concurrently; that is,
	 * multiple "always" or "initial" blocks will execute simultaneously
	 *
	 * E.g.
	 * always
	 * begin
	 *		#10 clk_50 = ~clk_50; // Invert clock signal every 10 ns
	 *		// Clock signal has a period of 20 ns or 50 MHz
	 * end
	 */
	initial
	begin
		$sdf_annotate("../sdf/seq_detect.sdf",sqd,"TYPICAL", "1.0:1.0:1.0", "FROM_MTM");
	
		
		// "$time" indicates the current time in the simulation
		$display($time, " << Starting the simulation >>");
		// @ t=0; reset the sequence detector
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=10,
		#10
		inp = 1'd0;
		reset = 1'd1;
		
		
		// @ t=20
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=30
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=40
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=50
		#10
		inp = 1'dx;
		reset = 1'd0;
		
		
		// @ t=60
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=70
		#10
		inp = 1'dz;
		reset = 1'd0;
		
		
		// @ t=80
		#10
		inp = 1'd0;
		reset = 1'd0;
		
				
		// @ t=90
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=100
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=110
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=120
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=130
		#10
// Start of correct sequence
$display($time, " << Start of correct sequence >>");
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=140
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=150
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=160
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=170
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=180
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=190
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// End of correct sequence
		$display($time, " << End of correct sequence >>");
		
		// @ t=210
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=220
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=230
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=240; reset the sequence detector
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=250
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=260
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=270
		#10
		inp = 1'd1;
		reset = 1'd1;
		
		
		// @ t=280
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=290
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=300
		#10
		inp = 1'dx;
		reset = 1'd0;
		
		
		// @ t=310
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=320
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=330
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=340
		#10
		inp = 1'dx;
		reset = 1'd0;
		
		
		// @ t=350
		#10
		inp = 1'dx;
		reset = 1'd0;
		
		
		// @ t=360
		#10
		inp = 1'dz;
		reset = 1'd0;
		
		
		// @ t=370
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=380
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=390
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=400
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// ============================================================
	
		for(count=0;count<5'd24;count=count+1)
		begin
			#10
			$display("Next");
			inp=$random;
			reset=1'd0;
		end
		
		// ============================================================
		
		// @ t=650
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=660
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=670
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=680
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=690
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=700
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=710
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=720
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		// Start of next correct sequence
		// @ t=730
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=740
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=750
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=760
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=770
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=780
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=790
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=800
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		
		
		// ============================================================
	
		for(count=0;count<3'd5;count=count+1)
		begin
			#10
			$display("Next");
			inp=$random;
			reset=1'd0;
		end
		
		// ============================================================
		
		
		// @ t=890
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=900
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=910
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=920
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=930
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=940
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=950
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// Start of third good sequence
		
		// @ t=960
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=970
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=980
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=990
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1000
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1010
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1020
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1030
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// End of third good sequence; start of 4th good sequence
		
		// @ t=1040
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1050
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1060
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1070
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1080
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1090
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1100
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1110
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// End of 4th good sequence
		
		// @ t=1120
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// @ t=1130
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		// @ t=1140
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1150
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1160
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1170
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1180
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1190
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// Next pattern - faulty sequence; has last 7 bits
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd1;
		reset = 1'd0;
		
		// Next pattern...
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		// @ t=1200
		#10
		inp = 1'd0;
		reset = 1'd0;
		
		
		
		
		// end simulation
		#30
		
		$display($time, " << Finishing the simulation >>");
		$finish;
	end

endmodule
