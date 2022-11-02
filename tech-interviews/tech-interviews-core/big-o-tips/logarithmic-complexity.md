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

They are all standing in a crowd and you start taking them one by one and moving them across the park into a sorted line.

How would you generalize that process? The fastest solution is the following:

For each unsorted employee, you compare their height to the employee in the middle of the sorted line, then go into the left part of the line if their height is smaller or into the right part of the line if their height is equal or larger than the middle employee's height.

You repeat the process again by comparing to the middle of the left or right subgroup.

With each step, you go left or right, dividing the N employees: N, N / 2, N /4 ...

And you do this N times (i.e. for each employee).

The complexity thus is O(NlogN),because, for every employee (of which there're N), we're dividing the line over and over.

Logarithmic solutions are typically the most efficient answers for interview problems.

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