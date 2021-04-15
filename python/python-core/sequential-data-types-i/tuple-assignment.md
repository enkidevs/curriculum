---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Tuple
    Assignment](https://runestone.academy/runestone/books/published/thinkcspy/Lists/TupleAssignment.html){website}
  - >-
    [Multiple
    Assignment](https://treyhunner.com/2018/03/tuple-unpacking-improves-python-code-readability/#Multiple_assignment_is_very_strict){website}
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

# Tuple assignment


---

## Content

We can use **tuple assignment**[1] as a simple way to switch two variables:

```python
a, b = 'hard', 'working' 
a, b = b, a

print(a, b)
# working hard
```

Tuple assignment also means that items within two tuples can be assigned to each other:

```python
flash = ('Barry', 'Allen' , 27)
(first_name, last_name, age) = flash

print(first_name)
# Barry

print(age)
# 27
```

In case two tuples don't match in length we can use the `*` operator to ensure that every item is reassigned to another:

```python
a, *b, c = (1, 2, 3, 4, 5)

print(b)
# [2, 3, 4]
```

In this example, the middle items `2, 3, 4` are assigned to `b` in the form of a `list`. We'll learn all about `list` data types in the next workout!


---

## Practice

Complete the following snippet so that the variables are swapped using tuple assignment:

```python
d, e = 3, 4
d, e = ???, ???
print(d, e)

# 4 3
```

- `e`
- `d`
- `swap`
- `switch`
- `a`


---

## Revision

What is the output of the following snippet?

```python
x, y = 5, 4
x, y = y, x
print(x, y)

# ??? ???
```

- `4`
- `5`
- `error`
- `error`


---

## Footnotes

[1:Tuple Assignment]
This is where we can assign multiple sequential values to other values in one line.
