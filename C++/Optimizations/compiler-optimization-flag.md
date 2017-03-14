# Compiler optimization flag
author: luke

levels:

  - basic

  - medium

type: normal

category: how to

links:

  - '[The GCC optimization manual](https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html)'

---
## Content

The GNU C++ Compiler can perform a number of optimizations at compile time,
leading to dramatically faster and denser code. To enable compiler optimizations
the `-O` flag is used.

Various arguments can be passed to the compiler to specify the level of
optimization performed. In general a higher level of optimization leads to
longer compile times.

The following modes are available:

* `-O` enables optimizations
* `-O2` enables further optimizations
* `-O3` enables yet further optimizations
* `-O0` enables limited optimization. This is the default.
* `-Os` enables optimization for size, including some `-O2` optimizations.
* `-Ofast` enables all `-O3` optimizations and some extras, disregarding
standards-complience in favor of speed.
* `-Og` enables optimizations that do not hinder debugging.

When using optimizations it is important to test your code as, on occasion, the
behavior may be changed and functionality compromised. It is also important
to benchmark your code as in some situations a lower optimization level may
result in more performant code.

---
## Practice

Compiler-optimized code always leads to the following:
???

* neither
* faster code
* denser code

---
## Revision

To enable 'further' compiler-optimization which flag should be used?
???

* `-O2`
* `--optimize-more`
* `--optimize`
