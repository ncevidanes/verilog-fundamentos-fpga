IVERILOG ?= iverilog
VVP ?= vvp
GTKWAVE ?= gtkwave

PROJETO := 01_Portas_Logicas/01_AND
ALVO := build/porta_and.vvp

.PHONY: all test wave clean
all: test

test:
	@mkdir -p build
	$(IVERILOG) -Wall -o $(ALVO) $(PROJETO)/porta_and.v $(PROJETO)/tb_porta_and.v
	$(VVP) $(ALVO)

wave: test
	$(GTKWAVE) ondas.vcd

clean:
	rm -rf build ondas.vcd
