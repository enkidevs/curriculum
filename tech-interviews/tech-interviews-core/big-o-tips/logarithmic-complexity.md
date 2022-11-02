---
author: nemanjaenki
category: tip
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Recognizing Logarithmic Complexity

---
## Content

Imagine that you're sorting all employees of a company by height. 

For each employee, you have to find their place in line by starting from the middle and going left or right over and over until you find the right spot.

The complexity of this is logarithmic, but it's not O(logN). It's O(NlogN), because, for every employee (of which there're N), we're dividing the line in 2 over and over.

Logarithimic solutions are typically most efficient answers for interview problems.

> 💡 If a piece of code divides your input over and over, it most likely has logarithmic complexity.

---
## Practice

An indicator of logarithmic complexity is if a program ??? the input on every step.

- splits
- traverses
- multiplies
- truncates

---
## Revision

Fastest sorting algorithms are ???

- O(NlogN)
- O(N)
- O(logN)
- O(1)