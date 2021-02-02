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

# The Sprintf Function


---

## Content

The `fmt.Sprintf` function operates similarly to the `Printf` function except that after it formats the string it doesn't print it to the console.

You can use this function to save a formatted string into a variable which you can print later on.

For instance, you can use the `Sprintf` to differently format the same string and output it in the same print statement.

```go
package main

import (
  "fmt"
)

func main() {
  var name, age = "Stefan", 26

  s := fmt.Sprintf("My age in Base 2: %b.\n", age)

  s2 := fmt.Sprintf("My age in Base 8: %o.\n", age)

  s3 := fmt.Sprintf("My age in Base 10: %d.\n", age)

  s4 := fmt.Sprintf("My age in Base 16: %x.\n", age)


  fmt.Print("Hello, my name is ", name,". This is my age in different bases:\n", s, s2, s3, s4)
}
```

The output is:

```go
Hello, my name is Stefan. This is my age in different bases:
My age in Base 2: 11010.
My age in Base 8: 32.
My age in Base 10: 26.
My age in Base 16: 1a.
```

In the above example, we use the `Sprintf` function multiple times with four different integer verbs. 

We save each of the functions in variables `s-s4`.

Next, we print all of them in a regular `Print` statement.


---

## Practice

The `fmt.Sprintf` function formats to a string ???.

- but does not print to the console
- and prints to the console


---

## Revision

Fill in the code to format a string and save it into the `s` variable.

Use the print statement that formats the string but doesn't print to the console.

Then print the variable.

```go
var name = "Michael"

??? := fmt.???("My name is ???.\n", name)

fmt.Print(???)
}
```

- s
- Sprintf
- %s
- s
- name
- %v
- Printf
