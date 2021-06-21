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
  context: standalone
---

# if..else


---

## Content

An `if-else` statement is used to execute some code if the condition is `true` and another if it is `false`.

If we had this `if` in our main function, both statements would be printed out.

```go
if x := 1 ; x > 0 {
  fmt.Println(x, " is positive")
}
fmt.Println(x, " is negative")
// Output:
// 1 is positive
// 1 is negative
```

Instead, we should use an `if..else` statement:

```go
if x := 1 ; x > 0 {
  fmt.Println(x, " is positive")
} else {
  fmt.Println(x, " is negative")
}
// Output:
// 1 is positive
```

Now, we would have only one output.


---

## Practice

Complete the code in the `if-else` statement using the shorthand notation. Then, print a positive result if `true` and a negative if `false`.

```go
if ??? ; x > 0 {
  fmt.Println(x, " ???")
} ??? {
  fmt.Println(x, " ???")
}
```

- x := 1
- is positive
- else
- is negative
- var x : = 1
- var x = 1


---

## Revision

`if-else` statements are used ???

- to execute one code if the condition is true and another if it is false.
- for creating if-else loops
