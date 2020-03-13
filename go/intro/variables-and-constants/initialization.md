---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: must-know

---

# Initialization

---
## Content

When declaring variables, they can also be initialized upon declaration.
```Go
// non initialized
var age int

// initialized
var age int = 26
```

You can initialize 1 or more variables with the same declaration like so:
```go
var age, year = 26, 1993
```

You can also declare and initialize variables of different types without explicitly specifying the types.

```go
var age, name, isAdult = 26, "Stefan", true
```

The above initialization is the same as:
```Go
var age int = 26
var name string = "Stefan"
var isAdult bool = true
```

If you are initializing a variable, for instance, with a string, I.e. "Stefan", you do not need to add the keyword `string`. This is true for any type. As long as the value is initialized, there is no need for the "Data type" to be present.

**Note:** An important exception when initializing multiple variables at once is that you cannot add more than one data type.
Example:
```Go
//This doesnt work
var age int, name string, isAdult bool = 26, "Stefan", true
var age, name, isAdult int string bool = 26, "Stefan", true
var age, name, isAdult int, string, bool = 26, "Stefan", true

// this is correct
var age, year, something int = 1, 4, 7

// this will initialize the data type `int` for all 3 variables
// If we were to add "int" to our multiple data type example above it will give an error:
./prog.go:5:5: cannot use true (type bool) as type int in assignment
./prog.go:5:34: cannot use "Stefan" (type string) as type int in assignment

// this is because you cannot assign values of one data type to another
```

If we were to print the example above in our program it would look like this:
```Go
package main
import "fmt"

var age, name, isAdult = 26, "Stefan", true

func main() {
	fmt.Println(age, name, isAdult)
}
```
Result:
```Go
26 Stefan true
```

---
## Practice

Which of these is not a correct way of initializing variables?

???

* var age, name, isAdult int = 26, "Stefan", true
* var age, year int = 26, 1993
* var age, name, isAdult = 26, "Stefan", true
* var age, year, something int = 1, 4, 7