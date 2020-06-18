---
author: Stefan-Stojanovic

aspects:
  - new

type: normal

category: how to

---

# More Function Examples

---
## Content

Functions that will be used in the examples can be seen in the footnotes here[1].

You can call multiple functions within the same `Printl()` like so:
```go
func main() {
    // Adding up the input then 
    // calculating the square of that number
    fmt.Println(power(sum(2,3,2)))

    // Adding the sqares of 3 numbers
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

Fill in the missing code to save the result of the `sum` function in a variable called "sum".

```go
func main() {
	var ???  = ???47, 36)
    fmt.???sum)
}
```
* sum
* sum(
* Sum(
* Sum
* Println(
* println(

---
## Footnotes
[1: Previous Example]
```go
// Function with 3 arguments that sums the values and returns the result
func sum(x int, y int, z int) int {
    return x + y + z
}

// Function with 2 arguments that multiplies the values and returns the result
func multiply(x int, y int) int {
    return x * y
}

// Function that calculates the square of a number
func power(x int) int {
    return x * x
}
```