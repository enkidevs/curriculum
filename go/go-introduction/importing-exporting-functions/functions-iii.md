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

# More Function Examples


---

## Content

Functions that are used in the examples can be seen in the footnotes here[1].

You can call multiple functions within the same `Println()` like so:

```go
func main() {
  // Adding the input then 
  // calculating the square of that number
  fmt.Println(power(sum(2,3,2)))

  // Adding the squares of 3 numbers
  fmt.Println(sum(power(7),power(4),power(3)))

  // Multiply the squares of 2 numbers
  fmt.Println(multiply(power(9),power(7)))

  // calculate the square of a number then
  // the square of that result, 
  // then the square of that result and so on.
  fmt.Println(power(power(power(power(2)))))
}
// Output
// 49
// 74
// 3969
// 65536
```

As you can see in the example above, you can combine functions any way you like.

You can also save the result of a function in a new variable and then print or do something else with that variable.

```go
func main() {
  var sumOfThreePowers = sum(power(7),power(2), power(2))
  fmt.Println(sumOfThreePowers)
}
// Output:
// 57
```


---

## Practice

Fill in the missing code to save the result of the `sum` function in a variable called `sumResult`.

```go
func main() {
  var ???  = ???(47, 36)
  fmt.???(sumResult)
}
```

- sumResult
- sum
- Println
- Sum
- Sum Result
- println


---

## Revision

Complete the gaps to create a function named `sum` that adds and returns its arguments:

```go
func ???(x, ???, z int) ??? {
  return x + y + ???
}
```

- sum
- y
- int
- z


---

## Footnotes

[1: Previous Examples]

```go
// Function with 3 arguments 
// that sums the values 
// and returns the result
func sum(x, y, z int) int {
  return x + y + z
}

// Function with 2 arguments 
// that multiplies the values 
// and returns the result
func multiply(x, y int) int {
  return x * y
}

// Function that calculates 
// the square of a number
func power(x int) int {
  return x * x
}
```
