---
author: emmab
tags:
  - introduction
  - discussion
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The not operator


---

## Content

Python's `not` operator returns the opposite of the given condition; we can use it to check if a string is `not in` a sentence or to check for fairly specific conditions.

For example:

```python
not True
# False
```

```python
x = 5
y = 10

not (x < y)
# False
```

We use this approach in our daily lives a lot!

When we make grocery lists, we don't usually go through everything in the fridge. Instead, we check each item straight away. Like this: If milk is `not` there, buy milk!

> 🤔 Can you think of a real-life example where you use the not approach to save your time?
>
> Leave a comment or view some of the other comments for inspiration before moving on.

---

## Practice

Complete this expression to check that the variable `word` does not appear in `sentence`:

```python
word = 'list'
sentence = 'we know about numbers, strings and booleans'

??? word ??? in sentence:
  print("Let's learn some more data types!")
```

- `if`
- `not`
- `is`
- `elif`
- `else`


---

## Revision

What does the following code snippet return:

```python
True == (not True)

# ???
```


- `False`
- `True`
- `Error`
- `false`
 