
`ifndef NOT_IMPL_SV
`define NOT_IMPL_SV

`include "code/impl.sv"

module not_impl (
    input logic a,
    input logic b,
    output logic not_c
);

    logic __c;

    impl tmp(
        .a(a),
        .b(b),
        .c(__c)
    );

    assign not_c = !__c;

endmodule

`endif
