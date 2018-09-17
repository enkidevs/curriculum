---
author: Ricardo

levels:

  - basic

  - beginner

type: normal

category: tip
aspects:
  - introduction
standards:
  python.native-types-operations.0: 10


tags:

  - introduction

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
x = 10
1 < x < 15
True
```

is the equivalent of:
```python
x = 10
1 < x  and x < 15
True
```

---
## Practice

Check whether the value of the integer `x` is at least 2 and no more than 10:

???

* 1 < x < 11
* 2 < x < 10
* 2 < x < 11
* 1 < x < 10

---
## Revision

What will the following expression evaluate to?
```
a = 9
1 < a < 8
???
```

* `False`
* `True`

---
## Quiz

### Do you know how to use chained comparison operators?


How would we use chained comparison operators to express this conditional statement?

```python
if var >= startvar and var <= endvar:
    ...
```


- `if startvar <= var <= endvar:`
- `if startvar <= and var <= endvar:`
- `if (startvar <= and var <= endvar):`
- `if startvar >= var <= endvar:`
