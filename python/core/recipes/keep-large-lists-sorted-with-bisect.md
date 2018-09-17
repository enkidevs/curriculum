---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: best practice

standards:
  python.native-types-operations.4: 10
aspects:
  - introduction
  - workout
  - obscura 
links:

  - '[docs.python.org](https://docs.python.org/3.5/library/bisect.html){website}'


---

# Keep large lists sorted with `bisect`

---
## Content

Using the basic **bisection algorithm**, Python's `bisect` module provides a more efficient way of inserting elements into a list while keeping it **sorted**.

Import the module:
```python
import bisect
```

Suppose we have the list:
```python
a = [3, 4, 5, 6, 10, 20, 30]

```

We can now add elements with the `insort` method which will put the new element to the left of any existing equal elements in the list:
```python
bisect.insort(a, 8)
bisect.insort(a, 9)
bisect.insort(a, 35)

```
Now to see the result:
```python
print(a)
# [3, 4, 5, 6, 8, 9, 10, 20, 30, 35]

```

To find the **insertion point** of an element without inserting it use `bisect`, in case if there are identical elements in the list it returns the position after them i.e. the right most position:
```python
print(bisect.bisect(a, 11))
# 7
```

---
## Practice

Consider the following:
```
a = [0, 1, 2, 2, 2, 3]
```
What will the output of `print(bisect.bisect(a, 2))` be? ???


* 5
* 2
* 4

---
## Revision

`bisect` provides two useful methods:  
`insort`: ???  
`bisect`: ???  


* inserts a new element into an ordered list
* returns the position where to insert a new element in a sorted list
* sorts and returns an unsorted list
