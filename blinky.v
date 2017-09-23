module blinky(input clk, //50mhz clock
					output reg led,
					output reg led2,
					output reg led3,
					output reg led4,
					output reg led5,
					output reg led6,
					output reg led7,
					output reg led8
					);
					
	reg [31:0] counter;
	reg [31:0] ledPin;
	
	
	
	always @ (posedge clk)
	begin
	
		if (counter <= 6250000)
		begin
			counter <= counter + 1;
		end
		
		else
		begin
			counter <= 0;
			ledPin <= ledPin + 1;
		end
		
		if (ledPin == 0)
		begin
			led8 <= 1'b0;
			led <= ~led;
		end else if (ledPin == 1) begin
			led <= ~led;
			led2 <= ~led2;
		end else if (ledPin == 2) begin
			led2 <= ~led2;
			led3 <= ~led3;
		end else if (ledPin == 3) begin
			led3 <= ~led3;
			led4 <= ~led4;
		end else if (ledPin == 4) begin
			led4 <= ~led4;
			led5 <= ~led5;
		end else if (ledPin == 5) begin
			led5 <= ~led5;
			led6 <= ~led6;
		end else if (ledPin == 6) begin
			led6 <= ~led6;
			led7 <= ~led7;
		end else if (ledPin == 7) begin
			led7 <= ~led7;
			led8 <= ~led8;
		end
		
		if(ledPin == 8)
		begin
			ledPin <= 0;
		end
	end
endmodule