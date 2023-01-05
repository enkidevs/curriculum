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

# Basic Data Types in R

---

## Content

This program generates the Fibonacci sequence up to a given number of terms:
```r
# Read the number of terms from the user
n <- readline("Enter the number of terms: ")
n <- as.numeric(n)

# Initialize the first two terms
a <- 0
b <- 1

# Print the first two terms
print(a)
print(b)

# Loop through the remaining terms
for (i in 3:n) {
  # Calculate the next term
  c <- a + b
  # Print the term
  print(c)
  # Shift the variables
  a <- b
  b <- c
}
```




---
## Practice

Complete the code to finish the program:

```r
calculate_area <- function(length, width) {
  return(length * width)
}

length <- 8
width <- 5

area <- calculate_area(length, width)

print(paste("The area of the rectangle is", area))
```



---
## Revision

What is the basic data type for a vector of categorical variables in R?

???

- `factor`
- `character`
- `numeric`
- `logical`
- `NULL`