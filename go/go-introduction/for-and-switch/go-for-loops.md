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

# For Loops


---

## Content

Compared to other languages, **Go** only has one kind of loop, the `for` loop.

A `for` loop allows developers to repeatedly execute the same piece of code.

```go
var sum = 0

for i := 0; i < 3; i++ {
    sum += 1
}
```

To declare a for loop, you need to start with the keyword `for`.

Next, you have the **initial statement**, **condition expression** and **post statement** separated by `;` and a `{}` at the end.

> 💡 The curly braces are required. Any code within them is executed upon every iteration of the loop.

The **initial statement** is executed before the first iteration of the loop and any variable created is only visible within the scope of the same `for` loop.

> 💡 When declaring the **initial statement** in a `for` loop, you have to use the shorthand notation.

```go
// Doesn't work
for var i = 0;

// Works
for i := 0;
```

The **condition expression** is evaluated before each iteration of the loop.

> 💡 If the condition evaluates to `True`, the loop will continue. If it evaluates to `False` the loop stops.

The **post statement** is executed at the end of every iteration. This is where you increment/decrement the **initial statement**.

Looking at this for loop below:

```go
var sum = 0

for i := 0; i < 3; i++ {
  sum += 1
  fmt.Println("The value of sum is: ", sum)
}
```

We have the **initial** statement, `i := 0`. Then, we have a **condition**, `i < 3`. Next, we have the **post** statement, `i++`. Lastly, we have our code in the curly braces.


---

## Practice

Complete the code to make the for loop iterate 3 times.

```go
var sum = 0

??? i := 0??? ??? ??? {
  sum += 1
  fmt.Println("The value of sum is: ", sum)
}
```

- for
- ;
- i < 3;
- i++
- i := 0:
- i < 3:
- i--


---

## Revision

`for` loops are used when you want to execute the same code ???.

- multiple times
- twice and get different outputs based on the input
