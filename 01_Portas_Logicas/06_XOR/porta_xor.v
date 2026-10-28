`timescale 1ns/1ps

// ==========================================================
// Aula 06 - Porta XOR
//
// A saída Y será igual a 1 quando A e B forem diferentes.
//
// Equação lógica:
// Y = A ^ B
// ==========================================================

module porta_xor (
    input  wire a,
    input  wire b,
    output wire y
);

    assign y = a ^ b;

endmodule
