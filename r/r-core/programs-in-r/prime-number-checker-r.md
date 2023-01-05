---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know

---

# Prime Number Checker

---

## Content

```r
# Read the number from the user
n <- readline("Enter a number: ")
n <- as.numeric(n)

# Initialize a flag to track whether the number is prime
is_prime <- TRUE

# Check for divisibility by 2 and 3
if (n %% 2 == 0 || n %% 3 == 0) {
  is_prime <- FALSE
}

# Check for divisibility by the numbers from 5 to sqrt(n)
for (i in 5:floor(sqrt(n))) {
  if (n %% i == 0) {
    is_prime <- FALSE
    break
  }
}

# Print the result
if (is_prime) {
  print("The number is prime.")
} else {
  print("The number is not prime.")
}
```