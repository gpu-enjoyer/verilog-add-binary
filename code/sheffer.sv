
`ifndef SHEFFER_SV
`define SHEFFER_SV

module sheffer (
    input logic a,
    input logic b,
    output logic c
);

    assign c = !(a & b);

endmodule

`endif
