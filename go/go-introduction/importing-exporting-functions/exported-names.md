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
  context: standalone
---

# Exported Names


---

## Content

The difference between **exported** and **imported**:

**Imported** names can only be used in the scope of the project they were defined at.

**Exported** names are defined elsewhere in the package but can be used in any program.

> ❗ **Exported** names always start with a capital letter.

If a function starts with a lowercase letter it can only be used within the package it was defined at. 

However, if it starts with an uppercase letter, it can be used by any piece of code that imported the package. 

This means that any function starting with an uppercase letter is exported.

For example, this is how we can export a function called `Hello` from package `enki`:

```go
package enki

import "fmt"

// Hello is exported from enki 
// package because it starts 
// with an uppercase letter
func Hello() {
	fmt.Println("Hello")
}

// bye is not exported from enki 
// package because it starts
// with a lowercase letter
// Note: we call these functions
// "unexported"
func bye() {
  fmt.Println("Bye")
}
```

Now anyone importing the `enki` package can use the `Hello` function:

```go
package main

import "enki"

func main() {
	enki.Hello()
}
```

But they cannot use the `bye` function!

```go
// Wrongly used bye() function
enki.bye()
// Output error
// ./prog.go:8:2: cannot refer to unexported name enki.bye
// ./prog.go:8:2: undefined: enki.bye
```


---

## Practice

Given the piece of code below, add any missing parts so the output would properly print the result shown in the comment.

```go
package main

import "???"

var x int
var y int

func main() {
  x := 3
  y := 4
  ???(x + y)
}

// Output
// 7
```

- fmt
- fmt.Println
- fmt.println
- FMT.Println
- FMT


---

## Revision

**Exported** names always start with a capital letter?

???

- True
- False
