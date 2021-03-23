---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Iterators vs.
    Generators](http://nvie.com/posts/iterators-vs-generators/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Are Iterators?


---

## Content

In the previous insight we encountered `iterable` objects. One of the ways for an object to be considered `iterable` was if it had an implemented `__iter__()` method (*pronounced "dunder iter"[1]*) which returns an `iterator`. But what is an iterator?

An iterator is a stateful, helper object which returns each element in an iterable object one by one, sequentially, until none remain. Some iterators will continue indefinitely. The implementation (how the iterator produces values) is different for each specific one, and is therefore not important, for now.

Any object with the `__next__()` method implemented to return some values counts as an iterator. Each time `__next__()` is called on the iterator, it returns the next value in the sequence. Iterators have **internal state**, which means they privately keep track of how far in the sequence the iteration has gone. This allows the same iterator to keep track of its place, even if used by different methods in different areas of code.

Here are some examples of iterators, taken from the `itertools` module. Every function in this module returns an iterator, and we'll be exploring it in further detail in a later insight.

```python
from itertools import counter
newCounter = count(start=42)
print(next(newCounter)) # result: 42
print(next(newCounter)) # result: 43
print(next(newCounter)) # result: 44
```

Counter is a simple numerical iterator which counts up from a given value infinitely. Others include `cycle`, which iterates infinitely through a given finite list, and `islice` which creates a given finite length iterator from an infinite iterator.


---

## Practice

Which method(s) need to be implemented for an object to be classed as an iterator?

???

- `__next__()`
- `__next__(), __iter__()`
- `__iter__(), __getitem__()`
- `__iter__(), __getitem__(), __next__()`


---

## Revision

Which method is called to retrieve a value from an iterator?

???

- `__next__()`
- `__getitem__()`
- `__iter__()`
- `__child__()`
 
