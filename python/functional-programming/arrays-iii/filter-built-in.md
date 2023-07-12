---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [map, filter, and
    reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}
  - >-
    [Lambda, filter, reduce and
    map](http://www.python-course.eu/lambda.php){website}
  - >-
    [9 Python Filter Function and List Comprehension
    Examples](http://www.thegeekstuff.com/2014/05/python-filter-and-list){website}
---

# The filter Function


---

## Content

As the name might suggest, `filter` takes a function and an iterable object and returns only the elements in the iterable object for which the given function returns `true`[1]:


For example, consider the following code:

```python
prices = (1.29, 1.99, 2.30, 2.99, 1.80)

def less_than_two(element):
  return element < 2

print(tuple(filter(less_than_two, prices)))
# Result: (1.29, 1.99, 1.80)
```

In the code above, we define a list of prices, and define a function called `less_than_two`, which returns a boolean.

Finally, we apply `filter` on the two and receive back only those prices less than two, since these elements were the only ones to return `True` when passed to the `less_than_two` function.



---

## Footnotes


[1:true]
There is also a complementary function `itertools.filterfalse()` which only returns elements of the iterable object if the function returns false on them. Alternatively, you could negate the return value of the function passed to `filter` to achieve the same result.
 