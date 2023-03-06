---
author: Stefan-Stojanovic
type: normal
category: must-know
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

# as.numeric Function

---

## Content

The `as.numeric` function is a useful function that converts an object to a numeric data type.

You can use the `readline` function in combination with the `as.numeric` function to read a number from the console, or from a file. Here is an example of how to do this:
```r
x <- readline("Enter a number: ")
x <- as.numeric(x)
print(x + 1)
```

In this example, we use the `readline` function to read a line of text from the console, and store it in the `x` variable. We then use the `as.numeric` function to convert the `x` variable to a numeric data type. Finally, we print the value of `x + 1`.

If the user enters the number `5`, the program will print `6`.


---
## Practice

Fill in the gap to read a line of text from the console then convert it into a number and store it inside the same variable:

```r
x <- readline("Enter a number: ")
??? <-???(x)
print(x * x)
```

- `x`
- ` as.numeric`
- `y`
- `toNumber`
- `convert`

---
## Revision

Which of the following lines of code will read a line of text from the console, store it in the `y` variable, then convert it to a number?

A)
```r
y <- readline("Enter a number: ")
y <- toNumber(y)
```

B)
```r
y <- readline("Enter a number: ")
y <- as.number(y)
```

C)
```r
y <- readline("Enter a number: ")
y <- as.numeric(y)
```

D)
```r
y <- writeline("Enter a number: ")
y <- as.numeric(y)
```

???

- `C)`
- `A)`
- `B)`
- `D)`