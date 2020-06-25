---
author: catalin

levels:

  - advanced

type: normal

category: feature
aspects:
  - introduction
  - workout
  - deep
standards:
  python.native-types-operations.5: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#set-types-set-frozenset){website}'

parent: working-with-set-s


---

# `set` operations

---
## Content

Apart from set operations such as union and intersection, Python's `set` has other useful operations:

Add an element to a `set` (note: sets only accept **immutable** elements):
```python
>>> enki = set("Enk")
>>> enki.add('i')
>>> enki
{'n', 'E', 'k', 'i'}

```
Clear a `set`:
```python
>>> enki.clear()
>>> enki
set()
```
Create a **shallow copy** of a set:
```python
>>> enki = set("Enki")
>>> enki_backup = enki.copy()
>>> enki_backup
{'E', 'i', 'k', 'n'}
```

You can **remove** and **return** a random element from the `set`:
```python
>>> enki.pop()
'E'
```

To remove from your `set` all elements from another set (`x = x - y`):
```python
>>> s = set("12")
>>> s2 = set ("23")
>>> s.difference_update(s2)
>>> s
{'1'}
```
To remove a specific element from the set, either `discard(element)` or `remove(element)` can be used, the only difference being that the former won't raise an error if the element is not found.

---
## Practice

Create a shallow copy of the set:

```
pq = ???("Practice")
practice_shallow = pq.???()
```

* `set`
* `copy`
* `shallow`
* `shallow_copy`
* `shallow-copy`
* `new_set`

---
## Revision

Instantiate a set, add an element to it, then clear it:

```
enki = ???("Enk")
enki.???('i')
enki.???()
```


* `set`
* `add`
* `clear`
* `new`
* `element`
* `empty`
* `delete`
* `list`
