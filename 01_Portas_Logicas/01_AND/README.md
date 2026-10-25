# Exercício 01 — Porta AND em Verilog

## Objetivo

Implementar uma porta lógica **AND** de duas entradas (`A` e `B`) e validar o funcionamento com um *testbench* em Verilog.

## Expressão lógica

`Y = A & B`

A saída `Y` só vale 1 quando ambas as entradas valem 1.

## Tabela-verdade

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Arquivos

- [`porta_and.v`](porta_and.v): descrição da porta AND.
- [`tb_porta_and.v`](tb_porta_and.v): simula as quatro combinações, verifica o resultado e gera `ondas.vcd`.

## Simulação no Linux

Instale o Icarus Verilog e o GTKWave, caso ainda não estejam disponíveis:

```bash
sudo apt update
sudo apt install iverilog gtkwave
```

A partir da **raiz do repositório**, execute:

```bash
make test
make wave
```

Como alternativa, entre neste diretório e execute diretamente:

```bash
iverilog -o simulacao.vvp porta_and.v tb_porta_and.v
vvp simulacao.vvp
gtkwave ondas.vcd
```

## Resultado esperado

| Intervalo | A | B | Y |
|:--|:-:|:-:|:-:|
| 0–10 ns | 0 | 0 | 0 |
| 10–20 ns | 0 | 1 | 0 |
| 20–30 ns | 1 | 0 | 0 |
| 30–40 ns | 1 | 1 | 1 |

No terminal, o testbench deve indicar quatro testes `OK` e terminar com:

```text
PASS: 4 de 4 combinacoes verificadas.
```

O arquivo `ondas.vcd` é gerado para visualização no GTKWave, mas não é versionado no GitHub (veja `.gitignore`).

## Próximo exercício

Implementar e validar a porta **OR** seguindo a mesma estrutura de arquivos e testes.
