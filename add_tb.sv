
`include "add.sv"

// test bench
module add_tb;

    logic a, b, c_in, c_out, sum;

    task automatic run_test;
        input c_in_in, a_in, b_in;
        begin
            c_in = c_in_in;
            a = a_in;
            b = b_in;
            #10;
            $display("(c_in) %b + (a) %b + (b) %b = (c_out) %b + (sum) %b", c_in, a, b, c_out, sum);
        end
    endtask

    add test (
        .a(a),
        .b(b),
        .c_in(c_in),
        .c_out(c_out),
        .sum(sum)
    );

    initial
        begin
            run_test(0, 0, 0);
            run_test(0, 0, 1);
            run_test(0, 1, 0);
            run_test(0, 1, 1);
            run_test(1, 0, 0);
            run_test(1, 0, 1);
            run_test(1, 1, 0);
            run_test(1, 1, 1);
        end

endmodule
