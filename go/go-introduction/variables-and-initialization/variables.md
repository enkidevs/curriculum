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
    - type-in-the-gap
  context: standalone
---

# Variables


---

## Content

To declare a variable in **Go**, you need to use the `var` statement.

> To *declare* a variable means to create it.

A variable can have a type, which is the kind of information it can hold, and a value that matches that type.

Example:

```go
// variable with a value
var name = "Stefan"
// variable with a type
var name string
// variable with both
var name string = "Stefan"
```

You can also declare multiple variables at once:

```go
var name, lastName string
```

Variables can be declared both at package and function levels. 

This means you can create variables at the top of the file and inside functions[1].

Variable names have to start either with a `letter` or an underscore `_`. After the first character, the name can also contain numbers and the length of a variable is unlimited.

> 💡 It is important to note that variables are case sensitive. `name`, `Name`, and `NAME` are 3 different variables.


---

## Practice

Where can variables be created?

???

- At package and function level.
- At package level only.
- At function level only.
- At either the function or package, but not both.


---

## Revision

Define an empty `float64` variable called `age`:

```go
??? ??? ???
```

Define a string variable called `name` with the value `"Manuel"`:

```go
??? ??? ??? = ???
```

- var
- age
- float64
- var
- name
- string
- "Manuel"
- Manuel
- Variable


---

## Footnotes

[1: Places to declare a variable]

A variable in **Go** can be declared both at the package level and the function level.

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
