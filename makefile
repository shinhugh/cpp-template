# Makefile

# --------------------------------------------------

# Variables

PATH_ROOT := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
PATH_BUILD := $(PATH_ROOT)/build
PATH_SRC := $(PATH_ROOT)/src

EXE := \
$(PATH_BUILD)/build.out
OBJ := \
$(PATH_BUILD)/config.o \
$(PATH_BUILD)/debug.o \
$(PATH_BUILD)/main.o

# --------------------------------------------------

# Unconditional targets

.PHONY : default clean

# --------------------------------------------------

# Default target

default : $(PATH_BUILD)/build.out

# --------------------------------------------------

# Clean

clean :
	@echo "Removing executable and object files"
	@rm -f $(EXE) $(OBJ)

# --------------------------------------------------

# Create build directory

build :
	@echo "Creating build directory"
	@mkdir -p $(PATH_BUILD)

# --------------------------------------------------

# Build executables

$(PATH_BUILD)/build.out : \
$(PATH_BUILD)/config.o \
$(PATH_BUILD)/debug.o \
$(PATH_BUILD)/main.o \
| build
	@echo "Building: build.out"
	@g++ -o $@ $^

# --------------------------------------------------

# Build object files

$(PATH_BUILD)/main.o : \
$(PATH_SRC)/main.cpp \
$(PATH_SRC)/config.h \
$(PATH_SRC)/debug.h \
| build
	@echo "Building: main.o"
	@g++ -c -o $@ $< -I$(PATH_SRC)

$(PATH_BUILD)/config.o : \
$(PATH_SRC)/config.cpp \
$(PATH_SRC)/config.h \
| build
	@echo "Building: config.o"
	@g++ -c -o $@ $< -I$(PATH_SRC)

$(PATH_BUILD)/debug.o : \
$(PATH_SRC)/debug.cpp \
$(PATH_SRC)/debug.h \
| build
	@echo "Building: debug.o"
	@g++ -c -o $@ $< -I$(PATH_SRC)