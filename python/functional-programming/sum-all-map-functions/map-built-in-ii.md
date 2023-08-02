---
author: lior-bd
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
links:
  - >-
    [map, filter, and, reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}
---

# Multiple iterables with map

---

## Content

We can also pass more than one iterable `input_list` to `map` at once! 

This lets us combine values from each list into a new list. Here's an example of adding two lists of numbers:

```python
def add(a,b):
    return a + b
print(list(map(add, [1,7,-2], [4,-3,3])))
# Result: [5, 4, 1]
```

![visualization for map(add, [1,7,-2], [4,-3,3])](https://img.enkipro.com/f172827c80f6a94d5ce5c7f186e6b8e1.png)


---

## Practice

What will be the output of the following code:

```python
def diff(a,b):
    return a - b
print(list(map(diff, [1,3,7], [1,0,4])))
```
???

- `[0, 3, 3]`
- `[2, 3, 11]`
- `[0, -3, -3]`



---

## Revision

What will be the output of the following code:

```python
def multiply(a,b):
    return a * b
print(list(map(multiply, [2,-1,0], [6,2,4])))
```
???

- `[12, -2, 0]`
- `[8, 1, 4]`
- `[2, -1, 0, 6, 2, 4]`