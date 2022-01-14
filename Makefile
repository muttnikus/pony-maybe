PONYC ?= ponyc

build/maybe: build maybe/*.pony
	corral fetch
	corral run -- $(PONYC) maybe -o build --debug

build:
	mkdir build

test: build/maybe
	build/maybe

clean:
	rm -rf build

.PHONY: clean test
