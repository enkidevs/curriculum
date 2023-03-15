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

# delete the item at index 0
del a[0]

print(a)
# [1, 2, 3]
```

It can also be used to delete a range of items within a `list`:

```python
a = [1, 2, 3, 4]

# delete items from index 0 to index 1
del a[0:2]

print(a)
# [3, 4]
```

Note that `[0:2]` does not include the item at index `2`.

We can also use `del` to delete all of the items inside a `list` or the whole object itself:

```python
# delete all the items
del a[:]

print(a)
# []

# delete the entire list
del a

print(a)
# NameError: name 'a' is not defined
```

> 🤔 Can you think of any reason we might use pop() instead of del?
>
> Leave a comment or view some of the other comments for inspiration before moving on.

---

## Practice

What’s the output of the following code snippet:

```python
e = [7, 8, 9, 11, 15, 19]
del e[2:4]

print(e)
???
```

- `[7, 8, 15, 19]`
- `[7, 8, 19]`
- `[]`
- `[7, 11, 15, 19]`
- `[7, 15, 19]`


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
