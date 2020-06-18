---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: how to

---

# Arithmetic Operators

---
## Content

Arithmetic operators are used for basic mathematical operations.

There are 7 arithmetic operators.
```go
"+"  - Add numbers
"-"  - Subtract the second number from the first
"*"  - Multiply numbers
"/"  - Divide the second number from the first
"%"  - Modulo, divide the second number from the first and output the remainder 
"++" - Increment, increase a value by one
"--" - Decrement, decrease a value by one
```

We will use the same variables and values to perform calculations with all 7 operators and print the results.
```go
func main() {
var a = 11
var b = 5
var c = 0

c = a + b
fmt.Println("a + b =", c)

c = a - b
fmt.Println("a - b =", c)

c = a * b
fmt.Println("a * b =", c)

c = a / b
fmt.Println("a / b =", c)

c = a % b
fmt.Println("a % b =", c)

a++
fmt.Println("a++ =", a)

b--
fmt.Println("b-- =", b)
}
```
 
Output:
```go
a + b = 16
a - b = 6
a * b = 55
a / b = 2
a % b = 1
a++ = 12
b-- = 4
```


---
## Practice

Use arithmetic operators to make the equations true.

```go
var x = 30
var y = 7


x ??? y = 23

??? = 8

y ??? x = 37

x ??? y = 2

??? = 29

y ??? x = 210

x ??? y = 4
```


* -
* y++
* +
* %
* x--
* *
* /
* y--
* b++
