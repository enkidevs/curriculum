---
author: Stefan-Stojanovic

type: normal

category: how to

---

# The fmt Package

---
## Content

The `fmt` package, or the **formatting** package, contains several different functions that format input/output.

They are used for formatting strings in different I/O functions.

This package contains different verbs that are derived from the `C` language but made simpler.

There are seven groups of verbs with a total of 20 functions[1]:
- general
- boolean
- integer
- floating-point & complex constituents
- string & slices of bytes
- slices
- pointer

Each function is used differently, with some having great similarities.

For now, we will discuss the `Print`, `Println`, `Printf`, and `Sprintf` functions, what they are used for, and how they differ from each other.

---
## Practice

Which of these functions is not a part of the `fmt` package?

???

- Printlnf
- Println
- Sprintf
- Printf
- Print


---
## Footnotes

[1: Functions]
These functions are:
```go
func Errorf()
func FormatError()
func Fprint()
func Fprintf()
func Fprintln()
func Fscan()
func Fscanf()
func Fscanln()
func Print()
func Printf()
func Println()
func Scan()
func Scanf()
func Scanln()
func Sprint()
func Sprintf()
func Sprintln()
func Sscan()
func Sscanf()
func Sscanln()
```