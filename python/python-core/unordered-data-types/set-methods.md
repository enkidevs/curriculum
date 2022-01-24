---
author: emmab
tags:
  - introduction
  - workout
type: normal
category: must-know
links:
  - >-
    [More About
    Sets](http://www.python-course.eu/python3_sets_frozensets.php){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# set methods


---

## Content

Even though elements stored in a `set` are **immutable** the set itself is **mutable**.

We can add additional items to a `set` using the following methods:

- `add()` -> adds one single item to the `set`

- `update()` -> adds multiple items to the `set`

```python
my_set = {'dog', 'cat', 'rabbit'}

my_set.add('parrot')

print(my_set)
# {'dog', 'cat', 'rabbit', 'parrot'}

my_set.update(['horse', 'dog'])

print(my_set)
# {'rabbit', 'parrot', 'cat', 'horse', 'dog'}
```

As you can see, *duplicate* values aren't added to `my_set`. Also, note how the *order of items doesn't matter*.

To remove items, we can use:

- `discard()` -> removes an item if it exists and does nothing if it does not

- `remove()` -> removes an item if it exists but raises an error if it does not exist.

```python
my_set.remove('dog')
my_set.discard('goldfish')

print(my_set)
# {'rabbit', 'parrot', 'cat', 'horse'}
```


---

## Practice

Which of the following are both valid `set` methods?

???

- `update() and add()`
- `update() and insert()`
- `insert() and add()`
- `index() and update()`


---

## Revision

What happens when you use `remove()` on an item that doesn't exist in a `set`?

???

- An error will be thrown.
- Nothing.
- The element will be removed.
