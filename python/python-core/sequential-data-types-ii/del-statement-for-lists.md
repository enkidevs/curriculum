---
author: emmab
type: normal
category: must-know
links:
  - >-
    [The `del`
    statement](https://docs.python.org/3.5/tutorial/datastructures.html#the-del-statement){website}
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

# The del operator for lists


---

## Content

Python has a `del` operator which is useful to delete entire objects. It can also be used to delete items in a `list`.

It differs from the `pop()` method because items won't be returned when removing them.

To delete an item at a given *index*:

```python
a = [0, 1, 2, 3]
del a[0]

print(a)
# [1, 2, 3]
```

It can also be used to delete a range of items within a `list`:

```python
a = [1, 2, 3, 4]
del a[0:2]

print(a)
# [3, 4]
```

Note that even though three elements are specified (*0, 1, 2*), the last one is not deleted. 

We can also use `del` to delete the items inside a `list`, or the whole object itself:

```python
del a[:]

print(a)
# []

del a

print(a)
# NameError: name 'a' is not defined
```


---

## Practice

What’s the output of the following code snippet:

```python
e = [7, 8, 9, 11, 15, 19]
del e[2:4]

print(e)
???
```

- [7, 8, 15, 19]
- [7, 8, 19]
- []
- [7, 11, 15, 19]
- [7, 15, 19]


---

## Revision

Fill in the code snippet so that it will delete the second number in the list:

```python
list = [1, 2, 3, 4, 5]

??? list[???]
```

- del
- 1
- 2
- 3
- remove
