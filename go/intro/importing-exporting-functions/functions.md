---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Functions

---
## Content

Functions are pieces of code designed for a particular task.

A function in **Go** can take from zero to any number of arguments.

Functions are defined with the keyword `func`. The keyword is case sensitive.

Here is an example:

```go
// Function with 2 arguments that multiplies
// the values and returns the result
func multiply(x int, y int) int {
  return x * y
}
```

The `func` keyword states that we are creating a function named `multiply`.

The `(x int, y int)` are two input values that we have given the names `x` and `y` and set the type to `int`.

The last `int`, after the parentheses, specifies what the type of the return will be.

**Notes:** 
- You can use as many arguments as you want in your function.
- You can name your function any way you want, but it is best practice to name it according to what it does.
- Function values can be of any data type.

Since the two arguments are of the same type we can also only write the type at the end like so:
```go
func multiply(x, y int) int {
  return x * y
}
```

---
## Practice

Fill in the gaps to create a function with two integer arguments and return their product.

```go
??? multiply(???) int {
  ??? x * y
}

fmt.Println(multiply(7,1))
// 7
```

- func
- x, y int
- return
- Func
- function
- Return
- x, y float64

---
## Revision

How many arguments can functions in **Go** have?

???

Which keyword defines a function?

???

- From zero to unlimited
- func
- Minimum 1, maximum 10
- Func
- function