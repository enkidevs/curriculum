---
author: catalin

levels:

  - basic

type: normal

category: must-know

standards:
  python.native-types-operations.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#the-del-statement){website}'


---

# `del` statement for lists

---

## Content

Python's `del` statement has multiple usages when used on `lists`.
It differs from the `pop()` method because when using `del`, the element won't be returned when removing it.

Delete the _element_ at a given _index_:

```python
>>> a = [ 0, 1, 2, 3 ]
>>> del a[0]
>>> a
[ 1, 2, 3 ]
```

Delete a _slice_ of the _list_:

```python
>>> a = [ 1, 2, 3, 4 ]
>>> del a[0:2]
>>> a
[ 3, 4 ]
```

Note that even though three elements are specified (_0,1,2_), the last one is not deleted. Consider this example, in which nothing happens:

```python
>>> a = [ 1, 2, 3, 4 ]
>>> del a[0:0]
>>> a
[ 1, 2, 3, 4 ]
```

To delete the entire _list_:

```python
>>> del a[:]
>>> a
[]
```

---

## Practice

What’s the output of the following code snippet:

```python
>>> e = [7, 8, 9, 11, 15, 19]
>>> del e[2:4]
>>> e

???
```

- [7, 8, 15, 19]
- [7, 8, 19]
- []
- [7, 11, 15, 19]
- [7, 15, 19]

---

## Revision

Fill in the code snippet such that it will delete the second number in the list:

```python
list = [1,2,3,4,5]

??? list[???]
```

- del
- 1
- 2
- 3
- remove
