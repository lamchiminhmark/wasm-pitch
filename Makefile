SHELL = /bin/sh
.SUFFIXES:
.SUFFIXES: .cpp .h .o
SRCDIR := src

SRCS = $(wildcard $(SRCDIR)/*.cpp)
# CXX_FLAGS := -std=c++11 -O3
RELEASES := ./releases

build:
	@mkdir -p $(RELEASES)
	emcc -std=c++11 -O3 --closure 1 -s MODULARIZE=1 -o wasm_interface.js $(SRCS) -s ASSERTIONS=1
	mv "wasm_interface.js" "wasm_interface.wasm" $(RELEASES) 
	# cp $(SRCDIR)/script.js $(RELEASES)
	cp $(RELEASES)/wasm_interface.* ./test
	cp $(RELEASES)/* ./demo

build-dev:
	emcc $(CXX_FLAGS) -o wasm_interface.wasm $(SRCS) -s ASSERTIONS=1 -s SIDE_MODULE=1 
	cp "wasm_interface.wasm" ./demo

.PHONY : clean
clean: 
	rm -R $(RELEASES)
	rm test/wasm_interface.*
	rm demo/wasm_interface.* 
