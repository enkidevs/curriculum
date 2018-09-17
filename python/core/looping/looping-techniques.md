---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern
aspects:
  - introduction


links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#looping-techniques){website}'

notes: >
  Typo in title - fixed.


  This uses sets where not needed, unless want to reducing the list to unique
  values.


  Error: reverse() is used, there is no such

  function (though there is a list method of that name, but it does not work in
  this context)


  The "reversed()" function (note extra "d" at end of name) should be used
  instead of "reverse()". Fixed.

standards:
  python.native-types-operations.3: 10
  python.use-iteration-protocol.0: 10

---

# Looping techniques

---
## Content

Python has multiple techniques for looping over data structures.

**Dictionary** looping with both `key` and `value` can be done using the `items()` method:
```python
my_dict = {'first': 'a', 'second': 'b'}
for k, v in my_dict.items():
    print(k, v)
#first a
#second b
```
The `enumerate()` function allows looping with both `index` and `value` through any **sequence**:
```python
my_list = ['a', 'b']
for i, v in enumerate(my_list):
    print(i, v)
# 0 a
# 1 b
```
`zip()` function can be used to pair two or more **sequences** in order to loop over both of them in parallell:
```python
first_list = ['a', 'b']
second_list = ['one', 'two']
for f, s in zip(first_list, second_list):
    print(f, s)
# a one
# b two
```

To loop in a sorted order, use the `sorted()` function:

```python
my_list = ['b', 'c', 'a']
for f in sorted(my_list):
    print(f)
# a
# b
# c
```

To loop in reverse, pass the sorted `list` to the `reversed()` function:
```python
for f in reversed(sorted(set(my_list))):
  print(f)
# c
# b
# a
```

---
## Practice

Complete the code snippet to pair the sequences in order and loop over them both in parallel:

```python
list_a = ['a', 'b', 'c']
list_one = ['one', 'two', 'three']
for k, v in ???(list_a, list_one):
    print(???)
```

* `zip`
* `k, v`
* `f, s`
* `pair`
* `parallel`
* `list_a, list_one`

---
## Revision

Complete the code snippet to loop through the list in reverse:

```
enki_list = [‘i’, ‘k’, ‘n’, ‘e’]
for w in ???(sorted \
            (???(enki_list))):
  print(w)
```

* `reversed`
* `set`
* `reverse`
* `orderreverse`
* `start`
* `list`
