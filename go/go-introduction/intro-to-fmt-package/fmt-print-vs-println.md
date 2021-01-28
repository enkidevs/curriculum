---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Print vs Println


---

## Content

The `fmt.Print` and `fmt.Println` are the standard printing functions.

The `fmt.Print` function prints a string to the console. If neither operands is a string, space is added between operands.

Compared to `Print`, `Println` will also add a space after **every** operand and append a new line.

Here is an example of both functions printing the exact same string with three different operands:

```go
package main

import (
  "fmt"
)

func main() {
  var name, age, occupation = "Stefan", 26, "Developer"
  
  fmt.Println("Hello, my name is ", name, ". I am ", age, " years old and work as a ", occupation)

  fmt.Print("Hello, my name is ", name, ". I am ", age, " years old and work as a ", occupation)
	
}
```

The output is:

```plain-text
Hello, my name is  Stefan . I am  26  years old and work as a  Developer
Hello, my name is Stefan. I am 26 years old and work as a Developer
```

When using `fmt.Println`, we don't have to add a space after every operand (name, age, occupation), and we get a new line at the end of the statement.

If we were to use `fmt.Print` before `fmt.Println` the output would be on the same line:

```go
func main() {
  var name, age, occupation = "Stefan", 26, "Developer"
	
  fmt.Print("Hello, my name is ", name, ". I am ", age, " years old and work as a ", occupation)
	
  fmt.Println("Hello, my name is ", name, ". I am ", age, " years old and work as a ", occupation)
}

// Hello, my name is Stefan. I am 26 years old and work as a DeveloperHello, my name is  Stefan . I am  26  years old and work as a  Developer 
```

To avoid this, we would have to use a new line character (`\n`) at the end of the `fmt.Print` statement:

```go
fmt.Print("Hello, my name is ", name, ". I am ", age, " years old and work as a ", occupation,"\n")
```

This will create an output on two separate lines.


---

## Practice

Which of these print statements adds a space after **every** operand?

???

- Println
- Print


---

## Revision

The ??? function adds a space after every operand, appends a new line, and outputs to the console.

The ??? only prints to the console.

- Println
- Print
