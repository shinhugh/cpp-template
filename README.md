# C++ Project Template With Make

This repository contains a minimal setup for any C++ project meant to be
developed in an environment that uses
[`make`](https://www.gnu.org/software/make/).

## Existing files

- `makefile` contains the build configuration.
- `src/main.cpp` is the entry point for the program.
- `src/config.h` and `src/config.cpp` provide command line argument parsing.
- `src/util/util.h` and `src/util/util.cpp` provide generic utilities, such as
conditional logging.

## Organization / philosophy

Each subdirectory within `src/` contains definitions (`*.h`) and implementations
(`*.cpp`) of a single namespace. For example, the `util/` subdirectory contains
files that are relevant to the `Util` namespace only. These can essentially be
seen as libraries that can be exported to other projects.

In contrast, `main.cpp` and the `config.h`/`.cpp` pair are logically tied to the
program. For example, `config.h` provides command line argument parsing, which
is something that's very specific to this program only. Hence, this code lives
in the global namespace, and these files remain directly under `src/`.

My recommendation would be to stay consistent with this initial approach and to
place all files of the same namespace in the same subdirectory under `src/`.

Needless to say, you are free to architect, design, and organize your project
however you see fit. I am simply describing the design that I had in mind when
putting together this template.

## Building

To build the project, run:

```
make
```

This will create the `build/` directory and build the executable that results
from `main.cpp`, placing it at `build/build.out`.

To remove the build, run:

```
make clean
```

View the contents of `makefile` for other available targets, and refer to the
[official documentation](https://www.gnu.org/software/make/manual/make.html) if
you're unfamiliar with `make`.