---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Modulo and Exponentation

---

## Content

The arithmetic operators for Modulo[1] and Exponentation in Lua are:

|      Name      | Sign |
|:--------------:|:----:|
|     Modulo     |  (%) |
| Exponentiation |  (^) |

Here are some examples of arithmetic operators in Lua:
```lua
-- Modulo
result = 10 % 3  -- result = 1

-- Exponentiation
result = 2^3  -- result = 8
```

> It's important to note that arithmetic operators in Lua follow the standard order of operations[2]. To change the order of operations, you can use parentheses.

---

## Practice

What is the value of the variable `result` in the code below?

```lua
result = 2^3 
```

???

- 8
- 16
- 4
- 6

---

## Revision

What is the value of the variable `result` in the code below?

```lua
result = 21 % 4
```

???

- 1
- 84
- 0
- 5

---

## Footnotes

[1: Modulo]

The Modulo Operation returns the remainder of a division.

[2:Standard Order of Operations]

The standard order of operations is refered to as PEMDAS or BODMAS.

PEMDAS stands for parentheses, exponents, multiplication, division, addition, subtraction

BOMDAS stands for brackets, orders, division and multiplication, and addition and subtraction
