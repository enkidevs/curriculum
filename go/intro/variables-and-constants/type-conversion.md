---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

links:


---

# Type Conversion

---
## Content

When converting types in `GO`, you can use the `type conversion` method.


Syntax:
```go
T(variable) where `T` is the type
```

Example:
```go
var result float64 = 31.836
```

We can convert the above value to another value like so:
```go
var newType int = int(result)
```

Example program:
```go
package main

import "fmt"
var result float64 = 31.836

func main() {
  newType int := int(result)
	fmt.Println(newType)
}

// Result after print:
31
```
This wil take the float64 convert it to an int and save it in the `newType` value.

---
## Practice

Finish the code bellow to convert the "result" floating point number to a new integer number called "newType". And input what the output would be.


```go
package main

import "fmt"

var result float64 = 37.939

func main() {
  ??? int := ???
	???
}

// Output after print:
???
```

* newType
* int(result)
* fmt.Println(newType)
* 37
* 38
* print.ln(newType)