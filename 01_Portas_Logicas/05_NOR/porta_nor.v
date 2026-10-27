`timescale 1ns/1ps

// ==========================================================
// Aula 05 - Porta NOR
//
// A saída Y será igual a 1 somente quando A e B forem 0.
//
// Equação lógica:
// Y = ~(A | B)
// ==========================================================

module porta_nor (
    input  wire A,
    input  wire B,
    output wire Y
);

    assign Y = ~(A | B);

endmodule
