---
author: emmab
type: normal
category: tip
tags:
  - introduction
  - comparison
  - operators
links:
  - >-
    [Chaining Comparison Operators](https://mathspp.com/blog/pydonts/chaining-comparison-operators){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Chain comparison operators


---

## Content

In Python we're able to chain operators. This means that we can use more than one at a time, like this:

```python
x = 10

1 < x < 15
# True
```

Chaining operators is equivalent to:

```python
x = 10

1 < x and x < 15
# True
```

> 🤔 Is it possible to chain separate variables like the following:
*1 < x < 12 and 4 < y < 8*?

---

## Practice

How do you check whether the value of the integer `x` is at least 2 and no more than 10?

???

- `1 < x < 11`
- `2 < x < 10`
- `2 < x < 11`
- `1 < x < 10`


---

## Revision

What will the following expression evaluate to?

```python
a = 9

1 < a < 8

# ???
```

- `False`
- `True`


---

## Quiz

### Do you know how to use chained comparison operators?


How would we use chain comparison operators to express this conditional statement?

```python
if x >= y and x <= y:
    ...
```

- `if y <= x <= z:`
- `if y <= and x <= z:`
- `if (y <= and x <= z):`
- `if y >= x <= z:`
 
