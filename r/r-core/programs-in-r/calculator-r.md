---
author: Stefan-Stojanovic
type: normal
category: must-know

---

# Calculator Functions

---

## Content

Creating a calculator program in R requires only a few lines of code. This tutorial will show you how to create a basic calculator program that can perform addition, subtraction, multiplication, and division.

To create the calculator, we will do the following:

1. Define a function that takes two numbers as arguments and returns the result of the desired calculation.

2. Define similar functions for the other calculations that you want to support (e.g. subtraction, multiplication, division).

3. Use the readline function to read user input from the command line. This function reads a line of text from the standard input stream, and returns it as a character string.

4. Use the as.numeric function to convert the user input from a character string to a numeric value.

5. Use an if statement or a switch statement to determine which calculation to perform based on the user's input.

6. Call the appropriate function to perform the calculation, and print the result to the command line using the print function.

Here is an example of a complete calculator program in R:
```r
# Define the calculator functions
add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}

# Read the user input
input <- readline("Enter an operation (+, -, *, /) and two numbers: ")

# Split the input into tokens
tokens <- strsplit(input, " ")[[1]]

# Extract the operation and the numbers
operation <- tokens[1]
x <- as.numeric(tokens[2])
y <- as.numeric(tokens[3])

# Perform the calculation and print the result
if (operation == "+") {
  result <- add(x, y)
} else if (operation == "-") {
  result <- subtract(x, y)
} else if (operation == "*") {
  result <- multiply(x, y)
} else if (operation == "/") {
  result <- divide(x, y)
} else {
  print("Invalid operation")
}

if (!is.na(result)) {
  print(paste(x, operation, y, "=", result))
}
```

This code defines functions for addition, subtraction, multiplication, and division, reads user input from the command line, extracts the operation and numbers from the input, performs the appropriate calculation based on the operation, and prints the result to the command line.

If our `input` was:
```r
input <- "+ 3 4"
```
the output would look like this:
```plain-text
[1] "3 + 4 = 7"
```