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
  context: standalone
---

# Switch


---

## Content

Switch statements are similar to `if-else` statements in **Go**. 

They start with the keyword `switch` followed by a short-hand notation declaration of a value, the condition, and curly braces.

> 💡 You can omit either the **declaration** or the **condition**, but not both.

Inside the curly braces are the cases. Each case is defined with the keyword `case` followed by an `identifier`, `:`, and some code after.

Unlike other languages, the `break` statements that go after every case are automatically provided, you don't need to write them. The `default` case is required.

If none of the cases work, the switch will use the `default` case.

Here is a switch statement without a condition:

```go
import (
  "fmt"
)
func main() {
  switch x:= 0; {
  case x > 0:
    fmt.Println(x, " is positive.")
  case x < 0:
    fmt.Println(x, " is negative.")
  default: 
    fmt.Print(x, " is neither positive nor negative")
  }
}

// 0 is neither positive nor negative
```


---

## Practice

Finish the code to make the statement work.

```go
func main() {

  ??? x:= 0; {
  ??? x > 0:
    fmt.Print(x, " is positive.")
  ??? x < 0:
    fmt.Print(x, " is negative.")
  ???: 
    fmt.Print(x, " is neither positive nor negative")
  }
}
```

- switch
- case
- case
- default
- original
- if
- for


---

## Revision

In a `switch` statement, you can omit ???.

- either the condition or the declaration but not both
- both the condition and the declaration
