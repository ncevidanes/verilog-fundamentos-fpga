`timescale 1ns/1ps

module tb_porta_xor;

    reg a;
    reg b;
    wire y;

    integer erros;

    porta_xor dut (
        .a(a),
        .b(b),
        .y(y)
    );

    task verificar;
        input reg a_teste;
        input reg b_teste;
        input reg y_esperado;

        begin
            a = a_teste;
            b = b_teste;

            #10;

            if (y !== y_esperado) begin
                $display(
                    "ERRO: A=%b B=%b | Y=%b | esperado=%b",
                    a, b, y, y_esperado
                );
                erros = erros + 1;
            end
            else begin
                $display(
                    "OK:   A=%b B=%b | Y=%b",
                    a, b, y
                );
            end
        end
    endtask

    initial begin
        $dumpfile("ondas_xor.vcd");
        $dumpvars(0, tb_porta_xor);

        erros = 0;

        $display("================================");
        $display(" Teste da porta XOR");
        $display("================================");

        verificar(1'b0, 1'b0, 1'b0);
        verificar(1'b0, 1'b1, 1'b1);
        verificar(1'b1, 1'b0, 1'b1);
        verificar(1'b1, 1'b1, 1'b0);

        $display("================================");

        if (erros == 0)
            $display("PASS: todos os testes passaram.");
        else
            $fatal(1, "FAIL: foram encontrados %0d erros.", erros);

        $finish;
    end

endmodule
