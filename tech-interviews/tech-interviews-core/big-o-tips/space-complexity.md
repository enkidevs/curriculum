---
author: nemanjaenki
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
links:
  - '[Logarithms & Exponents in Complexity Analysis](https://towardsdatascience.com/logarithms-exponents-in-complexity-analysis-b8071979e847){article}'
---

# Space Complexity

---
## Content

Space complexity is affected if your code creates new structures from the input data, such as copying it into another place, temporarily storing it somewhere, etc.

A real-life example would be washing the dishes. If you're putting the clean dishes somewhere else, you're using O(N) space, where N is the number of dishes.

> 💡 If you're using extra space and the amount of used space depends on the size of the input data, you're affecting space complexity. 

---

One of the best ways to make your interview solutions faster is to sacrifice space to store the input data in a way such that it can be retrieved more efficiently.

Imagine that somebody gives you a box of unsorted books, and your goal is to make it easy to find a book by its name. A way to make that task fast is to move and sort them onto a labelled shelf.

> 💡 If you're not sure how to make your solution faster, trade space to gain time!

---
## Practice

Imagine that you're sorting a box of toys by their height. 

You decide to take another empty box and insert toys into it one by one, but maintain the order as you do it.

If T is the number of toys you have, the time complexity of this task is O(TlogT).

What is the space complexity?

???

- O(T)
- O(1)
- O(logT)
- O(T²)

---
## Revision

Imagine that you're sorting a box of toys by their height. 

You decide to take another empty box and insert toys into it one by one, but maintain the order as you do it.

If T is the number of toys you have, the time complexity of this task is O(T).

What is the space complexity?

???

- O(T)
- O(1)
- O(logT)
- O(T²)
