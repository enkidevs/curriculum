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

# Nesting Loops 

---

## Content

It is possible to nest loops in **R**, which means placing one loop inside another. This can be useful for performing tasks that require multiple levels of iteration.

Here is an example of one:
```r
# Initialize variables
i <- 1
j <- 1

# Outer loop
for (i in 1:3) {
  
  # Inner loop
  for (j in 1:3) {
    
    # Print the current values of i and j
    print(paste("i =", i, "j =", j))
  }
}

# Output:
# i = 1 j = 1
# i = 1 j = 2
# i = 1 j = 3
# i = 2 j = 1
# i = 2 j = 2
# i = 2 j = 3
# i = 3 j = 1
# i = 3 j = 2
# i = 3 j = 3
```

In this example, we have an outer loop that iterates over the values `1` to `3`, and an inner loop that also iterates over the values `1` to `3`. The inner loop is executed `3` times for each iteration of the outer loop, resulting in a total of `9` iterations.

We can also use `if` statements to control the flow of a loop. Here is an example of a nested loop that only prints the values of `i` and `j` when `i` is greater than `j`:
```r
# Outer loop
for (i in 1:3) {
  
  # Inner loop
  for (j in 1:3) {
    
    # Only print the current values of i and j if i > j
    if (i > j) {
      print(paste("i =", i, "j =", j))
    }
  }
}

# Output:
# i = 2 j = 1
# i = 3 j = 1
# i = 3 j = 2
```


---
## Practice

Finish the code for the output to be correct.

```r
for (??? in 1:2) {
  
  # Inner loop
  for (j in 1:???) {
    
    # Print the current values of i and j
    print(paste("i =", i, "j =", j))
  }
}

# "i = 1 j = 1"
# "i = 1 j = 2"
# "i = 2 j = 1"
# "i = 2 j = 2"
```

- `i`
- `2`
- `j`
- `3`

---
## Revision

Finish the code for the output to be correct.

```r
for (??? in 1:2) {
  
  # Inner loop
  for (j in 1:???) {
    
    # Print the current values of i and j
    ???(paste("i =", i, "j =", j))
  }
}

# "i = 1 j = 1"
# "i = 1 j = 2"
# "i = 2 j = 1"
# "i = 2 j = 2"
```

- `i`
- `2`
- `print`
- `output`
- `j`
- `3`