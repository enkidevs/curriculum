---
author: Stefan-Stojanovic
type: normal
category: must-know
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

# Initialization


---

## Content

When declaring variables, they can also be initialized upon declaration.

> *initialized* means "given a value"

```go
// non initialized
var age int

// initialized
var age int = 26
```

You can initialize one or more variables with the same declaration like so:

```go
var age, year = 26, 1993
```

You can also declare and initialize variables of different types without explicitly specifying the types.

```go
var age, name, isAdult = 26, "Stefan", true
```

The above initialization is the same as:

```go
var age int = 26
var name string = "Stefan"
var isAdult bool = true
```

If you are initializing a variable, for instance with a string (i.e. "Stefan"), you do not need to add the keyword `string` because **Go** can infer the type based on the value. 

This is true for any type. As long as the value is initialized, there is no need for the data type to be present.


---

## Practice

Which of these variables are incorrectly initialized?

```go
var a = "Stefan"

var b string = "Stefan"

var c string = Stefan
```

```go
???
```

- c
- a
- b


---

## Revision

Create an uninitialized string variable named `surname`:

```go
??? ??? ???
```

- var
- surname
- string
- variable
- str
