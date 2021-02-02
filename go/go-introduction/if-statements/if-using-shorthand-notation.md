---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# If Using Shorthand Declaration


---

## Content

Just like in the `for` loop, you can create a variable using shorthand declaration before the condition of the `if` statement.

> 💡 Variables declared in the `if` statement are only valid in the scope of the `if`. 

The `evenOrOdd` function takes any whole number and checks if it's even or odd by dividing it by 2 and checking if there is a remainder.

```go
// Works
func evenOrOdd(x int) string {
  if y := 2; x % y == 0 {
    return "x is even"
  }
  return "x is odd"
}

// Doesn't work
func evenOrOdd(x int) string {
  if var y int = 2; x % y == 0 {
    return "x is even"
  }
  return "x is odd"
}
```

In this case, we don't need the `y := 2;` declaration. Adding it was just to show that you can create values within the `if` statement, but only using the shorthand notation. 

> 💡 It's important that both `x` and `y` have the same data type. Otherwise, math operations won't work.


---

## Practice

Complete the code by adding a new variable in the if statement using the shorthand notation. Then, return the result in the form of a string.

```go
func ???(x int) string {
  if ??? ; x % y == ??? {
    return "x is even"
  }
  return "x is odd"
}

evenOrOdd(71)
// x is odd
```

- evenOrOdd
- y := 2
- 0
- 1
- var y = 2
- oddOrEven


---

## Revision

When you define a variable in an `if` statement, the variable is valid ???

- only in the scope of the if statement
- anywhere in the same package as the if statement
