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
Imperative code specifies each step towards computing a result.

Declarative code specifies the result but not each individual step.
