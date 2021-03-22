---
author: Stefan-Stojanovic
aspects:
  - workout
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

# Methods Continued


---

## Content

Methods don't have to be defined on a struct. They can be defined on any type.

Here is a method defined on a string.

```go
package main

import (
  "fmt"
  "strings"
)

type MyString string

// Method defined on a string with a `MyString` receiver
func (s MyString) Uppercase() string {
  return strings.ToUpper(string(s))
}

// Calling the function with the input "usa" and printing the result.
func main() {
  fmt.Println(MyString("usa").Uppercase())
}
```

> 💡 The `ToUpper` function is defined in the `strings` package and has to be imported before use.

The `ToUpper` function is used to convert all the letters of a string to uppercase letters.

> 💡 You cannot declare a method with a receiver whose type is defined in another package. You can only declare it if the type is defined in the same package as the method.

This is why we use `MyString(INPUT_HERE)`. The `MyString` is an "alias" we use to call the functions we do not "own" (`ToUpper`).


---

## Practice

Methods can ???.

- be defined on any data type
- only be defined on a struct


---

## Revision

Create a method called `Lowercase()` on a `MyString` Receiver. This method will take a `MyString` input and return a string.

```go
type MyString string

func (n ???) ??? ??? {
  return strings.ToLower(string(n))
}

// Calling the function with an input and printing the result
func main() {
  fmt.Println(MyString("Bartholomew").Lowercase())
}
```

- MyString
- Lowercase()
- string
- mystring
- lowercase()
