`timescale 1ns/1ps

// Aula 03 - Porta logica NOT: Y = ~A
module porta_not (
    input  wire A,
    output wire Y
);
    assign Y = ~A;
endmodule
