# Chain comparison operators
author: Ricardo

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - comparison

  - operators

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/101268/hidden-features-of-python){website}

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
## Revision

What will the following expression evaluate to?
```
>>> a = 9
>>> 1 < a < 8
???
```

*`False` 
*`True`

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
