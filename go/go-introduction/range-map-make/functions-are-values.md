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
    - type-in-the-gap
  context: standalone
---

# Functions Are Also Values


---

## Content

Like other values, function values can be used or passed around.

You can use them as function arguments or return values.

Here is an example of a function assigned to a variable as a value:

```go
var sum = func(a int , b int) int {
  return a + b
}
```

In the above example, we have a variable called `sum` that has a function that calculates the sum of 2 numbers and saves it in the variable.

We can call this function in the main function like so:

```go
func main() {
  fmt.Println("Result: ", sum(1, 33))
}
// Result: 34
```


---

## Practice

Functions ???

- are considered values.
- are not values.


---

## Revision

Assign a function that adds 3 integer values to the `sum` variable and returns an integer.

```go
var ???  = ???(a, b, c int) ??? {
    ??? a + b + c
  }
  
fmt.Println(sum(11,22,33))
// 66
```

- sum
- func
- int
- return
- print
- function
- Sum
