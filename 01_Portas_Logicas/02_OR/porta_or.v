`timescale 1ns/1ps

// Exercicio 02: porta logica OR de duas entradas.
// Saida Y = 1 quando A = 1 ou B = 1.
module porta_or (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = A | B;
endmodule
