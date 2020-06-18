---
author: Stefan-Stojanovic

aspects:
  - new
  - workout

type: normal

category: how to

---

# Hello World

---
## Content

To create a program in Go, go to your editor of choice, and create a file named `hello.go`, with the following code:

> 💡 A file containing Go code has to have the `.go` extension

> 💡 Every Go program starts from the `main` function within the `main` package

```go
// declare that we're
// in the main package
package main

// tell Go that this program 
// needs functions, or other 
// elements from the package fmt
import "fmt"

// declare the main function
// of our Go program
func main() {
	// run the Printf function
	// from the fmt package
	// which will display text
	// Hello World
	fmt.Printf("Hello World!")
}
```

> 💡 Notice that `Printf` from `fmt` starts with a capital `P`. In Go, if we want to export something from a package, we have to name it with a capital first letter.


After you create your file, navigate to the same directory via terminal, and type this command:

```go
go build hello.go
```

This will create an executable file with the name "hello".

To check if the file is functioning correctly, run it by typing "hello" in the terminal whilst in the same directory. The output should be:
```go
Hello World!
```

**Note:** In case you get an error when executing "hello", it's possible your editor/terminal doesn't have the permission to read the file at its current location. You can bypass this by running ".\hello".

---
## Practice

Fill in the gaps to create a Hello World program.

```go
package ???

??? "fmt"

func main() {
	???.Printf("Hello World!")
}
```

* main
* import
* fmt
* IMPORT