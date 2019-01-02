`timescale 1ns / 1ps

`include "usb_interface_defines.v"

module cmd_controller(
    input wire clk,
    input wire rst_n,
    input wire [39:0] cmd,
    input wire cmd_ready,
    output reg cmd_read_en,
    output wire [15:0] cmd_addr,
    output wire [15:0] cmd_data,
    input wire [15:0] read_data,
    output wire [39:0] read_msg,
    output wire read_msg_ready,
    output reg ctrl_read_en,
    output reg ctrl_write_en
);

localparam IDLE          = 0,
           ERASABLE      = 1,
           FIXED         = 2,
           CHANNELS      = 3,
           SIM_ERASABLE  = 4,
           SIM_FIXED     = 5,
           CONTROL       = 6,
           MON_REGS      = 7,
           SEND_READ_MSG = 8;

reg [39:0] active_cmd;

wire [6:0] new_cmd_addr_group;
assign new_cmd_addr_group = cmd[38:32];

wire cmd_write_flag;
wire [6:0] cmd_addr_group;

assign cmd_write_flag = active_cmd[39];
assign cmd_addr_group = active_cmd[38:32];
assign cmd_addr = active_cmd[31:16];
assign cmd_data = active_cmd[15:0];

assign read_msg = {1'b1, cmd_addr_group, cmd_addr, read_data};
assign read_msg_ready = (state == SEND_READ_MSG);

reg [3:0] state;
reg [3:0] next_state;

always @(posedge clk) begin
    if (~rst_n) begin
        state <= IDLE;
        active_cmd <= 40'b0;
    end else begin
        state <= next_state;
        if ((state == IDLE) && cmd_read_en) begin
            active_cmd <= cmd;
        end
    end
end

always @(*) begin
    next_state = state;
    cmd_read_en = 1'b0;
    ctrl_read_en = 1'b0;
    ctrl_write_en = 1'b0;

    case (state)
    IDLE: begin
        if (cmd_ready) begin
            cmd_read_en = 1'b1;
            case (new_cmd_addr_group)
            `ADDR_GROUP_ERASABLE:     next_state = ERASABLE;
            `ADDR_GROUP_FIXED:        next_state = FIXED;
            `ADDR_GROUP_CHANNELS:     next_state = CHANNELS;
            `ADDR_GROUP_SIM_ERASABLE: next_state = SIM_ERASABLE;
            `ADDR_GROUP_SIM_FIXED:    next_state = SIM_FIXED;
            `ADDR_GROUP_CONTROL:      next_state = CONTROL;
            `ADDR_GROUP_MON_REGS:     next_state = MON_REGS;
            default:                  next_state = IDLE;
            endcase
        end
    end

    ERASABLE: begin
        next_state = IDLE;
    end

    FIXED: begin
        next_state = IDLE;
    end

    CHANNELS: begin
        next_state = IDLE;
    end

    SIM_ERASABLE: begin
        next_state = IDLE;
    end

    SIM_FIXED: begin
        next_state = IDLE;
    end

    CONTROL: begin
        if (cmd_write_flag) begin
            ctrl_write_en = 1'b1;
            next_state = IDLE;
        end else begin
            ctrl_read_en = 1'b1;
            next_state = SEND_READ_MSG;
        end
    end

    MON_REGS: begin
        next_state = IDLE;
    end

    SEND_READ_MSG: begin
        next_state = IDLE;
    end

    default: begin
        next_state = IDLE;
    end

    endcase
end


endmodule