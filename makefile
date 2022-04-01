# Makefile

# --------------------------------------------------

# Variables

PATH_ROOT := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
PATH_SRC := $(PATH_ROOT)/src
PATH_BUILD := $(PATH_ROOT)/build

OBJ := $(PATH_BUILD)/main.o $(PATH_BUILD)/config.o $(PATH_BUILD)/debug.o
EXE := $(PATH_BUILD)/build.out

# --------------------------------------------------

# Unconditional targets

.PHONY : default clean

# --------------------------------------------------

# Default target

default : $(PATH_BUILD)/build.out

# --------------------------------------------------

# Clean

clean :
	@echo "Removing object and executable files"
	@rm -f $(OBJ) $(EXE)

# --------------------------------------------------

# Build executables

$(PATH_BUILD)/build.out : $(OBJ)
	@echo "Building: build.out"
	@g++ -o $@ $^

# --------------------------------------------------

# Build object files

$(PATH_BUILD)/main.o : $(PATH_SRC)/main.cpp $(PATH_SRC)/debug.h
	@echo "Building: main.o"
	@g++ -c -o $@ $<

$(PATH_BUILD)/config.o : $(PATH_SRC)/config.cpp $(PATH_SRC)/config.h
	@echo "Building: config.o"
	@g++ -c -o $@ $<

$(PATH_BUILD)/debug.o : $(PATH_SRC)/debug.cpp $(PATH_SRC)/debug.h
	@echo "Building: debug.o"
	@g++ -c -o $@ $<