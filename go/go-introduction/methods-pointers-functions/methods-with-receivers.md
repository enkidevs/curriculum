---
author: Stefan-Stojanovic
aspects:
  - workout
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
    - type-in-the-gap
  context: standalone
---

# Methods With Receivers


---

## Content

Methods can also be declared with pointer receivers.

Here is the same function from the first insight, except this time it is defined with a pointer receiver.

```go
package main

import (
  "fmt"
)

// Struct type
type Student struct {
  FirstName, LastName string
}

// Method defined on a struct with a pointer receiver
func (s *Student) WelcomeMessage() string {
  return fmt.Sprintf("Dear %s %s, welcome!", s.FirstName, s.LastName)
}

// Calling the function with 2 inputs and printing the result
func main() {
  s := &Student{"Stefan", "Stojanovic"}
  fmt.Println(s.WelcomeMessage())
}
```

The above function operates the same way as without the pointer receivers. 

However, if we add another method on the same `struct`, we will need a pointer receiver to do what we want.

```go
// Struct type
type Student struct {
  FirstName, LastName string
}

// Method defined on a struct with a pointer receiver
func (s *Student) WelcomeMessage() string {
  return fmt.Sprintf("Dear %s %s, welcome!", s.FirstName, s.LastName)
}

// Method defined on a struct with a pointer receiver that adds an age after the last name
func (s *Student) AddAge(f string) {
  s.LastName = s.LastName + f
}

// Calling the function with 2 inputs, adding the age and printing the result
func main() {
  s := &Student{"Stefan", "Stojanovic"}
  s.AddAge(", Age: 26")
  fmt.Println(s.WelcomeMessage())

// Dear Stefan Stojanovic, Age: 26, welcome!
}
```


---

## Practice

Define a method called `Hello()` on the given `struct` with a pointer receiver called `t`.

```go
type Person struct {
  FirstName, LastName string
}

func (???) ??? string {
  return fmt.Sprintf("Dear %s %s, welcome!", t.FirstName, t.LastName)
}
```

- t *Person
- Hello()
- hello()
- t Person


---

## Revision

Finish the code to define a method named `Welcome` with a pointer receiver `Colleague` that returns a `string`.

```go
??? (s ???) ??? ??? {
  return fmt.Sprintf("Dear %s, happy %sth birthay!", s.FirstName, s.Age)
}
```

- func
- *Colleague
- Welcome()
- string
- method
- Student
- Welcome
