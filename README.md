# Fundamentos de Verilog e FPGA

Repositório didático com exercícios progressivos de **Verilog HDL**, lógica digital, simulação e fundamentos de desenvolvimento para FPGA. A trilha oferece base para estudos futuros com o **SAPHO**.

Ambiente: Linux, **VS Code**, **Icarus Verilog** e **GTKWave**.

## Exercícios

| Ordem | Tema | Conteúdo | Estado |
|:--:|:--|:--|:--|
| 01 | [Porta AND](01_Portas_Logicas/01_AND/README.md) | Descrição RTL, tabela-verdade e testbench | Concluído |
| 02 | [Porta OR](01_Portas_Logicas/02_OR/README.md) | Descrição RTL, testbench e tabela-verdade | Concluído |
| 03 | [Porta NOT](01_Portas_Logicas/03_NOT/README.md) | Inversão lógica e verificação dos dois estados | Simulação validada; captura pendente de inclusão no GitHub |
| 04 | Porta NAND | Porta universal | Planejado |
| 05 | Porta NOR | Porta universal | Planejado |
| 06 | Porta XOR | Ou exclusivo | Planejado |
| 07 | Porta XNOR | Equivalência | Planejado |

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

O comando compila e verifica as portas **AND (4 combinações), OR (4 combinações) e NOT (2 combinações)**, totalizando **10 vetores de entrada**.

Para executar cada exercício separadamente:

~~~bash
make test-and
make test-or
make test-not
~~~

## Visualizar as formas de onda

~~~bash
make wave-and
make wave-or
make wave-not
~~~

O comando `make wave` permanece disponível como atalho para `make wave-and`.

**Importante:** o GTKWave apresenta a evolução dos sinais digitais no tempo da simulação; os intervalos definidos nos testbenches não medem atrasos físicos reais do hardware.

Para apagar os arquivos gerados localmente:

~~~bash
make clean
~~~

## Organização

~~~text
01_Portas_Logicas/
├── 01_AND/
├── 02_OR/
└── 03_NOT/
    ├── porta_not.v
    ├── tb_porta_not.v
    └── README.md
~~~

Cada exercício inclui o módulo Verilog, o testbench e sua própria documentação. Capturas do GTKWave podem ser adicionadas às respectivas pastas como evidência de simulação.

Os estudos específicos de **SAPHO** poderão continuar em um repositório dedicado, separado da trilha de portas lógicas.

## Integração contínua

O fluxo em `.github/workflows/testes-verilog.yml` executa `make test` nos eventos *push* e *pull request*, validando automaticamente as portas AND, OR e NOT (quando o GitHub Actions estiver habilitado).

## Direitos de uso

Licença ainda não definida. A publicação do código não significa, por si só, concessão de licença para redistribuição ou modificação por terceiros.
