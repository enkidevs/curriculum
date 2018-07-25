---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know
aspects:
  - workout
  - deep
standards:
  python.store-manipulate-data.0: 10
  python.store-manipulate-data.1: 10
  python.store-manipulate-data.6: 10

---

# Memory Allocation and Mutable Types

---
## Content

You also have access to *mutable types*: lists, dictionaries, classes and their instances etc. Consider the following code snippets that use the same `mem_loc()` function defined in the previous insight:
```python
m = n = []
print(mem_loc(m))
# 0x7f074768c108
print(mem_loc(n))
# 0x7f074768c108
```
Versus:
```python
l = []
k = []
print(mem_loc(l))
# 0x7f074768c148
print(mem_loc(k))
# 0x7f074768c088
```
In the first case, both `m` and `n` reference the same list through assignment. The snippet is equivalent to:
```
n = []
m = n
```
In the second snippet, `l` references a list, while `k` references another. Appending elements to them reveals something interesting:
```python
m.append(1)
print(m)
# m == [1 ]
n.append(2)
print(n)
# n == [1, 2]
l.append(1)
print(l)
# l == [1 ]
k.append(2)
print(k)
# k == [2 ]
```
`m` and `n` are two names given to the same thing: internally, modifying one of them means modifying both. That's not the case for `l` and `k`.

What if we decide to check the memory addresses of `m[0 ]` (== 1) and `l[0 ]` (== 1). Remember that their hexadecimal addresses differ by *0x40*:
```python
print(mem_loc(m[0]))
# 0x55a7b5df7080
print(mem_loc(l[0]))
# 0x55a7b5df7080
```
This gets even better:
```python
new_a = 1
print(mem_loc(new_a))
# 0x55a7b5df7080
```
In other words, `1` exists in memory as the **integer object 1**, at the address `0x55a7b5df7080`.

---
## Practice

As stated in the insight, dictionaries are also mutable. What would the output be of the following function?
```python
a = {'key': 'value'}
b = a
b['key'] = 'mutable'
print(a)
???
```

* `{'key': 'mutable'}`
* `{'key': 'value'}`
* `{'key': 'value', 'key': 'mutable'}`
* `{}`

---
## Revision

What will the `print` statement output for the snippet below?
```python
a = []
b = a
b.append(5)
print(a)
???
```

* `[5]`
* `5`
* `[]`
* `a`
