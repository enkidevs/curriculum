---
author: lior-bd
type: normal
category: must-know
---

# Filtering on the identity

---

## Content

The general syntax of `filter` is:

```python
filter(function, iterable)
```

`filter` returns a filter object, which can then be converted to a list or a tuple.

If we don't provide a function to `filter`, such as by putting `None` in the place of the function, `filter` assumes the identity function.

Since Python evaluates `0`, `None` and the empty string as `False`, `filter` with `None` as its function will not return these objects:

```python
raw_names = ["Joe", "Bela", "", "Alex"]
valid_names = list(filter(None, raw_names))
# Result: ["Joe", "Bela", "Alex"]
```

