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
  context: standalone
---

# Methods


---

## Content

Methods are functions with a special receiver argument.

They can be defined on types.

```go
package main

import (
  "fmt"
)

// Struct type
type Student struct {
  FirstName, LastName string
}

// Method defined on a struct with a receiver
func (s Student) WelcomeMessage() string {
  return fmt.Sprintf("Dear %s %s, welcome!", s.FirstName, s.LastName)
}

// Calling the function with 2 inputs and printing the result
func main() {
  s := Student{"Stefan", "Stojanovic"}
  fmt.Println(s.WelcomeMessage())
}
```

> 💡 The difference between a function and a method is that a method has a defined receiver.

The method receiver appears between the `func` keyword and the method name.

In our example above, the receiver is the `s Student` struct, and `WelcomeMessage()` is the method's name.


---

## Practice

A method is a ??? with a special receiver argument.

- function
- receiver argument
- class
- assignment operator


---

## Revision

How do you define a method?

???

- With the func keyword and a special receiver argument.
- With the method keyword and a special receiver argument.
