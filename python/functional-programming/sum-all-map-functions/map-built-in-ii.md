---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [map, filter, and
    reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}
---

# Multiple iterables with map

---

## Content

We can also pass more than one iterable `input_list` to `map` at once! 

If we have a function that takes multiple parameters, we can iterate through different lists for the parameters in parallel:

```python
def add(a,b):
    return a + b
print(list(map(add, [1,7,-2], [4,-3,3])))
# Result: [5, 4, 1]
```
