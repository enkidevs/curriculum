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

# Function Examples


---

## Content

Here are some examples of different functions.

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

We can call these functions within our main function like so:

```go
func main() {
  fmt.Println(sum(3,11,12))
  fmt.Println(multiply(7,2))
  fmt.Println(power(9))
}
// Output:
// 26
// 14
// 81
```


---

## Practice

Create a function called `powerOfThree` that will calculate the power of 3 of an integer (`x`)and return the result.

```go
??? ??? (???) int {
  ???
}
```

- `func`
- `powerOfThree`
- `x int`
- `return x * x * x`
- `return x * x`
- `Func`
- `PowerOfThree`
- `x INT`


---

## Revision

Create a function called `division` where you divide the first argument by the second argument and return the result.

```go
??? ??? (???) int {
  ???
}
```

- `func`
- `division`
- `x, y int`
- `return x / y`
- `return x * y`
- `Func`
- `Division`
- `x, y INT`
