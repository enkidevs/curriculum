---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Shorthand Notations For Arithmetic Operations

---

## Content

When you are performing calculations like these:

```python
x = 10

x = x + 1
x = x - 1
x = x / 2
x = x // 2
x = x * 2
x = x % 2
x = x ** 2
```

You can use shorthand notation for all of these operations like so:

| Operation      | Equation   | Shorthand |
|----------------|------------|-----------|
| Addition       | x = x + 1  | x += 1    |
| Subtraction    | x = x - 1  | x -= 1    |
| Division       | x = x / 2  | x /= 2    |
| Multiplication | x = x * 2  | x *= 2    |
| Floor Division | x = x // 2 | x //= 2   |
| Exponentiation | x = x ** 2 | x **= 2   |
| Modulus        | x = x % 2  | x %= 2    |

> 💡 You can also use the shorthand notation with variables.

```python
x = 2
y = 3

x += y
# x becomes 5

y **= x
# y becomes 243
```

---

## Practice

What's the output of the following code:

```bash
x = 3
x **= 2
???
```

- `9`
- `9.0`
- `6`
- `1`

---

## Revision

What's the output of the following code:

```bash
x = 32
y = 14

x -= y
# x becomes ???
```


- `18`
- `18.0`
- `46.0`
- `32`
- `1.0`
