
`include "code/pierce.sv"

module pierce_tb;

    logic a, b, c;

    const logic [3:0] AParams   = 4'b0011;
    const logic [3:0] BParams   = 4'b0101;

    const logic [3:0] CExpected = 4'b1000;

    pierce test (
        .a(a),
        .b(b),
        .c(c)
    );

    initial
        begin
            $display("\npierce module:\n");
            for (
                int i = 0; i < 4; ++i
            )
                begin
                    a = AParams[i];
                    b = BParams[i];
                    #10;
                    $display(" !(%b|%b)=%b", a, b, c);
                    assert(c === CExpected[i]);
                    else
                        begin
                            $display("  -unexpected\n");
                            $fatal;
                        end
                end
        end

endmodule
