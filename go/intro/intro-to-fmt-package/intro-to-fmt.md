---
author: Stefan-Stojanovic

type: normal

category: how to

---

# The fmt Package

---
## Content

> In this workout we will discuss several importing options from the `fmt` package that are necessary for future examples.

The `fmt` package, or the **Formating** package in **Go** contains several different import/output functions.

They are formatted in different ways.

The formats for these functions have different verbs that are derived from the `C` language but made simpler.

There are 7 groups of verbs:
- general
- boolean
- integer
- floating-point & complex constituents
- string & slices of bytes
- slices
- pointer

The package contains a total of 20 functions.

Each function is used differently with some having great similarities.

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

For now, we will discuss the `Print`, `Println`, `Printf`, and `Sprintf` functions, what they are used for and how they differ from each other.

---
## Practice

The `fmt` package contains ??? groups of verbs and ??? I/O functions.

- 7
- 20
- 13
- 28