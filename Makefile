SHELL = /bin/sh
.SUFFIXES:
.SUFFIXES: .cpp .h .o
SRCDIR := src
WORKINGINTERFACEDIR := working-wasm-interface-js

SRCS = $(wildcard $(SRCDIR)/*.cpp)
# CXX_FLAGS := -std=c++11 -O3
RELEASES := ./releases

build:
	@mkdir -p $(RELEASES)
	emcc -std=c++11 -O3 --closure 1 -s EXPORT_ES6=1 -s EXPORTED_FUNCTIONS='["_free"]' -s MODULARIZE=1 -s FILESYSTEM=0 -s EXPORT_NAME="'WasmPitchModule'" -o wasm_interface.js $(SRCS) -s ASSERTIONS=1
	sed -i '' 's|x\|\|(fs=require("fs"),x=require("path"))|x|' wasm_interface.js
	mv "wasm_interface.js" "wasm_interface.wasm" $(RELEASES) 
	cp $(RELEASES)/wasm_interface.* ./test
	npm run webpack

build-dev:
	emcc -std=c++11 -O3 --closure 1 -s MODULARIZE=1 -s FILESYSTEM=0 -s EXPORT_NAME="'WasmPitchModule'" -o wasm_interface.js $(SRCS) -s ASSERTIONS=1
	cp "wasm_interface.wasm" ./demo

.PHONY : clean
clean: 
	rm -R $(RELEASES)
	rm test/wasm_interface.*
	rm demo/wasm_interface.* 
