IVERILOG ?= iverilog
VVP ?= vvp
GTKWAVE ?= gtkwave

AND_DIR  := 01_Portas_Logicas/01_AND
OR_DIR   := 01_Portas_Logicas/02_OR
NOT_DIR  := 01_Portas_Logicas/03_NOT
NAND_DIR := 01_Portas_Logicas/04_NAND
NOR_DIR  := 01_Portas_Logicas/05_NOR
XOR_DIR  := 01_Portas_Logicas/06_XOR

.PHONY: all test test-and test-or test-not test-nand test-nor test-xor wave wave-and wave-or wave-not wave-nand wave-nor wave-xor clean

all: test

test: test-and test-or test-not test-nand test-nor test-xor

test-and:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_and -o build/porta_and.vvp $(AND_DIR)/porta_and.v $(AND_DIR)/tb_porta_and.v
	$(VVP) build/porta_and.vvp

test-or:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_or -o build/porta_or.vvp $(OR_DIR)/porta_or.v $(OR_DIR)/tb_porta_or.v
	$(VVP) build/porta_or.vvp

test-not:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_not -o build/porta_not.vvp $(NOT_DIR)/porta_not.v $(NOT_DIR)/tb_porta_not.v
	$(VVP) build/porta_not.vvp

test-nand:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_nand -o build/porta_nand.vvp $(NAND_DIR)/porta_nand.v $(NAND_DIR)/tb_porta_nand.v
	$(VVP) build/porta_nand.vvp

test-nor:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_nor -o build/porta_nor.vvp $(NOR_DIR)/porta_nor.v $(NOR_DIR)/tb_porta_nor.v
	$(VVP) build/porta_nor.vvp

test-xor:
	@mkdir -p build
	$(IVERILOG) -Wall -s tb_porta_xor -o build/porta_xor.vvp $(XOR_DIR)/porta_xor.v $(XOR_DIR)/tb_porta_xor.v
	$(VVP) build/porta_xor.vvp

wave: wave-and

wave-and: test-and
	$(GTKWAVE) ondas.vcd

wave-or: test-or
	$(GTKWAVE) ondas_or.vcd

wave-not: test-not
	$(GTKWAVE) ondas_not.vcd

wave-nand: test-nand
	$(GTKWAVE) ondas_nand.vcd

wave-nor: test-nor
	$(GTKWAVE) ondas_nor.vcd

wave-xor: test-xor
	$(GTKWAVE) ondas_xor.vcd

clean:
	rm -rf build ondas.vcd ondas_or.vcd ondas_not.vcd ondas_nand.vcd ondas_nor.vcd ondas_xor.vcd
