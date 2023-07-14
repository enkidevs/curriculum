---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Python 3.3 Documentation -
    zip](https://docs.python.org/3.3/library/functions.html#zip){website}
  - >-
    [Python
    zip()](https://www.programiz.com/python-programming/methods/built-in/zip){website}

---

# Edge cases of zip

---

## Content


If one of our lists is shorter than the other, then the iterator only has as many tuples as the shortest list, and will not continue further:[1] 

```python
a = ['a1', 'a2', 'a3']
b = ['b1', 'b2']

print(list(zip(a,b)))
# Result: [('a1', 'b1'), ('a2', 'b2')]
```

If no parameters are passed, then an empty iterator is returned:

```python
print(list(zip()))
# Result: []
```


---

## Footnotes


[1:Different length inputs to `zip`]
*`zip` should only be used when you don’t care about trailing, unmatched values from the longer iterables, since the iterator stops after n iterations, where n is the size of the shortest input iterable. If those values are important, another variant of `zip` is built-in called  `itertools.zip_longest()` which automatically extends any shorter input lists with `fillvalue`, which by default is a `None` object.*