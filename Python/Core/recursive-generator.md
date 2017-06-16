# Recursive generator.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about recursive generators](https://stackoverflow.com/questions/35015181/python-recursive-generator)'

---
## Content

Before the realeas of **Python 3**, **recursive generators** were implemented by calling the **generator function** in a `for loop` statement.

Consider the following exampe:
```
def infinity(start):
    yield start
    for x in infinity(start + 1)
      yeild x
```

We defined a **generator** that counts up to infinity. After the first computation, the **starting value** we passed will be **returned**. Then we loop on the new **generators** created in the `for loop`.

Now, **Python 3** implemented a new method called `yield from`. This method enables users to `yield` over a **generator** created inside the definition of another **generator**. Basically, instead of looping over the **recursive call** of the generator, we will use `yield from`.

Let's see the above example implemented using `yield from`
```
def infinity(start)
    yield start
    yield from infinity(start + 1)
```

One common use of **recursive generators** is traversing **non-linear data structures** like binary trees.

**Note** that recursive **generators** will be consumed, when the `StopIteration` exception is thrown.

---
## Practice

What method has been implemented in Python 3 to help creating recursive generators?
???

* `yield from`;
* `yield()`;
* `next()`.

---
## Revision

When are consumed recursive generators?
???

* when it encounters `StopIteration`;
* they don't ever consume;
* when the last `yield` method defined is evaluated.
