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
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Another Way to Create Dictionaries

---

## Content

You can create a dictionary in R using the `dictionary()` function from the `purrr` package, or the `dict()` function from the `hash` package. For example:

```r
# Install the purrr and hash packages
install.packages(c("purrr", "hash"))

# Load the purrr and hash packages
library(purrr)
library(hash)

# Create a dictionary using the dictionary() function
my_dict1 <- dictionary(
  a = 1,
  b = 2,
  c = 3
)

# Create a dictionary using the dict() function
my_dict2 <- dict(
  a = 1,
  b = 2,
  c = 3
)
```

You can access the values in a dictionary using their keys, like this:
```r
my_dict1$a  # value for key "a"
my_dict2[["b"]]  # value for key "b"
```

You can add, modify, or remove key-value pairs from a dictionary using assignment operators or the `insert()` function. For example:
```r
# Add a key-value pair
my_dict1$d <- 4

# Modify a value
my_dict2[["c"]] <- 5

# Remove a key-value pair
my_dict2 <- remove(my_dict2, "b")
```

You can also loop over the key-value pairs in a dictionary using the map() function from the purrr package, like this:
```r
map(my_dict1, print)  # prints the key-value pairs in my_dict1
```

---
## Practice

Create a dictionary using the `dictionary()` method from the "purrr" package:

```r
my_dict ??? ???(
  a = 1,
  b = 2,
  c = 3
)
```

- `<-` 
- `dictionary`
- `dictionary(`
- `<--`

---
## Revision

Create a dictionary using the `dict()` method from the "hash":

```r
my_dict ??? ???(
  a = 1,
  b = 2,
  c = 3
)
```

- `<-` 
- `dict`
- `dict(`
- `<--`