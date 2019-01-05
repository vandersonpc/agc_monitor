`timescale 1ns / 1ps
`default_nettype none

`define MON_REG_A 16'o0

module monitor_regs(
    input wire clk,
    input wire rst_n,

    input wire mt02,
    input wire monwt,

    input wire [16:1] mwl,

    input wire mwag,
    input wire mwlg,
    input wire mwqg,
    input wire mwebg,
    input wire mwfbg,
    input wire mwbbeg,
    input wire mwzg,
    input wire mwbg,
    input wire mwsg,
    input wire mwg,
    input wire mwyg,
    input wire mrgg,

    input wire read_en,
    input wire [15:0] addr,
    output reg [15:0] data_out
);

parameter CT_COUNT = 5'o30;

reg monwt_d;
reg [4:0] ct_count;

wire ct;
assign ct = (ct_count > 5'o0);

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        monwt_d <= 1'b0;
        ct_count <= 5'o0;
    end else begin
        monwt_d <= monwt;
        if (monwt & ~monwt_d) begin
            ct_count <= CT_COUNT;
        end else begin
            if (ct_count > 5'o0) begin
                ct_count <= ct_count - 5'o1;
            end else begin
                ct_count <= 5'o0;
            end
        end
    end
end

// Register A
wire [16:1] a;
register reg_a(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwag),
    .mwl(mwl),
    .val(a)
);

// Register L
wire [16:1] l;
register reg_l(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwlg),
    .mwl(mwl),
    .val(l)
);

// Register Q
wire [16:1] q;
register reg_q(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwqg),
    .mwl(mwl),
    .val(q)
);

// Register EB
wire [3:1] eb;
register2 #(3) reg_eb(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg1(mwebg),
    .mwl1(mwl[11:9]),
    .mwg2(mwbbeg),
    .mwl2(mwl[3:1]),
    .val(eb)
);

// Register FB
wire [5:1] fb;
register #(5) reg_fb(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwfbg),
    .mwl({mwl[16], mwl[14:11]}),
    .val(fb)
);

// Register Z
wire [16:1] z;
register reg_z(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwzg),
    .mwl(mwl),
    .val(z)
);

// Register B
wire [16:1] b;
register reg_b(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwbg),
    .mwl(mwl),
    .val(b)
);

// Register S
wire [12:1] s;
register #(12) reg_s(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwsg),
    .mwl(mwl[12:1]),
    .val(s)
);

// Register G
wire [16:1] mwl_edited;
edit editing(
    .clk(clk),
    .rst_n(rst_n),
    .mt02(mt02),
    .s(s),
    .mwl(mwl),
    .mwl_edited(mwl_edited)
);

wire [16:1] g;
register2 reg_g(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg1(mwg),
    .mwl1(mwl_edited),
    .mwg2(mrgg),
    .mwl2(mwl),
    .val(g)
);

// Register Y
wire [16:1] y;
register reg_y(
    .clk(clk),
    .rst_n(rst_n),
    .ct(ct),
    .mwg(mwyg),
    .mwl(mwl),
    .val(y)
);



reg read_en_q;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        read_en_q <= 1'b0;
    end else begin
        read_en_q <= read_en;
    end
end

always @(*) begin
    if (read_en_q) begin
        case (addr)
        `MON_REG_A: begin
            data_out = a;
        end

        default: begin
            data_out = 16'b0;
        end
        endcase
    end else begin
        data_out = 16'b0;
    end
end

endmodule
`default_nettype wire
