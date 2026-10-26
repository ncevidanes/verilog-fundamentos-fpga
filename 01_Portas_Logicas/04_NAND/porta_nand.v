`timescale 1ns/1ps

// Aula 04 - Porta NAND
module porta_nand (
    input wire A,
    input wire B,
    output wire Y
);

    assign Y = ~(A & B);

endmodule
