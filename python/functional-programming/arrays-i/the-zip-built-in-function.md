---
author: stefkn
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

# The zip Function


---

## Content

The `zip` built-in function can be used to combine multiple lists into a single list of tuples[1].

This is best understood by example:

```python
a = ['a1', 'a2', 'a3']
b = ['b1', 'b2', 'b3']
c = ['c1', 'c2', 'c3']

print(list(zip(a, b, c)))

#result:
#[('a1', 'b1', 'c1'),
# ('a2', 'b2', 'c2'),
# ('a3', 'b3', 'c3')]
```

If we pass three lists into a `zip` function, it returns an iterator of tuples. 

If our three lists have 10 elements each, then the tuples returned by the iterator are 3-tuples, where the first tuple returned contains the first element of each input list. 

The second returned contains the second element of each input list, etc.

---

## Footnotes

[1: Tuples]
Tuples are finite ordered lists of n elements, which is referred to as an n-tuple. In Python, tuples are represented with rounded brackets, such as: `('hello', 'good day', 'good morning')` which is a 3-tuple of greetings.
