# Fundamentos de Verilog e FPGA

[![Testes Verilog](https://github.com/ncevidanes/verilog-fundamentos-fpga/actions/workflows/testes-verilog.yml/badge.svg)](https://github.com/ncevidanes/verilog-fundamentos-fpga/actions/workflows/testes-verilog.yml)

Repositório didático com exercícios progressivos de **Verilog HDL**, lógica digital, simulação e fundamentos de desenvolvimento para FPGA. A trilha oferece base para estudos futuros com o **SAPHO**.

**Autor e estudante:** [Nelson Assis](https://github.com/ncevidanes). Este portfólio registra a evolução do estudo por meio de código RTL, testbenches, documentação e evidências de simulação.

**English:** Progressive digital design studies in Verilog HDL, with self-checking testbenches, waveform inspection and continuous integration. Topics progress from logic gates to combinational circuits, preparing for future FPGA and SAPHO work.

Ambiente: Linux, **VS Code**, **Icarus Verilog** e **GTKWave**.

## Comece por aqui

- [Módulo 01 — Portas lógicas](#exercícios): sete aulas concluídas, com capturas reais do GTKWave.
- [Módulo 02 — Circuitos combinacionais](02_Circuitos_Combinacionais/README.md): sequência de estudo e critérios de conclusão.
- [Aula 08 — Meio somador](02_Circuitos_Combinacionais/01_Meio_Somador/README.md): próximo exercício, combinando XOR e AND.
- [Testes automáticos e formas de onda](https://github.com/ncevidanes/verilog-fundamentos-fpga/actions/workflows/testes-verilog.yml): cada execução disponibiliza VCDs no artefato `formas-de-onda`, por sete dias.

O material publicado demonstra descrição e simulação funcional. Síntese, implementação em placa e medições de frequência, latência e recursos de FPGA ainda são etapas futuras.

## Exercícios

| Ordem | Tema | Conteúdo | Estado |
|:--:|:--|:--|:--|
| 01 | [Porta AND](01_Portas_Logicas/01_AND/README.md) | Descrição RTL, tabela-verdade e testbench | Concluído |
| 02 | [Porta OR](01_Portas_Logicas/02_OR/README.md) | Descrição RTL, testbench e tabela-verdade | Concluído |
| 03 | [Porta NOT](01_Portas_Logicas/03_NOT/README.md) | Inversão lógica e verificação dos dois estados | Concluído (simulação e captura publicadas) |
| 04 | [Porta NAND](01_Portas_Logicas/04_NAND/README.md) | Porta universal, testbench e formas de onda | Concluído (simulação e captura publicadas) |
| 05 | [Porta NOR](01_Portas_Logicas/05_NOR/README.md) | Porta universal, testbench e formas de onda | Concluído (simulação e captura publicadas) |
| 06 | [Porta XOR](01_Portas_Logicas/06_XOR/README.md) | Ou exclusivo, testbench e formas de onda | Concluído (simulação e captura publicadas) |
| 07 | [Porta XNOR](01_Portas_Logicas/07_XNOR/README.md) | Equivalência, testbench e formas de onda | Concluído (simulação e captura publicadas) |
| 08 | [Meio somador](02_Circuitos_Combinacionais/01_Meio_Somador/README.md) | XOR + AND, carry e referência aritmética | Código e teste preparados; prática do aluno pendente |

## Requisitos

No Ubuntu/Debian:

~~~bash
sudo apt update
sudo apt install iverilog gtkwave make
~~~

## Executar todos os testes

Na raiz do projeto:

~~~bash
make test
~~~

O comando compila e verifica as portas **AND (4 combinações), OR (4 combinações), NOT (2 combinações), NAND (4 combinações), NOR (4 combinações), XOR (4 combinações) e XNOR (4 combinações)**, além do **meio somador (4 combinações)**, totalizando **30 vetores binários de entrada**. Cada testbench encerra com falha se detectar divergência.

Para testar somente um módulo da trilha:

~~~bash
make test-portas
make test-combinacionais
~~~

Para executar cada exercício separadamente:

~~~bash
make test-and
make test-or
make test-not
make test-nand
make test-nor
make test-xor
make test-xnor
make test-meio-somador
~~~

## Visualizar as formas de onda

~~~bash
make wave-and
make wave-or
make wave-not
make wave-nand
make wave-nor
make wave-xor
make wave-xnor
make wave-meio-somador
~~~

O comando make wave permanece disponível como atalho para make wave-and.

**Importante:** o GTKWave apresenta a evolução dos sinais digitais no tempo da simulação; os intervalos definidos nos testbenches não medem atrasos físicos reais do hardware.

Para apagar os arquivos gerados localmente:

~~~bash
make clean
~~~

## Organização

| Caminho | Conteúdo |
|:--|:--|
| `01_Portas_Logicas/` | Aulas 01 a 07: AND, OR, NOT, NAND, NOR, XOR e XNOR |
| `02_Circuitos_Combinacionais/` | Módulo 02, iniciado pelo meio somador da Aula 08 |
| `Makefile` | Comandos de compilação, teste, formas de onda e limpeza |
| `.github/workflows/` | Testes automáticos e artefatos das simulações |
| `build/` | Arquivos gerados localmente, ignorados pelo Git |

Cada exercício inclui o módulo Verilog, o testbench e sua própria documentação. Capturas do GTKWave são adicionadas às respectivas pastas como evidência de simulação.

Os estudos específicos de **SAPHO** poderão continuar em um repositório dedicado, separado da trilha de portas lógicas.

O Módulo 02 fica em `02_Circuitos_Combinacionais/`. A continuidade neste repositório preserva o histórico e reúne a base de lógica digital em uma única trilha.

## Próximas etapas

1. Executar e analisar o meio somador da Aula 08.
2. Desenvolver somador completo, somador de quatro bits, multiplexador e comparador.
3. Estudar flip-flop, registrador e contador de quatro bits.
4. Construir um projeto dedicado ao filtro SAPHO, com validação numérica e resultados de síntese.

Somente as aulas com evidências registradas são marcadas como concluídas. A lista acima descreve planejamento, não resultados já obtidos.

## Integração contínua

O fluxo em `.github/workflows/testes-verilog.yml` executa `make test` nos eventos *push* e *pull request*, verificando os 30 vetores binários das portas e do meio somador. Os arquivos VCD são disponibilizados como artefatos da execução, inclusive quando um teste falha e chega a gerar formas de onda.

## Direitos de uso

Licença ainda não definida. A publicação do código não significa, por si só, concessão de licença para redistribuição ou modificação por terceiros.

