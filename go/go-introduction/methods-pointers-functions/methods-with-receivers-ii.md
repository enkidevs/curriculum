---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how-to

---

# Methods With Receivers Continued

---
## Content

The difference between a method with a pointer receiver and a value receiver is that the former can modify the value to which the pointer points.

If we didn't have a receiver `*` in our `AddAge`[1] method, the `s.AddAge(", Age: 26")` would do nothing.

```go
// Output without receiver:
Dear Stefan Stojanovic, welcome!
// Output with receiver:
Dear Stefan Stojanovic, Age: 26, welcome!
```

Since methods often modify receivers, pointer receivers are more common than value receivers.

When you have a method with a pointer receiver, the method can change the value declared in the main function.

When you have a value receiver, the method operates on a copy of the original `Student` values.

---
## Footnotes

[1:AddAge method]
```go
// Struct type
type Student struct {
  FirstName, LastName string
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
}
```