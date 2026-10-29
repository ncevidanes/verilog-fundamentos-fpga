`timescale 1ns/1ps

// Exercicio 01: porta logica AND de duas entradas.
// Saida Y = 1 somente quando A = 1 e B = 1.
module porta_and (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = A & B;
endmodule
