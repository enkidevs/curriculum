---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The Printf Function


---

## Content

The `fmt.Printf` function is used for formatting a string and outputting to the console.

This function operates a bit differently than the `Print` and `Println` ones.

Unlike those, `fmt.Printf` uses verbs.

The verbs are inserted within the string and all the operands are added after the comma at the end of the statement.

Here is an example:

```go
package main

import (
  "fmt"
)

func main() {
  var name, age, occupation = "Stefan", 26, "Developer"
  	
  fmt.Printf("Hello, my name is %s. I am %d years old and work as a %s.\n", name, age, occupation)
}
```

The output is:

```plain-text
Hello, my name is Stefan. I am 26 years old and work as a Developer.
```

In the above example, we are using a total of three operands: `name`, `age`, and `occupation`. 

We are also using the same number of verbs. `%s` two times and `%d` once. This is because we have two string values and one base 10 number value.

> 💡 You can repeat the same verb as many times as you want. Just make sure the order of the verbs and the operands at the end of the print is correct.

Unlike the `Println` function, `Printf` does not add a new line character at the end. You would have to add the `\n` character manually.


---

## Practice

The `Printf` function ??? verbs and ??? a new line.

- uses
- doesn't append
- doesn't use
- appends


---

## Revision

Fill in the code to format and print a string in the same function. Add a new line character at the end of the statement.

```go
var name, age = "Joan", 21

fmt.???("My name is ???. I am ??? years old???", ???, ???)
```

- Printf
- %s
- %d
- `\n`
- name
- age
- Sprintf
- %v
- %b
