---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

notes: >-
  For any claims of performance differences, at least a basic timing test should
  be done and results shown.

links:

  - >-
    [pymbook.readthedocs.org](http://pymbook.readthedocs.org/en/latest/igd.html#generator-expressions){website}

---
# Generator expressions

---
## Content

Generator expressions are a high performance and memory efficient generalization of list comprehensions and generators.

Imagine we want to `sum` up all even number ranging from 1 to 100.

Using list comprehension:
```python
even_sum = sum([x for x in range(1, 101)
               if x % 2 == 0])
print(even_sum)
#2550
```
This will prove inefficient in the case of a large range because it first creates a list, it iterates over it and then returns the sum.

The same result can be achieved with a **generator expression**:
```python
even_sum = sum(x for x in range(1, 101)
               if x % 2 == 0)
print(even_sum)
#2550
```

The generator expressions syntax says that it must be enclosed inside parenthesis (`()`).
A generator for squares of numbers:
```python
my_gen = (x * x for x in range(1,10))
```

This generator can now  be converted to a list with:
```python
print(list(my_gen))
# [1, 4, 9, 16, 25, 36, 49,
# 64, 81]
```

Or, iterate over it with a for loop:
```python
for item in my_gen: print(item)
```
However, this prints nothing: once the values have been generated (during `list(my_gen)`), the generator is as good as empty. If we were to call it again:
```python
print(list(my_gen))
# []
```

---
## Practice

Complete the generator expression below for the odd numbers in the given range:
```
gen = ( x ??? x in ???(1, 100) \
   if x ??? 2 != 0)
```

* for
* range
* %
* gen
* *
* /
* square
* yield
* is

---
## Revision

Complete the generator expression for the square of numbers in the given range:
```
gen = ( x ??? x for x ??? range(1, 20))
```

* *
* in
* is
* yield
* generator
* gen
* square
