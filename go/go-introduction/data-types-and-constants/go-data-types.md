---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Data Types


---

## Content

**Go** support several data types. These are categorized into four groups:

- basic
- aggregate
- reference
- interface

For now, we will only discuss the basic types.

## Basic data types

- numbers
- strings
- booleans

The numbers category contains several data types corresponding to different types and sizes.

Integers:

| Data Type | Description                                                                    |
|-----------|--------------------------------------------------------------------------------|
| int8      | 8-bit signed integer                                                           |
| int16     | 16-bit signed integer                                                          |
| int32     | 32-bit signed integer                                                          |
| int64     | 64-bit signed integer                                                          |
| uint8     | 8-bit unsigned integer                                                         |
| uint16    | 16-bit unsigned integer                                                        |
| uint32    | 32-bit unsigned integer                                                        |
| uint64    | 64-bit unsigned integer                                                        |
| int       | Either 32 or 64 bit                                                            |
| uint      | Either 32 or 64 bit                                                            |
| rune      | Synonym of int32 also represents Unicode code points                           |
| byte      | Synonym of int8                                                                |
| uintptr   | Unsigned integer type. No defined width. Can hold all bits of a pointer value. |

Float:

| Data Type | Description                           |
|-----------|---------------------------------------|
| float32   | 32-bit IEEE 754 floating-point number |
| float64   | 64-bit IEEE 754 floating-point number |

Complex:

| Data Type  | Description                                                            |
|------------|------------------------------------------------------------------------|
| complex64  | Complex numbers that contain float32 as a real and imaginary component |
| complex128 | Complex numbers that contain float64 as a real and imaginary component |

Strings are a sequence of characters **enclosed by quotation marks** `"lik3 th1s"`. The characters can be anything.

Booleans are the smallest type. They can only take `true` or `false` as a value.


---

## Practice

Which of these is not a basic data type?

???

- Arrays
- Strings
- Numbers
- Booleans


---

## Revision

The four data type groups in **Go** are:

1. ???
2. Aggregate
3. Reference
4. Interference

- Basic
- Numbers
- Text
- Booleans
