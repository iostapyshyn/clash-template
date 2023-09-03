.PHONY: all
all: verilog

.PHONY: verilog
verilog:
	cabal run clash -- System --verilog -fclash-old-inline-strategy

.PHONY: vhdl
vhdl:
	cabal run clash -- System --vhdl -fclash-old-inline-strategy

.PHONY: repl
repl:
	cabal run clashi -- src/System.hs

.PHONY: clean
clean:
	cabal clean
	rm -rf verilog/
	rm -rf vhdl/
