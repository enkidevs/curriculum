---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip
aspects:
  - introduction
  - workout
standards:
  python.standard-library-data.0: 10

---

# A simple way to select a random item from a `list/tuple` data structure

---
## Content

If you need to randomly select an item from a list:

1) Naive approach 1:
```python
import random
items = ['here', 'to', 'one', 'strings']
rand_item =
items[random.randrange(len(items))]
```
Use `randrange` (or `randint`) to generate a pseudo-random integer from the range indicated by it's arguments.

2) Naive approach 2:
```python
rand_items =
[items[random.randrange(len(items))]
              for item in range(4)]
```
Use `random.randrange` to generate indexes inside a list comprehension.

3) Pythonic approach:
```python
rand_item = random.choice(items)
```
`random.sample` can also select n items:
```python
rand_items = random.sample(items, n)
```

---
## Practice

Complete the following code snippet to select a random item from a list/tuple data structure:

```
rand_item = ???.???(items)
```


* `random`
* `choice`
* `rand`
* `select`
* `sample`
* `choose`
* `randomise`

---
## Revision

Complete the following code snippet to select 2 random items from a list/tuple data structure:

```
rand_items = ???.???(items, 2)
```


* `random`
* `sample`
* `choice`
* `rand`
* `select`
* `choose`
* `randomise`
