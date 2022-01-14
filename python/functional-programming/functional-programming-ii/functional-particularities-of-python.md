---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Functional Programming in
    Python](https://ia801304.us.archive.org/20/items/functional-programming-python/functional-programming-python.pdf){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functional Particularities of Python


---

## Content

In this insight we'll explore some of the paradigms of functional programming as applied to Python, specifically.

One of the most common constructs to employ in a functional-style Python program is a **Generator**. Generators are a special class of functions that make writing iterators more easy.[1]

When we call a function, a new space in memory is allocated to hold all of the variables that function is concerned with, as well as other data. When that function reaches a `return` statement, all of that is destroyed (or, more accurately, marked for garbage collection) and the return value is given back to the caller. Calling that function again restarts the entire process.

Generators allow us to make functions which essentially keep these variables from being destroyed after returning a value, and allow the execution to be paused and resumed where the function left off. Generators basically provide *resumable functions*. For example:

```python
def generate_ints(N):
  for i in range(N):
    yield i
```

This is a simple generator, identified by the `yield` keyword. (Any function with a `yield` is a generator.) When it is called, instead of returning a value, a generator object is returned instead which supports the iterator protocol. Calling `next()` on the generator object will continually run and return the result, "pausing" the function every time after it reaches `yield`.

Another interesting feature of functional programming with Python is **Comprehensions**. Using Comprehensions is an easy way to make functional code much more legible by focusing on **what** is to be computed, not **how**.

A comprehension is an expression where the same flow control keywords used in loops and conditionals are used, but put in a different order to focus on data instead of the manipulation procedure. For example:

```python
# without comprehension
for element in list:
  if condition1(element) and condition2(element):
    collection.append(element)
  else:
    new = mutate(element)
    collection.append(element)

# with comprehension
collection = [e if condition1(e) and condition2(e) else modify(e) for e in list]
```

As you can clearly see, our code instantly becomes much more legible and comprehensible.

Finally, Python is also lucky to have an avid user base which is constantly providing new third-party libraries to extend Python's usability as a functional language. Although we can't cover them in detail in order to keep the insight short, some highlights include `pyrsistent`, `toolz`, `hypothesis` and `more_itertools`.[2]


---

## Practice

What keyword makes a function a generator?

```python
???
```

- `yield`
- `return`
- `break`
- `gen`
- `__next__`


---

## Revision

What are some of the key functional features of Python?

???

- Generators & Comprehensions
- Pure Functions & High-Level
- Interpreted & Object-Oriented
- Immutability & Extensibility
- Generators & Dynamic Typing


---

## Footnotes

[1:Iterators]
Iterators are objects which return one value at a time from a collection of values. For example, an iterator traversing a list will return one element of the list at a time until it reaches the end of the list and throws a `StopIteration` exception. For more information, see the related insights relating to Python iteration.

[2:Third Party Libraries]
`pyrsistent` is a collection of a number of useful persistent data structures, AKA immutable data structures. `toolz` provides a set of utility functions for iterators, functions and dictionaries. `hypothesis` is a library which allows simple and powerful property-based testing. `more-itertools` is exactly what it says; the library provides additional building blocks, recipes and routines above the standard `itertools`.
 
