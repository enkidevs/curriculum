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
    - type-in-the-gap
  context: standalone
---

# Type Conversion


---

## Content

When converting types in **Go**, you can use the **type conversion** method.

The syntax is:

```go
T(variable)

// where `T` is the type
```

Here is an example:

```go
var result float64 = 31.836
```

We can convert the above value to another value like so:

```go
var resultAsInt int = int(result)
```

And now, an example program!

```go
package main

import "fmt"

var result float64 = 31.836

func main() {
  var resultAsInt int = int(result)
  fmt.Println(resultAsInt)
}

// Result after print:
// 31
```

This will take the `float64`, convert it to an `int`, and save it in the `resultAsInt` value.


---

## Practice

Fill in the gaps to convert the `int` variable to `float64`. Then, print the new variable.

```go
var someNumber int = 39

func main() {
 ??? newNumber ??? = ???(someNumber) 
 
 fmt.Println(???)
}
```

- var
- float64 
- float64
- newNumber


---

## Revision

Finish the code to convert the `result` floating-point number to a new integer number called `newType`. Finally, fill in the output.

```go
package main

import "fmt"

var result float64 = 37.939

func main() {
  var ??? int = ???
  fmt.Println(???)
}

// Output after print:
???
```

- newType
- int(result)
- newType
- 37
- 38
- result
