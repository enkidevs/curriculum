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

They are all standing in a crowd and you start moving them across the park into a sorted line.

For each employee, you compare their height with the height of the employee in the middle of the sorted line, then go left if their height is smaller or right if their height is equal or larger.

You repeat the process again by comparing to the middle of the left or right subgroup.

With each step, you go left or right, dividing the N employees: N, N / 2, N /4 ...

And you do this N times (i.e. for each employee).

The complexity thus is O(NlogN),because, for every employee (of which there're N), we're dividing the line over and over.

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

The fastest sorting algorithms are ???

- O(NlogN)
- O(N)
- O(logN)
- O(1)
