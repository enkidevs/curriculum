---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Functional Programming in Python: built-in
    functions](https://docs.python.org/3/howto/functional.html#built-in-functions){website}
  - >-
    [map, filter, and
    reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}
---

# Multiple iterables with map

---

## Content

The basic syntax of `map` looks like this:

```python
map(function_here, input_list,
  optional_another_input_list, ...)
```

Notice that we can pass more than one iterable `input_list` to `map` at once! 

If we have a function that takes multiple parameters, we can iterate through different lists for the parameters in parallel:

```python
def add(a,b):
    return a + b
print(list(map(add, [1,7,-2], [4,-3,3])))
# Result: [5, 4, 1]
```

If one input is shorter than the other, it is assumed to be extended to the same length with `None` items. 