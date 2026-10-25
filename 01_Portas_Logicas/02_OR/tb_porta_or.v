`timescale 1ns/1ps

// Testbench da porta OR: verifica todas as combinacoes de entrada.
module tb_porta_or;
    reg A;
    reg B;
    wire Y;
    integer erros;

    // Dispositivo sob teste (DUT).
    porta_or dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Aplica um vetor de entrada e compara com o resultado esperado.
    task verificar;
        input a_teste;
        input b_teste;
        input y_esperado;
        begin
            A = a_teste;
            B = b_teste;
            #10;
            if (Y !== y_esperado) begin
                $display("FALHA: A=%b B=%b | Y=%b (esperado=%b)",
                         A, B, Y, y_esperado);
                erros = erros + 1;
            end else begin
                $display("OK: A=%b B=%b | Y=%b", A, B, Y);
            end
        end
    endtask

    initial begin
        $dumpfile("ondas_or.vcd");
        $dumpvars(0, tb_porta_or);
        erros = 0;

        verificar(1'b0, 1'b0, 1'b0);
        verificar(1'b0, 1'b1, 1'b1);
        verificar(1'b1, 1'b0, 1'b1);
        verificar(1'b1, 1'b1, 1'b1);

        if (erros != 0) begin
            $display("FALHA: %0d teste(s) incorreto(s).", erros);
            $fatal(1);
        end

        $display("PASS: 4 de 4 combinacoes verificadas.");
        $finish;
    end
endmodule
