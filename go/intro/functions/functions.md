---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - new
  - workout

type: normal

category: how to

---

# Functions

---
## Content

Functions are pieces of code designed for a particular task.

A function in `GO`, can take from zero to any number of arguments.

Functions are defined with the key word `func`. The key word is key sensitive.

Example:

```go
// Function with 2 arguments that multiplies the values and returns the result
func multiply(x int, y int) int {
    return x * y
}
```

The `func` key word states that we are creating a function. The `multiply` is the name we have chosen. The `(x int, y int)` are 2 input values that we have given the names `x` and `y` and set the type to `int`. The last `int` after the parentheses specifies what the type of the return will be.

**Notes:** 
- You can add as many values as you want to your function.
- You can name your function any way you want, but it is best practice to name it according to what it does.
- Functions values can be of any data type

Since the 2 arguments are of the same type we can also only write the type at the end like so:
```go
func multiply(x, y int) int {
    return x * y
}
```

---
## Practice

Fill in the gaps to create a function with 2 integer arguments types and return their product.

```go
??? multiply(???) int {
    ??? x * y
}

fmt.Println(multiply(7,1))
// 7
```

* func
* x, y int
* return
* Func
* function
* Return
* x, y float64

---
## Revision

How many arguments can functions in `GO` have?

???

Which key word defines a function?

???

* From zero to unlimited
* func
* Minimum 1, maximum 10
* Func
* function
