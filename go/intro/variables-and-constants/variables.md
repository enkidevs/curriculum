---
author: Stefan-Stojanovic

aspects:
  - new
  - workout

type: normal

category: how to

---

# Variables

---
## Content

To define a variable in `GO`, you need to use the `var` statement.

There are several ways to do this.

Example:
```go
// Incorrect
var name = Stefan
var name string = Stefan
var name

// Correct
var name = "Stefan"
var name string = "Stefan"
var name string
var int = 0
```

You can also declare multiple variables at once:

```Go
var name, lastName string
```

Variables can be created both at package and function level.

Example:
```go
package main

import "fmt"
// Package level
var name = "Stefan"
var age = 26

func main() {
// Function level
  var lastName string = "Stojanovic"
  var birthYear = 1993
}
```

Variable names have to start either with a `letter` or an underscore `_`. After the first character, the name can also contain numbers and the length of a variable is unlimited.

It is important to note that variables are case sensitive. `name`, `Name`, and `NAME` are 3 different variables.

---
## Practice

Where can variables be created?

???

* At package and function level.
* At package level only.
* At function level only.
* At either the function or package, but not both.