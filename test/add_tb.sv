
`include "code/add.sv"

module add_tb;

    logic c, a, b, c_out, sum;

    const logic [7:0] CParams      = 8'b0000_1111;
    const logic [7:0] AParams      = 8'b0011_0011;
    const logic [7:0] BParams      = 8'b0101_0101;

    const logic [7:0] COutExpected = 8'b0001_0111;
    const logic [7:0] SumExpected  = 8'b0110_1001;

    // connect module "add"
    add test (
        .c(c),
        .a(a),
        .b(b),
        .c_out(c_out),
        .sum(sum)
    );

    // main function:
    //  edit input parameters;
    //  module works 10 tics;
    //  get result;
    //  assert();
    initial
        begin
            $display("\nadd module:\n");
            for (
                int i = 0; i < 8; ++i
            )
                begin
                    c = CParams[i];
                    a = AParams[i];
                    b = BParams[i];
                    #10;
                    $display(" %b+%b+%b=%b%b", c, a, b, c_out, sum);
                    assert(c_out === COutExpected[i] & sum === SumExpected[i]);
                    else
                        begin
                            $display("  -unexpected\n");
                            $fatal;
                        end
                end
        end

endmodule
