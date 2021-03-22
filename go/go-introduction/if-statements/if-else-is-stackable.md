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
  context: standalone
---

# Stacking if..else


---

## Content

Stackable `if-else` statements are used when you want to execute code on more than two conditions.

> 💡 Variables defined in the `if statement` are valid in the scope of all stacked `if-else` statements. 

The code we had in the previous insight[1] can be improved by using more than one `if-else` statement.

```go
if x := 1 ; x > 0 {
  fmt.Println(x, " is positive")
} else if x < 0 {
  fmt.Println(x, " is negative")
} else if x == 0 {
  fmt.Println(x, " is neither positive nor negative")
}
```

If we run the program three times with three different values we get these results:

```plain-text
0  is neither positive nor negative
1  is positive
-1 is negative
```


---

## Practice

`if-else` statements are ??? and used when you want to execute some code on ???.

- stackable
- two or more conditions
- non-stackable
- a single condition


---

## Revision

Is there a limit on how many `if..else` statements you can stack?

???

- No
- Yes


---

## Footnotes

[1:Previous `if..else` statement]

```go
if x := 1 ; x > 0 {
  fmt.Println(x, " is even")
} else {
  fmt.Println(x, " is odd")
}
```
