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

# Empty Interfaces


---

## Content

An empty interface is an interface type with no specified methods.

```go
interface{}
```

These interfaces can hold values of any type.

> 💡 They are useful for code that works with values of unknown types.

Since a type implements an interface by implementing its methods, if an interface has no methods, all types implement it.

Here is an example of an empty interface that is implemented by three different types, a `string`, an `int`, and a `boolean` value.

The results of the `output` function are located beneath the function call.

```go
package main

import "fmt"

func main() {
  var i interface{}
  output(i)
  // (Value: <nil>, Type: <nil>)

  i = 33
  output(i)
  // (Value: 33, Type: int)

  i = "Hello"
  output(i)
  // (Value: Hello, Type: string)

  i = true
  output(i)
  // (Value: true, Type: bool)
}

// A method with an interface type 
// where the `fmt.Print` statement 
// takes any number of arguments of type `interface{}`
func output(i interface{}) {
  fmt.Printf("(Value: %v, Type: %T)\n", i, i)
}
```


---

## Practice

Empty interfaces can ???.

- hold values of any type
- only hold values of type "struct"


---

## Revision

An empty interface is an interface type with ???.

- no specified methods.
- one specified method.
