module traffic_light (
    input clk,
    input reset,
    output reg [2:0] lights // {Red, Yellow, Green}
);

    // State Encoding
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] current_state, next_state;

    // State Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= RED;
        else
            current_state <= next_state;
    end

    // Next State Logic + Outputs
    always @(*) begin
        case (current_state)
            RED: begin
                lights = 3'b100;  // Red ON
                next_state = GREEN;
            end
            GREEN: begin
                lights = 3'b001;  // Green ON
                next_state = YELLOW;
            end
            YELLOW: begin
                lights = 3'b010;  // Yellow ON
                next_state = RED;
            end
            default: begin
                lights = 3'b100;  // Default Red
                next_state = RED;
            end
        endcase
    end

endmodule