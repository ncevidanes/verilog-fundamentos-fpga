IVERILOG ?= iverilog
VVP ?= vvp
GTKWAVE ?= gtkwave

AND_DIR := 01_Portas_Logicas/01_AND
OR_DIR  := 01_Portas_Logicas/02_OR

.PHONY: all test test-and test-or wave wave-and wave-or clean
all: test

test: test-and test-or

test-and:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_and -o build/porta_and.vvp $(AND_DIR)/porta_and.v $(AND_DIR)/tb_porta_and.v
	$(VVP) build/porta_and.vvp

test-or:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_or -o build/porta_or.vvp $(OR_DIR)/porta_or.v $(OR_DIR)/tb_porta_or.v
	$(VVP) build/porta_or.vvp

wave: wave-and

wave-and: test-and
	$(GTKWAVE) ondas.vcd

wave-or: test-or
	$(GTKWAVE) ondas_or.vcd

clean:
	rm -rf build ondas.vcd ondas_or.vcd
