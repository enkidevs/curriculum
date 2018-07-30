---
author: catalin

levels:

  - medium

  - advanced

type: normal

category: must-know
standards:

    python.use-comprehensions.0: 1000
    python.use-comprehensions.4: 3000
    python.use-comprehensions.5: 3000

links:

  - '[python-3-patterns-idioms-test.readthedocs.org](http://python-3-patterns-idioms-test.readthedocs.org/en/latest/Comprehensions.html#set-comprehensions){website}'

parent: list-comprehension
notes: >-
  Added the point that the list-to-set comprehension will work even if the list
  contains duplicates.

---

# Set comprehension

---
## Content

Using **set comprehension** one can create sets using the same principles as with **list comprehension**.  

The syntax difference between the two is that set comprehension requires using *curly brackets* (`{}`).

Imagine we have the following list:
```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8]

```
And we need a set containing only even numbers in the list. This can be easily achieved with **set comprehension**:
```python
even_set = {x for x in my_list if x%2 == 0}

```
We can now check the result:
```python
print(even_set)
# {8, 2, 4, 6}

```
Note that the above operation would work even if my_list contained some duplicate values, e.g:
```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 8, 7, 6]
```
since sets by definition do not allow duplicates.

---
## Practice

Fill in the following code snippet. It creates a new set that contains elements of list `l` that are even and adds one and divides by two the odd numbers:

```python

l = [10, 11, 13, 14, 18, 19]
new_set = {x ??? x % 2 == 0 else/
          ??? for x ??? l}
```

* if
* (x + 1)/2
* in
* l
* for
* else


---
## Reviosion

What will the `odd_set` look like after we run the following code snippet?

```python

l = [1,3,3,2,4,5,5,8,9]
odd_set = {x for x in l if x % 2}
```

???

* {1,3,3,5,5,9}
* {1,3,5,9}
* {1,2,3,4,5,8,9}
* {2,4,8}
