
module safety_chip_tt (
    input [7:0] io_in,
    output [7:0] io_out
);
wire sos = io_in[0];
wire fall = io_in[1];
wire gas = io_in[2];
wire danger = sos | fall | gas;
