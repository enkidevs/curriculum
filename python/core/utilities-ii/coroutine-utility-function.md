---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature
aspects:
  - workout
  - deep
standards:
  python.control-structures.5: 10
  python.modules.0: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/types.html#coroutine-utility-functions){website}'


---

# Coroutine Utility function

---
## Content

Inside **Python**'s ` types`  module one can find the `coroutine` function since the introduction of **Python 3.5**.

This function is used to transform a **generator function** into a **coroutine function**, returning a generator-based coroutine.

This coroutine is both a **generator iterator** and an ` awaitable`  **coroutine object**.

```python
import types

def my_gen():
  yield 1
  yield 2

my_coroutine_obj = types.coroutine(my_gen)
```

The new coroutine object is still **iterable**:
```python
for element in my_coroutine_obj:
  print(element)

# 1
# 2
```

In addition, the generator based coroutine is **awaitable**, but does not necessarily implement `__await__()`

---
## Practice

Convert `my_generator` to a coroutine function:
```
import types

def my_generator():
   yield 1

my_coroutine = ???.???(my_generator)
```

* `types`
* `coroutine`
* `co`
* `gen`
* `transform`
* `type`

---
## Revision

What function from the `types` module can be used to transform a generator into a coroutine function?

???


* `coroutine`
* `co`
* `gen`
* `generator`
* `await`
* `gen_to_co`
