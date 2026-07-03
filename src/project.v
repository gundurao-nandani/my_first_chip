// Code your design here
// A simple 4-bit binary counter chip
module counter (
    input clk,          // Clock signal input (heartbeat)
    input reset,        // Reset signal input
    output reg [3:0] out // 4-bit output (counts from 0000 to 1111)
);

    // This block triggers every time the clock rises from 0 to 1
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 4'b0000; // Reset count to zero
        end else begin
            out <= out + 1; // Increment count by one
        end
    end

endmodule
