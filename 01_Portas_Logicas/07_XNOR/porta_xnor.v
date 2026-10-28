`timescale 1ns/1ps

// ==========================================================
// Aula 07 - Porta XNOR
//
// A saída Y será igual a 1 quando A e B forem iguais.
//
// Equação lógica:
// Y = ~(A ^ B)
// ==========================================================

module porta_xnor (
    input  wire a,
    input  wire b,
    output wire y
);

    assign y = ~(a ^ b);

endmodule
