---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Map, filter and
    Reduce](http://web.mit.edu/6.005/www/fa15/classes/25-map-filter-reduce/#reduce){website}
---

# The reduce Function


---

## Content

The `reduce` function allows us to apply a function sequentially to all items in a given list, but is different from `map` in that it applies the given function cumulatively:

```python
from functools import reduce

num_list = [5, 2, 8, 3, 9]
print(reduce(lambda x, y: x+y, num_list))
# Result: 27
```

'Cumulatively' means it takes a two-argument function and an iterable sequence and applies the function to the first and second elements in iterable. 

Once this is done, the result obtained will then be used as the first argument to the function and the third element will be the second argument. 

This continues until no elements are left in the iterable list and all elements in the list have effectively been *reduced* into a single value.

For example, consider using `reduce` with a simple lambda function which adds the two arguments given together: `lambda x, y: x+y`:






