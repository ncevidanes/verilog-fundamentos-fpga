`timescale 1ns/1ps

module tb_meio_somador;
    reg a;
    reg b;
    wire soma;
    wire carry;
    reg [1:0] esperado;
    integer vetor;
    integer erros;

    meio_somador dut (
        .a(a),
        .b(b),
        .soma(soma),
        .carry(carry)
    );

    initial begin
        $dumpfile("build/ondas_meio_somador.vcd");
        $dumpvars(0, tb_meio_somador);
        erros = 0;

        // Os quatro valores de dois bits cobrem todas as entradas binarias.
        for (vetor = 0; vetor < 4; vetor = vetor + 1) begin
            {a, b} = vetor[1:0];
            // Referencia aritmetica de dois bits, independente das portas do DUT.
            esperado = {1'b0, a} + {1'b0, b};
            #10;
            if ({carry, soma} !== esperado) begin
                $display("ERRO: A=%b B=%b resultado=%b esperado=%b",
                         a, b, {carry, soma}, esperado);
                erros = erros + 1;
            end else begin
                $display("OK: A=%b B=%b CARRY=%b SOMA=%b",
                         a, b, carry, soma);
            end
        end

        if (erros != 0)
            $fatal(1, "FAIL: meio somador com %0d erros.", erros);
        $display("PASS: meio somador, 4/4 combinacoes binarias.");
        $finish;
    end
endmodule
