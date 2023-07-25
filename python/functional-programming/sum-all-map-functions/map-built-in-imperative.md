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
Imperative programming, as opposed to declarative programming (of which functional programming is a subtype), is the programming paradigm where statements are used to change a program's state. Imperative style requires certain mechanisms such as direct data modification (mutability) and looping statements. These mechanisms sometimes detrimentally affect readability and efficiency.

An easy rule of thumb is that imperative programming specifies **how** (what steps are taken during execution) a program should operate. This is in contrast to declarative languages which focus on **what** is to be computed instead.
