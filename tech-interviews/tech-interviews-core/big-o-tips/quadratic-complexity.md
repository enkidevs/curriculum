---
author: Stefan-Stojanovic
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

# Recognizing Quadratic Complexity

---
## Content

Imagine that you have a list of cities and you want to find all mentions of each city in a pile of magazines.

The complexity of this is quadratic, but it's not O(N²). It's O(C * M) where C is the number of cities and M is the number of magazines.

Although sometimes you can't do better than it, quadratic performance is considered slow.

> 💡 If a piece of code is processing one thing for every item of another thing, it most likely has quadratic complexity.

---
## Practice

O(N²) is usually the most efficient solution for most interview problems.

???

- False
- True


---
## Revision

What's the complexity of this program:

For every item in list A, find all items in list B that are equal to it.

???

- O(A * B)
- O(A + B)
- O(AlogA)
- O(ABlogAB)