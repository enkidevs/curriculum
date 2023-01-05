---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know

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