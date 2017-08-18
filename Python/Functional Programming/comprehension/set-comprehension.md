# Set comprehension
author: catalin

levels:

  - medium
  - advanced

type: normal

category: must-know

parent: list-comprehension

notes: >-
  Added the point that the list-to-set comprehension will work even if the list
  contains duplicates.

links:

  - >-
    [python-3-patterns-idioms-test.readthedocs.org](http://python-3-patterns-idioms-test.readthedocs.org/en/latest/Comprehensions.html#set-comprehensions){website}

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
