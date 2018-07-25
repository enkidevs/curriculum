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
standards:
  python.native-types-operations.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/functions.html){website}'


---

# Built-in `list` methods

---
## Content

These are some common built-in list methods.

To extend one list with the contents of another list:
```python
list_a.extend(list_b)
```
Reverse the items in a *list*:
```python
list_a.reverse()
```
Remove a *specific item*:
```python
list_a.remove(item)
# will remove only the first
# occurrence of the `item`
```
Remove and return an element at a given *index* (if no `index` is specified, it will remove and return the last item in the *list*):
```python
list_a.pop([index])
```

Return a new sorted *list*:
```python
list_a.sort(key=None,reverse=False)
```
`key` specifies a function of one argument that is used to extract a *comparison key* (e.g.`key=str.lower`). If no key is specified, elements will be compared directly.

If `reverse` is set to `True`, list elements are sorted as each comparison were reversed.

Insert an element at a given *index*:
```python
list_a.insert(index, item)
```

Get the number of occurrences of an *item*:
```python
list_a.count(item)
```

---
## Practice

Complete the code snippet to return a new sorted list of `ex_list`:

```python
ex_list.??? (???=None,\
    reverse=False)
```

* `sorted`
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
