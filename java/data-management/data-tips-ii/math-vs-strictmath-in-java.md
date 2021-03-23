---
author: pawel
type: normal
category: feature
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/4232231/whats-the-difference-between-java-lang-math-and-java-lang-strictmath){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `Math` vs `StrictMath` in java


---

## Content

Java offers 2 very similar classes - `java.lang.Math` and `java.lang.StrictMath`.  Unlike some of the numeric methods of class `StrictMath`, all implementations of the equivalent functions of class `Math` are not defined to return the bit-for-bit same results. This allows better-performing implementations where strict reproducibility is not required.

Prefer using `StrictMath` if ensuring portability is essential for your code.


---

## Practice

If portability is intended what java class is more reliable?

???

- `StrictMath` 
- `Math`


---

## Revision

What java class related to mathematics have its function not defined to return the bit-for-bit same results?

???

- `Math` 
- `StrictMath`
