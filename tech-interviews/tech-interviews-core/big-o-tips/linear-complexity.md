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

---

# Recognizing Linear Complexity

---
## Content

Imagine you're part of the soccer and chess clubs and going through the school, high-fiving your teammates.

The complexity of this is linear, but it's not O(N).

It's O(S + C), where S is the number of soccer teammates and C is the number of chess teammates.

Linear solutions are decently fast for interview problems.

> 💡 If a piece of code is doing one thing after another, it most likely has linear complexity.


---
## Practice

When dealing with a lot of data, O(N) is more efficient than O(N²).

???

- True
- False

---
## Revision

What's the complexity of this program:

Increment all items in list A. Then increment all items in list B.

???

- O(A + B)
- O(A * B)
- O(A)
- O(B)