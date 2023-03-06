---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# Area of a rectangle

---

## Content

In this tutorial, we will write a program in R that calculates the area of a rectangle.

First, we will define a function `calculate_area()` that takes in two arguments: `length` and `width`. The function will return the area of the rectangle, which is calculated by multiplying the `length` and `width`.
```r
calculate_area <- function(length, width) {
  return(length * width)
}
```

Next, we will prompt the user to enter the `length` and `width` of the rectangle using the `readline()` function:
```r
length <- readline("Enter the length of the rectangle: ")
width <- readline("Enter the width of the rectangle: ")
```

Note that the input entered by the user will be stored as a character string, so we need to convert it to a numeric value using the `as.numeric()` function.
```r
length <- as.numeric(length)
width <- as.numeric(width)
```

Finally, we will call the `calculate_area()` function and print the result.
```r
area <- calculate_area(length, width)

print(paste("The area of the rectangle is", area))
```

The complete program would look like this:
```r
calculate_area <- function(length, width) {
  return(length * width)
}

length <- readline("Enter the length of the rectangle: ")
width <- readline("Enter the width of the rectangle: ")

length <- as.numeric(length)
width <- as.numeric(width)

area <- calculate_area(length, width)

print(paste("The area of the rectangle is", area))
```