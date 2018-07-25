---
author: mihaiberq

levels:

  - beginner

type: normal
aspects:
  - introduction
  - workout
  - deep
category: how to

standards:
  python.native-types-operations.5: 10

---

# Mixing sets and frozensets

---
## Content

To perform *in-place set operations*[1], you can stick the `_update` keyword to the end of the set-specific methods call:
```python
x = set('abc')
y = set('cbd')
x.difference_update(y)
print(x)
# {'a'}
y.update(x)
print(y)
# {'b', 'c', 'a', 'd'}
y.intersection_update(x)
print(y)
# {'a'}
```
Notice that there's no `union_update()`, as the `update()` method already has the functionality of an in-place union. The above methods won't be available for *frozensets* since they are immutable.

Moreover, set operations performed through methods, not operators (`^`, `|` etc.), accept any iterable as argument:
```python
x = set('abc')
print(x.union('bd'))
# {'b', 'c', 'd', 'a'}
print(x.difference(['a', 13]))
# {'b', 'c'}
print(x | 'bd')
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# TypeError: unsupported operand type(s)
#  for |: 'set' and 'str'
```
Unless you perform in-place operations, the same applies for *frozensets*.

Also, binary operations that mix sets and frozensets will return the type of the first operand:
```python
x = set('abc')
y = frozenset('cbd')
s = x | y
s.clear()
print(s)
# {}
fs = y | x
fs.clear()
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# AttributeError: 'frozenset' object
#  has no attribute 'clear'
```

---
## Practice

Which of the following operations would raise errors?
```python
x = set('Kba')
y = frozenset('bSs')
x.union_update(y) # 1
y | [1, 3] # 2
y <= x # 3
x.difference([1, 3]) # 4
```
???


* 1, 2
* all of them
* 2, 3, 4
* 2, 4
* 1, 2, 3

---
## Revision

What's the output of the following snippet?
```python
a = {1, 2, 3}
b = frozenset([3, 4])
c = b.difference(a)
print(c.pop())
# ???
```

* AttributeError: is immutable
* 4
* either 1 or 2
* 3
* TypeError: c has no elements

---
## Footnotes
[1: In-place operations]
Instead of returning a new set containing the result with both operands remaining the same, *in-place operations* assign to the left hand operand the value of the result.
