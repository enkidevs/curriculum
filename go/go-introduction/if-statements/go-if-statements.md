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

# If Statements


---

## Content

`if` statements are conditional statements that can have only one outcome.

An `if` statement is used to execute some code if the condition is true.

The syntax of the `if` statement in **Go** is similar to the `for` statement.

You start with the keyword `if` and add a `condition` followed by curly braces `{ }`. 

> 💡 You can add or omit the parentheses for the condition. The curly braces are required.

Here is a function that uses an `if` statement to check if a number is positive and returns a string.

```go
func posOrNeg(x float64) string {
  if x > 0 {
    return "x is positive"
  }
  return "x is negative"
}
```

If `x` is greater than `0`, the output would be `x is positive`. If x is not greater it would be `x is negative`.

```go
fmt.Println(posOrNeg(100))
// x is positive
fmt.Println(posOrNeg(-50))
// x is negative
```


---

## Practice

Fill in the gaps to make the function return "Correct" if it evaluates to `true` and "Incorrect" if it evaluates to `false`.

```go
func isItTrue(x float64) string {
  ??? 3 >= 2 {
    ??? "Correct"
  }
  ??? "Incorrect"
}
```

- if
- return
- return
- print
- print
- while
- for


---

## Revision

Fill in the gaps to make the function check if a number is positive or negative. Return the result for both cases.

```go
func posOrNeg(x float64) ??? {
  if ??? {
    return "x is positive"
  }
  return "???"
}
```

- string
- x > 0
- x is negative
- x < 0
- int
