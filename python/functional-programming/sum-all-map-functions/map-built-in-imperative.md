---
author: stefkn
type: normal
category: must-know
---

# The map Function


---

## Content

Let's say we have a list of point scores in a game, and we want to add 2 to every score. In the imperative programming style, we would do something like this:

```python
scores = [1, 0, 4, 5]
for i in range(0, len(scores)):
  scores[i] = scores[i] + 2
```

But what if we want to apply this transformation to another list?

How can we keep track of whether the transformation has been applied or not?

These issues can make imperative programming[1] hard to work with.



---

## Footnotes


[1:Imperative Programming]

Imperative and Declarative programming are two paradigms for how people write code.

An easy rule of thumb is that imperative programming specifies **how** (what steps are taken during execution) a program should operate. This is in contrast to declarative languages which focus on **what** is to be computed instead.