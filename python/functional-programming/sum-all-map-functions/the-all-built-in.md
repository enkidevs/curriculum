---
author: stefkn
type: normal
category: discussion
links:
  - >-
    [Python 3 Documentation -
    all](https://docs.python.org/3.3/library/functions.html#all){website}
---

# The all Function


---

## Content

The `all` built-in function takes an iterable object and returns `True` if all the elements in the iterable object evaluate to `True`.

In practice, `all` checks if `bool(element) == True` for each element in the iterable object.

Take for example:

```python
print(all([True, True, False]))
#result = False
```

> > 💬 Can you think of a practical example for using `all`?
>
> Leave a comment or view other comments for inspiration before moving on.