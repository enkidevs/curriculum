---
author: catalin
type: normal
category: must-know
notes: >-
  Should always be the first insight presented within this topic?


  Note by vasudevram: The insight is correct. (Rewrote the code and text a bit.)
  But it ends with a StopIteration exception, which will be confusing to
  beginners, since it looks like generators cause errors. Should mention that
  the more common way to use a generator is either to handle the exception via
  try/except, or to call it in a for loop, in which case the for statement
  handles the StopIteration and uses it to terminate the loop.
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# What are generators


---

## Content

Generators are special **functions** that implement or generate **iterators**. 

Generators look like normal functions, but instead of the **return statement** they make use of the **yield statement**.

The `yield` statement tells the interpreter to store local variables and record the current position in the generator, so when another call is made to the generator, it **will resume from that saved location** and with the previous values of local variables intact.

Consider this generator:

```python
def test_generator():
    yield 1
    yield 2
    yield 3

g = test_generator()

```

We can now iterate over `g` using the `next()` function:

```python
print(next(g)) # 1
print(next(g)) # 2
print(next(g)) # 3
print(next(g)) # StopIteration error
```


---

## Revision

What other statement is specific to generators instead of `return`?

```python
???
```

- `yield`
- `for`
- `await`
- `return`
 
