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

# Pointers & Functions


---

## Content

Let's take a look at how we can convert methods to functions while keeping their functionality.

```go
// Struct type
type Student struct {
  FirstName, LastName string
}

// Function defined on a struct
func WelcomeMessage(s Student) string {
  return fmt.Sprintf("Dear %s %s, welcome!", s.FirstName, s.LastName)
}

// Function defined on a struct with a pointer receiver that adds an age after the last name
func AddAge(s *Student, f string) {
  s.LastName = s.LastName + f
}

// Calling the function with 2 inputs, adding the age and printing the result
func main() {
  s := Student{"Stefan", "Stojanovic"}
  AddAge(&s, ", Age: 26")
  fmt.Println(WelcomeMessage(s))
  // Dear Stefan Stojanovic, Age: 26, welcome!
}

```

The above functions do the same things as the methods in the previous insight.

However, if we remove the pointer from the `AddAge` receiver in the main function, the function will throw an error at compilation.

Unlike methods, which will still compile, functions with a pointer argument must take a pointer value as the receiver.

This also applies to functions with a value, they must take a value as a receiver and not a pointer. 

If our functions were methods, they would be able to take a value or a pointer as a receiver regardless of whether we remove the pointer from the function.

Also, if a function has a value type, it must take an input of the same type as its value.


---

## Practice

A method with a receiver can ???.

A function with a receiver can ???.

- take either a value or pointer receiver
- only take a pointer receiver


---

## Revision

A function with a pointer argument ??? as the receiver.

A method with a pointer argument ??? as the receiver.

- must take a pointer value
- can take either a value or pointer
