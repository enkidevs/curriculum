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

# paste Function

---

## Content

The `paste` function in **R** is a versatile tool that allows you to combine or concatenate strings, variables, and other objects. In this insight, we will take a look at some examples of how to use the `paste` function in **R**.

The most basic usage of the paste function is to combine two or more strings into a single string. Here is an example:
```r
paste("Hello", "world!")  # "Hello world!"
```

You can also specify a separator to use between the strings:
```r
paste("Hello", "world!", sep = " ")  # "Hello world!"
paste("Hello", "world!", sep = "-")  # "Hello-world!"
```

The paste function can also combine variables, such as numbers or vectors:
```r
x <- 10
y <- 20
paste("The sum of x and y is", x + y)  # "The sum of x and y is 30"

z <- c("red", "green", "blue")
paste("The colors are", z)  # "The colors are red green blue"
```



---
## Practice

Fill in the gap to combine the strings `"Hello"` and `"world!"` into a single string:

```r
paste(???, ???)  # "Hello world!"
```

- `"Hello"`
- `"world!"`
- `"Hello!", "world"`
- `"Hi", "world!"`



---
## Revision


Which of the following lines of code will combine the strings `"Hello"` and `"world!"` into a single string, separated by a space?


```r
???
```


- `paste("Hello", "world!", sep = " ")`
- `paste("Hello", "world!", sep = "-")`
- `paste("Hello", "world!", sep = ",")`
- `paste("Hello", "world!", sep = ":")`


