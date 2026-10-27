`timescale 1ns/1ps

module tb_porta_nor;

    reg A;
    reg B;
    wire Y;

    integer erros;

    // Instância do circuito que será testado
    porta_nor dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Verifica uma combinação da tabela-verdade
    task verificar;
        input reg a_teste;
        input reg b_teste;
        input reg y_esperado;

        begin
            A = a_teste;
            B = b_teste;

            #10;

            if (Y !== y_esperado) begin
                $display(
                    "ERRO: A=%b B=%b | Y=%b | esperado=%b",
                    A, B, Y, y_esperado
                );

                erros = erros + 1;
            end
            else begin
                $display(
                    "OK:   A=%b B=%b | Y=%b",
                    A, B, Y
                );
            end
        end
    endtask

    initial begin
        // Arquivo utilizado pelo GTKWave
        $dumpfile("ondas_nor.vcd");
        $dumpvars(0, tb_porta_nor);

        erros = 0;

        $display("================================");
        $display(" Teste da porta NOR");
        $display("================================");

        // Tabela-verdade
        verificar(1'b0, 1'b0, 1'b1);
        verificar(1'b0, 1'b1, 1'b0);
        verificar(1'b1, 1'b0, 1'b0);
        verificar(1'b1, 1'b1, 1'b0);

        $display("================================");

        if (erros == 0)
            $display("PASS: todos os testes passaram.");
        else
            $fatal(1, "FAIL: foram encontrados %0d erros.", erros);

        $finish;
    end

endmodule
