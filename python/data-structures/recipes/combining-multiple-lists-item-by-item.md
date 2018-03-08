---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip



{}

---
## Content
# Combining multiple lists, item by item

The built-in `zip` function can be used to zip lists together.

`zip` returns a list of tuples, where the _nth_ tuple contains the _nth_ item from each of the lists passed into the function.

```python
letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
squares = [1, 4, 9]
zipped_list = zip(letters, numbers, squares)
# zipped_list contains
# [('a', 1, 1), ('b', 2, 4), ('c', 3, 9)]
```
It is possible to also use this as the iterator of a `for` loop, pulling out all three values at once. 
```python
for letter, number, squares in zipped_list
```

---
## Revision

How would we get the `tuple` array from putting the `letters` and `values` arrays together?

```
letters = ['a', 'b', 'c']
values = [1, 2, 3]
tuple = ???(letters, values)
# so that we get
tuple = [('a', 1), ('b', 2), ('c', 3)]
```


* `zip`
* `button`
* `combine`

