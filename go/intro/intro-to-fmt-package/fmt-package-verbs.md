---
author: Stefan-Stojanovic

type: normal

category: how to

---

# The fmt Package Verbs

---
## Content

Verbs in this package are used for converting any data type into a string format.

Each of these verbs are used on a specific data type. They do not work with every single function, but they do on some.

Some verbs convert values to strings, some convert numbers to different bases, some add extra spaces, etc.

Here are definitions for each group taken from the `golang.org/pkg/fmt` official package website.

We won't be diving into every verb in this workout, but you can bookmark this insight to have as a cheat sheet for all the verbs.

### General

| Verb |                                        Explanation                                        |
|------|:-----------------------------------------------------------------------------------------:|
| %v   | the value in a default format when printing structs, the plus flag (%+v) adds field names |
| %#v  | a Go-syntax representation of the value                                                   |
| %T   | a Go-syntax representation of the type of the value                                       |
| %%   | a literal percent sign; consumes no value                                                 |

### Boolean

| Verb | Explanation            |
|------|------------------------|
| %t   | the word true or false |


### Integer

| Verb | Explanation                                                      |
|------|------------------------------------------------------------------|
| %b   | base 2                                                           |
| %c   | the character represented by the corresponding Unicode code point|
| %d   | base 10                                                          |
| %o   | base 8                                                           |
| %O   | base 8 with 0o prefix                                            |
| %q   | a single-quoted character literal safely escaped with Go syntax. |
| %x   | base 16, with lower-case letters for a-f                         |
| %X   | base 16, with upper-case letters for A-F                         |
| %U   | Unicode format: U+1234; same as "U+%04X"                         |

### Floating-point & Complex Constituents

| Verb | Explanation                                                                   |
|------|-------------------------------------------------------------------------------|
| %b   | decimalless scientific notation with exponent a power of two,                 |
|      | in the manner of strconv.FormatFloat with the 'b' format, e.g. -123456p-78    |
| %e   | scientific notation, e.g. -1.234456e+78                                       |
| %E   | scientific notation, e.g. -1.234456E+78                                       |
| %f   | decimal point but no exponent, e.g. 123.456                                   |
| %F   | synonym for %f                                                                |
| %g   | %e for large exponents, %f otherwise. Precision is discussed below.           |
| %G   | %E for large exponents, %F otherwise                                          |
| %x   | hexadecimal notation (with decimal power of two exponent), e.g. -0x1.23abcp+20|
| %X   | upper-case hexadecimal notation, e.g. -0X1.23ABCP+20                          |

### String & Slices of Bytes

| Verb | Explanation                                          |
|------|------------------------------------------------------|
| %s   | the uninterpreted bytes of the string or slice       |
| %q   | a double-quoted string safely escaped with Go syntax |
| %x   | base 16, lower-case, two characters per byte         |
| %X   | base 16, upper-case, two characters per byte         |

### Slices

| Verb | Explanation                                                 |
|------|-------------------------------------------------------------|
| %p   | address of 0th element in base 16 notation, with leading 0x |

### Pointer

| Verb                 |                       Explanation                      |
|----------------------|:------------------------------------------------------:|
| %p                   |            base 16 notation, with leading 0x           |
| %b, %d, %o, %x and %X| also work with pointers, formatting the value exactly  |
|                      | as if it were an integer.                              |

---
## Practice

Which of these groups is **not** a part of the `fmt` package?

???

- Double
- general
- slices
- pointers
- string & slices of bytes
- floating-point & complex constituents
- boolean
- integer

---
## Revision

How many groups of verbs exist in the `fmt` package?

???

- 7
- 11
- 5
- 3
- 6
