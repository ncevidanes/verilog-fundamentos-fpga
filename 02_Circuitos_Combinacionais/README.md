# Módulo 02 — Circuitos combinacionais

As portas estudadas no Módulo 01 já são circuitos combinacionais. Agora vamos
combiná-las para realizar funções de seleção, comparação e aritmética.
A saída depende das entradas atuais; os exemplos deste módulo não usam clock
nem armazenam um estado entre operações.

## Sequência de estudo

| Aula | Circuito | Aprendizado | Situação |
|:--:|:--|:--|:--|
| 08 | [Meio somador](01_Meio_Somador/README.md) | XOR + AND, duas saídas e carry | Implementação e teste preparados; prática do aluno pendente |
| 09 | Somador completo | Entrada de carry e composição de módulos | Planejado |
| 10 | Somador de quatro bits | Barramentos, propagação de carry e largura do resultado | Planejado |
| 11 | Multiplexador 2:1 | Seleção de dados e operador condicional | Planejado |
| 12 | Comparador de quatro bits | Igualdade, maior e menor | Planejado |

Comece pela Aula 08. O somador de quatro bits dará base para distinguir carry
de overflow com sinal; mais adiante, registradores permitirão construir
circuitos sequenciais e estudar o contador do manual e o filtro SAPHO.

## Executar

Na raiz do repositório:

```bash
make test-combinacionais
make wave-meio-somador
```

Atualmente o primeiro comando executa somente o meio somador. Os circuitos
planejados serão incluídos conforme as aulas forem desenvolvidas.

## Critério de conclusão de cada aula

1. Explicar a função e prever os resultados antes de simular.
2. Estudar e executar o módulo e o testbench no VS Code.
3. Conferir a saída do terminal e os sinais no GTKWave.
4. Registrar uma captura real e a interpretação dos resultados.
5. Confirmar a execução dos testes automáticos no GitHub Actions.

Código preparado e teste automático aprovado não substituem a prática do aluno.
