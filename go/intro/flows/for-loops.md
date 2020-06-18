---
author: Stefan-Stojanovic

aspects:
  - new
  - workout

type: normal

category: how to

---

# For loops

---
## Content

Compared to other languages, `Go` only has one kind of loop, the `for` loop.

A `for` loop allows developers to repeatedly execute the same piece of code.

```go
for i := 0; i < 3; i++ {
    sum += 1
}
```

To declare a for loop, you need to start with the keyword `for`.

Next, you have the **Initial statement**, **Condition expression** and **Post statement** separated by `;` and a `{}` at the end.

> 💡 The curly braces are required and any code within them is executed upon every iteration of the loop.

This **initial statement** is executed before the first iteration of the loop and any variable created is only visible within the scope of the same `for` loop.

> 💡 When declaring the **initial statement** in a `for` loop, you have to use the shorthand notation.

```go
// Doesn't work
for var i = 0;

// Works
for i := 0;
```

The **Condition expression** is evaluated before each iteration of the loop.

> 💡 If the condition evaluates to `True` the loop will continue if it evaluates to `False` the loop stops.

The **Post statement** is executed at the end of every iteration. This is where you increment/decrement the **initial statement**.

Looking at this for loop below:
```go
for i := 0; i < 3; i++ {
    sum += 1
    fmt.Println("The value of sum is: ", sum)
}
```
We have the **initial** statement, `i := 0`. Then we have a **condition**, `i < 10`. Next, we have the **post** statement, `i++`. Last, we have our code in the curly braces.

Here is a gif of the above for loop.

TLDR MAKE A GIF
![]()


---
## Practice

Complete the code to make the for loop iterate 7 times.

```golang
??? ??? ??? ??? {
    sum += 1
    fmt.Println("The value of sum is: ", sum)
}
```
* for
* i := 0;
* i < 3;
* i++
* i := 0:
* i < 3:
* i--