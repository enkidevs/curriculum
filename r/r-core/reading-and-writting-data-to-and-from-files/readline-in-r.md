---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# The readline Function

---

## Content

The `readline` function is a useful function in **R** that allows you to read a line of text from the console, or from a file. This can be useful for creating interactive programs that allow the user to enter input, or for reading data from a file.

Here is the basic syntax of the `readline` function:
```r
readline(prompt = "")
```

- `prompt` is an optional argument that specifies the prompt to display to the user.


Here is an example of how to use the `readline` function to read a line of text from the console:
```r
name <- readline("Enter your name: ")
print(paste("Hello, ", name))

# Hello Stefan
```

In this example, we use the `readline` function to read a line of text from the console, and store it in the variable `name`. We then print a greeting using the `paste` function, which concatenates the string `"Hello, "` with the value of the `name` variable.

---
## Practice




---
## Revision

