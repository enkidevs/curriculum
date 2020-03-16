---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction
  - new

type: normal

category: must-know

links:

---

# Packages

---
## Content

The `GO` language is made up of packages. In fact, every program made in `GO` is made up of packages.

All programs in `GO` start in package `main`.

There are 2 ways to import a package into your program:
```Go
// Multi-statement import
import "fmt"
import "math"
import "zip"
import "json"

//Factored import statement
import (
  "fmt"
  "math"
  "zip"
  "json"
)
```

Both ways work the same, however, it is good practice to use the `Factored` way.

There are a lot of packages in GO which you can view [here](https://golang.org/pkg)
Some widely used packages are the `fmt` and `math` package.

The `fmt` package is used to implement already formatted I/O functions like print, println and more.

The `math` package is used to provide mathematical functions like Floor, Sin, Sqrt, Log and more.

---
## Practice

Which of these is the "Good practice" way of importing packages in `GO`?

```GO
// Multi-statement import
import "fmt"
import "math"
import "zip"
import "json"

//Factored import statement
import (
  "fmt"
  "math"
  "zip"
  "json"
)

```

???

* Factored import statement.
* Multi-statement import.
