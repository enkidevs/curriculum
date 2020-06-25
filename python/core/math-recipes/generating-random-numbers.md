---
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: feature
aspects:
  - introduction
  - workout

standards:
  python.standard-library-data.0: 10

links:

  - '[pymotw.com](https://pymotw.com/2/random/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/random.html){website}'

notes: Math modules workout

---

# Generating `random` numbers

---
## Content

The Python `random` module provides random (pseudo-random) number generators based on the *Mersenne Twister* algorithm.

Import the module:
```python
import random
```
Generate a random number (`0 <= x < 1.0`):
```python
print(random.random())
# 0.9104148523071307
```
Generate a random number in a specified range:
```python
print(random.uniform(1,50))
# 2.3772939038992495

```

Generate a random integer from a range:
```python
print(random.randint(1,50))
# 32
```
Generate a random integer from a range, but with a `step` (of the lower bound):
```python
print(random.randrange(0, 101, 5))
print(random.randrange(0, 101, 5))
# 50
# 95

```

Pick a random element from a sequence:
```python
t = (4, 5, 6, 10, 23)
print(random.choice(t))
# 23
```

---
## Practice

Generate a random Integer between `5` and `10` :

```
print(???.???(5, 10))
```


* `random`
* `randint`
* `randomint`
* `get`
* `new`
* `randomrange`
* `randrange`
* `uniform`

---
## Revision

Generate a random number between 0 and 1:
```
print(random.???())
```


* `random`
* `new`
* `get`
* `new_random`
