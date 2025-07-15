
`include "code/add.sv"

module add_tb;

    logic c, a, b, c_out, sum;

    // connect module
    add test (
        .c(c),
        .a(a),
        .b(b),
        .c_out(c_out),
        .sum(sum)
    );

    // edit a, b;
    // module works (10 tics);
    // get result
    task automatic run_test;
        input c_in, a_in, b_in;
        begin
            c = c_in;
            a = a_in;
            b = b_in;
            #10;
            $display(" %b+%b+%b=%b%b", c, a, b, c_out, sum);
        end
    endtask

    // main function
    initial
        begin
            $display("\nadd module:\n");
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
