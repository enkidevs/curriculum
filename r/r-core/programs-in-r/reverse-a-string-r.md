---
author: Stefan-Stojanovic
type: normal
category: must-know

---

# Reverse A String

---

## Content

This program takes a string as input and returns the reversed string.

```r
# function to reverse a string
reverse_string <- function(string) {
  # initialize result to an empty string
  result <- ""
  
  # loop through the string in reverse order
  for (i in seq_along(string)[length(string):1]) {
    # append the character at index i to result
    result <- paste(result, substr(string, i, i), sep="")
  }
  
  # return result
  return(result)
}

# test the function with different strings
print(reverse_string("Hello"))    # "olleH"
print(reverse_string("abcdefg"))  # "gfedcba"
print(reverse_string(""))         # ""
```