---
author: catalin

levels:
  - basic
  - advanced
  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/functions.html){website}'


---

# Built-in `list` methods

---
## Content

These are some common built-in list methods. Consider the following lists:
```py
list_a = [1, 2, 3, 4, 5]
```

To extend one list with the contents of another list:
```python
list_b = [6, 7]

list_a.extend(list_b)
print(list_a)
# [1, 2, 3, 4, 5, 6, 7]
```

Reverse the items in a *list*:
```python
list_a.reverse()

print(list_a)
# [7, 6, 5, 4, 3, 2, 1]
```

Remove a *specific item*:
```python
item = 7
list_a.remove(item)
# will remove only the first
# occurrence of the `item`

print(list_a)
# [6, 5, 4, 3, 2, 1]
```

Remove and return an element at a given *index* (if no `index` is specified, it will remove and return the last item in the *list*):
```python
index = 3
list_a.pop(index)
# Output: 3

print(list_a)
# [6, 5, 4, 2, 1]

list_a.pop()
# Output: 1
print(list_a)
# [6, 5, 4, 2]
```

Return a new sorted *list*:
```python
list_a.sort(key=None, reverse=False)
print(list_a)
# [2, 4, 5, 6]
```

`key` specifies a function of one argument that is used to extract a *comparison key* (e.g.`key=str.lower`). If no key is specified, elements will be compared directly.

If `reverse` is set to `True`, list elements are sorted as each comparison were reversed.

Insert an element at a given *index*:
```python
index = 2
item = 6
list_a.insert(index, item)

print(list_a)
# [2, 4, 6, 5, 6]
```

Get the number of occurrences of an *item*:
```python
item = 6
list_a.count(item)
# Output: 2
```

---
## Practice

Complete the code snippet to return a new sorted list of `ex_list`:

```python
ex_list.??? (???=None,\
    reverse=False)
```

* `sort`
* `key`
* `order`
* `priority`
* `change`
* `remove`

---
## Revision

Extend `pos` list with the `neg` list:

```python
pos = [1,2,3,4]
neg = [-1,-2,-3,-4]

???.???(???)
```

* pos
* extend
* neg
* concatenate
* append
