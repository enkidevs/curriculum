---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The fmt Package


---

## Content

The `fmt` package, or the **formatting** package, contains several different functions that format input/output.

This package contains different verbs that are derived from the `C` language but made simpler.

> 💡 We'll explain what verbs are and how to use them soon.

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

What does `fmt` stand for?

???

- Formatting
- Financial Market Trends
- Filtered Multitone


---

## Revision

Fill in the code to print the text shown in the output:

```go
var occupation = "developer"

fmt.???("I am a Go ???", ???)

// I am a Go developer

```

- Printf
- %v
- occupation
- Sprintf
- developer
- %t


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
