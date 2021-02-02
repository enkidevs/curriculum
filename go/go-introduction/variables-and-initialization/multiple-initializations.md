---
author: Stefan-Stojanovic
type: normal
category: must-know
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

# Multiple Initializations


---

## Content

An important exception when initializing multiple variables at once is that you cannot add more than one data type.

Here are some examples:

```go
// this doesn't work
var age int, name string, isAdult bool = 26, "Stefan", true
var age, name, isAdult int string bool = 26, "Stefan", true
var age, name, isAdult int, string, bool = 26, "Stefan", true

// this is correct
var age, year, something int = 1, 4, 7
```

This will initialize the data type `int` for all 3 variables.

If we were to add `int` to our multiple data type example above it will give an error:

```plain-text
./prog.go:5:5: cannot use true (type bool) as type int in assignment
./prog.go:5:34: cannot use "Stefan" (type string) as type int in assignment
```

This is because you cannot assign values of one data type to another.

If we were to print the example above in our program it would look like this:

```go
package main;
import "fmt"

var age, name, isAdult = 26, "Stefan", true

func main() {
  fmt.Println(age, name, isAdult)
}

// Output:
// 26 Stefan true
```


---

## Practice

Is this initialization correct?

```go
var age int, isAdult bool = 28, true
```

???

- No
- Yes


---

## Revision

Given the code:

```go
// a
var age, year int = 26, 1993

// b
var age, name, isAdult int = 26, "Stefan", true

// c
var age, name, isAdult = 26, "Stefan", true

// d
var age, year, something int = 1, 4, 7
```

Identify the incorrectly initialized variables:
```plain-text
???
```

- b
- a
- c
- d
