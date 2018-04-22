---
author: Ricardo

levels:

  - basic

  - beginner

type: normal

category: tip

standards:
  py.native-types-operations.0: 10


tags:

  - comparison

  - operators


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/101268/hidden-features-of-python){website}'


---

# Chain comparison operators

---
## Content

Python provides a syntactic shortcut for chaining comparison operators.


```python
>>> x = 10
>>> 1 < x < 15
True
```

Is the equivalent of:
```python
>>> x = 10
>>> 1 < x  && x < 15
True
```

---
## Practice


Check if `x` is at least 2 and maximum 10:

???

* >>> 1 < x < 11
* >>> 2 < x < 10
* >>> 2 < x < 11
* >>> 1 < x < 10


---
## Revision

What will the following expression evaluate to?
```
>>> a = 9
>>> 1 < a < 8
???
```


* `False`
* `True`
