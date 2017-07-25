# SafeVarargs Annotation
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More of SafeVarargs](https://docs.oracle.com/javase/8/docs/api/java/lang/SafeVarargs.html)'

---
## Content

**SafeVarargs** annotation refers to a method that makes use of multiple arguments under `VarArgs` declaration. The point of this annotation is to force compiler to raise an error upon a wrong usage of these arguments. Before Java 1.7 these errors were not mandatory for compilers to raise and from version 1.5 (introduction of `VarArgs`) and 1.7 programmers had to implicitly specify `@SafeVarargs` to ensure that the compiler raises an error upon a wrong usage.

**NOTE:** this annotation is no longer necessary to use as compilers raise this type of errors by themselves.

---
## Revision

What is *SafeVarargs* annotation used for?

???

* It ensures that compiler raises an error upon improper use of *VarArgs*
* It ensures that compiler raises an error whenever we use *VarArgs*
