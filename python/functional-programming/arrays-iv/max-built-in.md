---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python
    max()](https://www.programiz.com/python-programming/methods/built-in/max){website}
  - >-
    [Python 3.3
    Documentation](https://docs.python.org/3.3/library/functions.html#max){website}
---

# The max Function


---

## Content

The `max` built-in function returns the largest item in an iterable object, or, the largest of two or more parameters given to it. 

```python
print(max([1,9,5]))
# Returns 9
print(max(1, 9, 5))
# Returns 9
```

By default, it will compare strings alphabetically:
```python
print(max(["Apple", "Banana"]))
# Result: "Banana"
print(max("Apple", "Banana"))
# Result: "Banana"
```
