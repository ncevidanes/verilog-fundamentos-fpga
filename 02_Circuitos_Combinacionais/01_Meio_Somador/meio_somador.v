`timescale 1ns/1ps

// Meio somador de um bit: {carry, soma} representa A + B.
module meio_somador (
    input wire a,
    input wire b,
    output wire soma,
    output wire carry
);
    assign soma = a ^ b;
    assign carry = a & b;
endmodule
