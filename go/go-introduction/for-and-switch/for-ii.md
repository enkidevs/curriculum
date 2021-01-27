---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# More on `for` Loops

---
## Content

The `for` loops initial and post statements can be omitted. 

A loop like this one:

```go
sum := 0

for i := 0; i < 3; i++ {
  sum += 1
  fmt.Println("The value of sum is: ", sum)
}
```

Can be written as:

```go
sum := 0

for ; sum < 3; {
  sum += 1
  fmt.Println("The value of sum is: ", sum)
}
```

Or:

```go
for sum := 0; sum < 3; {
  sum += 1
  fmt.Println("The value of sum is: ", sum)
}
```

There is no difference in the outcome between the 3 loops.

```plain-text
The value of sum is:  1
The value of sum is:  2
The value of sum is:  3
```

### Infinite loop

An infinite loop is created when you omit the conditional.
```go
sum := 0
for i := 0; ; i++ {
  sum += 1
  fmt.Println("The value of sum is:",sum)
}

// Or

for {

}
```

To stop an infinite loop, either kill the program or add a `break`. We will discuss this in a later insight.

### While

There is no `while` keyword in **Go**. 

To create a **while** loop in **Go** you need to use the `for` loop without any semicolons, init and post statements.

```go
sum := 1

for sum < 50 {
  sum += sum
  fmt.Println("The value of sum is: ", sum)
}
```

Output:
```go
The value of sum is:  2
The value of sum is:  4
The value of sum is:  8
The value of sum is:  16
The value of sum is:  32
The value of sum is:  64
```

---
## Practice

Match the loop letter with the name.

```go
// A
for sum := 1; sum < 3; {
  sum += 1
}
```

```go
// B
sum := 1

for sum < 50 {
  sum += sum
}
```

```go
// C
sum := 1
for i := 0; ; i++ {
  sum += 1
}
```

A: ???
B: ???
C: ???

- for loop
- while loop
- infinite loop

---
## Revision

Create a while loop that will add `num` to itself until `num` is less than or equal to `1000`.

```go
num := 1

??? ??? < 1000 {
  ??? += ???
}
```

- for
- num
- num
- num
- while
- self
- this