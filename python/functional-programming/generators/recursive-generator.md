---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [more about recursive
    generators](https://stackoverflow.com/questions/35015181/python-recursive-generator){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Recursive generator


---

## Content

Before the release of Python 3, **recursive generators** were implemented by calling the **generator function** in a `for` loop.  

Consider the following example:

```python
def infinity(start):
  yield start
  for x in infinity(start + 1)
    yield x
```

We defined a **generator** that counts up to infinity. During the first evaluation, the starting value will be **returned**. Then we loop on the new **generators** created in the `for`'s body.

To achieve the same result, **Python 3** introduced a new construct, called `yield from`. This allows users to `yield` over a generator inside another generator - in other words, creating a **recursive generator**.

Let's check out the example above implemented using `yield from`:

```python
def infinity(start):
  yield start
  yield from infinity(start + 1)

gen = infinity(20)
print(next(gen)) # 20
print(next(gen)) # 21
```

One common use of **recursive generators** is traversing *non-linear data structures* like binary trees.

**N.B.** a recursive generator will throw `StopIteration` once it is consumed.


---

## Practice

Can you spot which of the following generators are recursive?

```python
def list_gen(l):
  if l:
    yield l[0]
    yield from list_gen(l[1:])

def cubic_generator(n):
	for i in range(n):
		yield i ** 3

```

```plain-text
???
```

- `list_gen`
- `cubic_generator`
- both
- neither


---

## Revision

Complete the missing Python 3 specific syntax of the following recursive generator:

```python
def countdown(start):
    yield ???
    ??? ??? ???(start - 1)

c = countdown(30)
print(???(c)) # 30
print(next(c)) # 29

```

- `start`
- `yield`
- `from`
- `countdown`
- `next`
- `form`
- `next()`
- `yield()`
- `yield from`
- `.next`
 
