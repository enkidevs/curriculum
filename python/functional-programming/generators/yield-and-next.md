---
author: SebaRaba
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# yield() and next()


---

## Content

As we already know, **generators** are a way of creating iterable items in **Python**. The behaviour of a generator is mainly defined by the `yield()` and `next()` methods.

When the **python interpreter** finds the `next()` function called on a generator, it jumps to the generator's body and executes every expression until it encounters the next `yield()`.

The `yield()` **evaluates** and **returns** the value of the expression that follows. **Python** does two interesting actions at this stage:

- it keeps track of the position of the next `yield()`
- it stores the state of the **local variables** until the next call

**N.B** if all `yield()`s were evaluated and we encounter an extra call of the `next()` method, the following exception will be returned:

```py
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

Consider the following generator:

```py
def range_gen(n):
  i = 0
  while i < n:
    yield i
    i += 1
```

This **function** generates all natural numbers up to `n`. Let's use the `next()` method now:

```py
>>> gen = range_gen(3)
>>> print(next(gen))
0
>>> print(next(gen))
1
>>> print(next(gen))
2
>>> print(next(gen))
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```


---

## Practice

What is the output of the following snippet?

```py
def countdown(num):
  while num > 0:
    yield num
    num -= 1

>>> gen = countdown(5)
>>> print(next(gen))
```

```plain-text
???
```

- `5`
- `0`
- `1`


---

## Revision

Consider the following snippet:

```py
def double(L):
  for x in ???:
    ??? x*2

my_gen = double([1, 2, 3, 4, 5])

print(???(my_gen))
print(next???)
```

Suppose we want to print the doubled value for the first 2 numbers in the list. Fill the gaps accordingly.

- `L`
- `yield`
- `next`
- `(my_gen)`
- `my_gen`
- `next()`
- `yield()`
- `T`
 
