`default_nettype none
module tt_um_chandanjha_safety (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);
  wire sos = ui_in[0];
  wire fall = ui_in[1];
  wire gas = ui_in[2];
  wire danger = sos | fall | gas;
  assign uo_out[0] = danger;
  assign uo_out[1] = danger;
  assign uo_out[2] = fall;
  assign uo_out[7:3] = 0;
  assign uio_out = 0;
  assign uio_oe = 0;
  wire _unused = &{ena, clk, rst_n, ui_in[7:3], uio_in, 1'b0};
endmodule
