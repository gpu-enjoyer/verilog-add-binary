
`ifndef ADD_SV
`define ADD_SV

module add (
    input logic c,
    input logic a,
    input logic b,
    output logic c_out,
    output logic sum
);

    assign c_out = (a & b) | ((a ^ b) & c);
    assign sum = c ^ a ^ b;

endmodule

`endif
