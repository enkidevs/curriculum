---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[The FMT Package](https://golang.org/pkg/fmt/){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Package Verbs


---

## Content

Verbs are predefined sets of instructions used within different I/O functions to convert data types into different formats.

Each of these verbs is used on a specific data type. They do not work with every single function, but they do on some.

Some verbs convert values to strings, some convert numbers to different bases, some add extra spaces, etc.

Here are definitions for some verbs that we will use:

`%s` is used to represent a string or a slice.

`%v` is used to display a value in its original format.

`%T` is used to represent the type of the value. 

`%t` is used to represent a boolean value.

`%b` represents a number in a base 2 format.

`%o` represents a number in a base 8 format.

`%d` represents a number in a base 10 format.

`%x` and `%X` represent a number in base 16, lowercase and uppercase, respectively.

> 💡 In the following insights, we'll show you how verbs are used in `fmt` functions.


---

## Practice

Match the verb with the description.

```plain-text
??? = convert a numeric value to a base 2
??? = display a value in its original format
??? = represent a boolean value
??? = represent the type of the value
??? = convert a numeric value to an uppercase base 16.
```

- `%b`
- `%v`
- `%t`
- `%T`
- `%X`


---

## Revision

Which of these groups is **not** a part of the `fmt` package?

???

- double
- general
- slices
- pointers
- string & slices of bytes
- floating-point & complex constituents
- boolean
- integer
