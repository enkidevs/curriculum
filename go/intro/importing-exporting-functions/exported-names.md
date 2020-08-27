---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Exported Names

---
## Content

The difference between **exported** and **imported**:

**Imported** names can only be used in the scope of the project they were defined at.

**Exported** names are defined elsewhere in the package but can be used in any program.

> ❗ **Exported** names always start with a capital letter.

Here is an example of an exported name versus an imported name:

```go
// Imported
import "fmt"

// Exported
fmt.Println()
```

The `Println` is an exported function from the `fmt` package.

If a function starts with a lowercase letter it can only be used within the package it was defined at. 

However, if it starts with an uppercase letter, it can be used by any piece of code that imported the package.

> ❗ It's important to note that if you try to use an exported function with a lowercase starting letter, you will get an error similar to this one:

```go
// Wrongly used Prinln() function

fmt.println()

// Output error

//./prog.go:9:2: cannot refer to unexported name fmt.println
//./prog.go:9:2: undefined: fmt.println
```

---
## Practice

Given the piece of code below, add any missing parts so the output would properly print the result shown in the comment.

```go
package main

???

var x int
var y int

func main() {
  x := 3
  y := 4
  ???(x + y)
}

// Output
// 7
```

- import "fmt"
- fmt.Println
- fmt.println
- FMT.Println
- import "FMT"

---
## Revision

**Exported** names always start with a capital letter?

???

- True
- False