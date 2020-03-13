---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# Hello World

---
## Content

To create a program in `GO`, go to your editor of choice, and create a file named "hello.go"

Inside it, you need to write "package main" at the first line of the file. Next, you need to import the `fmt` package which contains the print function.
Last but not least, you have to write this function:

```go
func main() {
	fmt.Printf("Hello World!")
}
```

In the end your file will look like this:
```go
package main

import "fmt"

func main() {
	fmt.Printf("Hello World!")
}
```

After you create your file, navigate to the same directory via terminal and execute this command:
```go
go build hello.go
```
This will create an executable file with the name "hello".

To check if the file is functioning correctly, run it by typing "hello" in the terminal whilst in the same directory. The output should be:
```go
Hello World!
```

**Note:** In case you get an error when executing "hello", it is possible your editor/terminal doesn't have the permission to read the file at its current location. You can bypass this by running ".\hello".

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