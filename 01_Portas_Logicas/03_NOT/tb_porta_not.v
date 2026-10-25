`timescale 1ns/1ps

// Aula 03 - Testbench da porta NOT
module tb_porta_not;
    reg A;
    wire Y;
    integer erros;

    porta_not dut (
        .A(A),
        .Y(Y)
    );

    task verificar;
        input a_teste;
        input y_esperado;
        begin
            A = a_teste;
            #10;
            if (Y !== y_esperado) begin
                $display("FALHA: A=%b | Y=%b (esperado=%b)", A, Y, y_esperado);
                erros = erros + 1;
            end else begin
                $display("OK: A=%b | Y=%b", A, Y);
            end
        end
    endtask

    initial begin
        $dumpfile("ondas_not.vcd");
        $dumpvars(0, tb_porta_not);
        erros = 0;

        verificar(1'b0, 1'b1);
        verificar(1'b1, 1'b0);

        if (erros != 0) begin
            $display("FALHA: %0d teste(s) incorreto(s).", erros);
            $fatal(1);
        end
        $display("PASS: 2 de 2 combinacoes verificadas.");
        $finish;
    end
endmodule
