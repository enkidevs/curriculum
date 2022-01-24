---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Ranges


---

## Content

We can use Python's `range()` function to generate a `list` that contains the *specified items of the range.*

The syntax looks like this:

```python
range(10)
# range(0, 10)

list(range(10))
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

If we want to specify where the range should start then we can add another argument:

```python
range(1, 10)
# range(1, 10)

list(range(1, 10))
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

The first argument here is where the range starts, and the second argument is where it ends. This second argument is *not inclusive*.

> Notice how the range function doesn't automatically generate the `list`. When using Python 3 we must always pass our range to the `list` method first.

If we add a third argument into our `range()` function then we can add steps, which specify the incrementation:

```python
list(range(1, 10, 2))
# [1, 3, 5, 7, 9]

list(range(1, 10, 3))
# [1, 4, 7]
```


---

## Practice

Complete the following to return `teenagers`:

```python
teenagers = list(???)

print(teenagers)
# [13, 14, 15, 16, 17, 18, 19]
```

- `range(13, 20)`
- `range(13, 19)`
- `range(12, 20)`
- `range(12, 19)`


---

## Revision

Complete the following to return `opening_hours`:

```python
opening_hours = list(???)

print(opening_hours)
# [9, 10, 11, 12, 13, 14, 15, 16, 17]
```

- `range(9, 18)`
- `range(9, 17)`
- `range(8, 17)`
- `range(8, 18)`
