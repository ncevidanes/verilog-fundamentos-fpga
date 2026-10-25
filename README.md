# Fundamentos de Verilog e FPGA

Repositório didático para registrar exercícios progressivos de **Verilog HDL**, lógica digital, simulação e fundamentos de desenvolvimento para FPGA, com preparação para estudos posteriores envolvendo o **SAPHO**.

Os exemplos são executados em Linux com **VS Code**, **Icarus Verilog** e **GTKWave**.

## Exercícios

| Ordem | Tema | Conteúdo | Estado |
|:--:|:--|:--|:--|
| 01 | [Porta AND](01_Portas_Logicas/01_AND/README.md) | Descrição RTL, tabela-verdade e testbench | Implementado |
| 02 | Porta OR | Próximo exercício | Planejado |
| 03 | Porta NOT | Inversão lógica | Planejado |
| 04 | Porta NAND | Porta universal | Planejado |
| 05 | Porta NOR | Porta universal | Planejado |
| 06 | Porta XOR | Ou exclusivo | Planejado |
| 07 | Porta XNOR | Equivalência | Planejado |

## Requisitos

Em Ubuntu/Debian:

```bash
sudo apt update
sudo apt install iverilog gtkwave make
```

## Executar o primeiro exercício

Na raiz do projeto:

```bash
make test
```

O comando compila a porta AND e seu testbench, simula as quatro combinações possíveis de entrada e informa `PASS` ou `FALHA`.

Para visualizar os sinais de entrada e saída:

```bash
make wave
```

Limpar arquivos gerados localmente:

```bash
make clean
```

## Organização e evolução

Cada exercício terá arquivos Verilog, testbench e documentação individual. Futuramente, serão acrescentados circuitos combinacionais, circuitos sequenciais e atividades relacionadas a processamento digital de sinais. Os estudos de **SAPHO** podem ficar em um repositório dedicado, separado dos exercícios básicos.

## Testes automáticos

O fluxo em `.github/workflows/testes-verilog.yml` executa `make test` no GitHub Actions a cada *push* e *pull request* (quando o GitHub Actions estiver habilitado para o repositório).

## Direitos de uso

Licença ainda não definida. A publicação do código não significa, por si só, concessão de licença para redistribuição ou modificação por terceiros.
