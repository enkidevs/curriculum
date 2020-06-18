---
author: Stefan-Stojanovic

aspects:
  - new

type: normal

category: how to

---

# If using short hand notation

---
## Content

Just like in the `for` loop, you can create a variable using shorthand notation before the declaration of the `if statement`.

> 💡 Variables defined in the `if statement` are only valid in the scope of the `if`. 

The evenOrOdd function takes any whole number and checks if it's even or odd by dividing it with 2 and checking if there is a remainder.

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
In this case, we don't need `y:=2;` declaration. Adding it was just to show that you can create values within the `if` statement but only using shorthand notation. 

> 💡 It is important that the `y` and `x` values are of the same type.

---
## Practice

Complete the code by adding a new variable in the if statement using shorthand notation. Then return the result in the form of a string.

```golang
func ???(x int) string {
    if ??? ; x % y == ??? {
        return "x is even"
    }
    return "x is odd"
}

evenOrOdd(71)
```

* evenOrOdd
* y := 2
* 0
* 1
* var y = 2
* oddOrEven