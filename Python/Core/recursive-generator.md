# Recursive generator
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about recursive generators](https://stackoverflow.com/questions/35015181/python-recursive-generator)'

---
## Content

Before the release of **Python 3**, **recursive generators** were implemented by calling the **generator function** in a `for` loop.

Consider the following example:
```
def infinity(start):
    yield start
    for x in infinity(start + 1)
      yield x
```

We defined a **generator** that counts up to infinity. During the first evaluation, the starting value will be **returned**. Then we loop on the new **generators** created in the `for`'s body.

To achieve the same result, **Python 3** introduced a new method, `yield from`. This allows users to `yield` over a generator inside another generator - in other words, creating a **recursive generator**.

Let's check out the example above implemented using `yield from`:
```
def infinity(start):
    yield start
    yield from infinity(start + 1)
```

One common use of **recursive generators** is traversing **non-linear data structures** like binary trees.

**N.B.** a **recursive generator** will throw `StopIteration` once it is consumed.

---
## Practice

What method has been implemented in Python 3 to help creating recursive generators?
???

* `yield from`
* `yield()`
* `next()`

---
## Revision

When are consumed recursive generators?
???

* when it encounters `StopIteration`
* they don't ever consume
* when the last `yield` method defined is evaluated
