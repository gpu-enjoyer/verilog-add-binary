
`include "code/sheffer.sv"

module sheffer_tb;

    logic a, b, c;

    task automatic run_test;
        input a_in, b_in;
        begin
            a = a_in;
            b = b_in;
            #10
            $display(" !(%b&%b)=%b", a, b, c);
        end
    endtask

    sheffer test (
        .a(a),
        .b(b),
        .c(c)
    );

    initial
        begin
            $display("\nsheffer module:\n");
            run_test(0, 0);
            run_test(0, 1);
            run_test(1, 0);
            run_test(1, 1);
        end

endmodule
