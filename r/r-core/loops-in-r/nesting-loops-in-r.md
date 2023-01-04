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

# Nesting ifelse Statements

---

## Content

Nesting refers to the practice of placing one control flow statement inside another. This allows you to create more complex programs that can make decisions based on multiple conditions.

In R, you can nest if statements, for loops, and other control flow statements inside each other to create more advanced programs.

Here is an example of how to nest an if statement inside a for loop in R:
```r
for (i in 1:5) {
  if (i %% 2 == 0) {
    print(paste("i is even:", i))
  } else {
    print(paste("i is odd:", i))
  }
}
```






---
## Practice


---
## Revision
