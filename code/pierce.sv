
`ifndef PIERCE_SV
`define PIERCE_SV

module pierce (
    input logic a,
    input logic b,
    output logic c
);

    assign c = !(a | b);

endmodule

`endif
