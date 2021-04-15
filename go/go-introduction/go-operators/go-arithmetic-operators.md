---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Arithmetic Operators


---

## Content

Arithmetic operators are used for basic mathematical calculations.

There are seven arithmetic operators.

| Operator |                                Definition                                |
| :------: | :----------------------------------------------------------------------: |
|     +    |                                Add numbers                               |
|     -    |                 Subtract the second number from the first                |
|     *    |                             Multiply numbers                             |
|     /    |                  Divide the second number from the first                 |
|     %    | Modulo, divide the second number from the first and output the remainder |
|    ++    |                    Increment, increase a value by one                    |
|    --    |                    Decrement, decrease a value by one                    |

We will use the same variables and values to perform calculations with all seven operators and print the results.

```go
func main() {
  var a = 11
  var b = 5
  var c = 0

  c = a + b
  fmt.Println("a + b =", c)
  // a + b = 16

  c = a - b
  fmt.Println("a - b =", c)
  // a - b = 6

  c = a * b
  fmt.Println("a * b =", c)
  // a * b = 55

  c = a / b
  fmt.Println("a / b =", c)
  // a / b = 2

  c = a % b
  fmt.Println("a % b =", c)
  // a % b = 1

  a++
  fmt.Println("a++ =", a)
  // a++ = 12

  b--
  fmt.Println("b-- =", b)
  // b-- = 4
}
```


---

## Practice

Use arithmetic operators to make the equations true.

```go
var x = 30
var y = 7

x = x ??? y // x = 23

??? // y = 8

y = y ??? x // y = 31
```

- `-`
- `y++`
- `+`
- `%`
- `x--`
- `y--`


---

## Revision

Use arithmetic operators to make the equations true.

```go
var x = 30
var y = 7
var z = 0

z = x ??? y // z = 2

???  // y = 6

z = y ??? x // z = 180

z = x ??? y // z = 5
```

- `%`
- `y--`
- `*`
- `/`
- `x--`
- `x++`
