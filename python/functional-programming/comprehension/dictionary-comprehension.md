---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:

    python.use-comprehensions.0: 1000
    python.use-comprehensions.3: 3000

links:

  - '[www.bogotobogo.com](http://www.bogotobogo.com/python/python_dictionary_comprehension_with_zip_from_list.php){website}'

parent: list-comprehension
notes: >
  Added a slightly more advanced example using a dict to count frequencies of
  lower case letters.

---

# Dictionary comprehension

---
## Content

Python provides a way of creating dictionaries using **dictionary comprehensions**.

The syntax is similar to the one used for **set comprehension** - using curly braces (`{}`), but the user must define an expression for both the key and the value.


Take the list:
```python
num_list = [1, 2, 3, 4, 5]
```
To get a dict with its keys equal to the numbers in the list, and the corresponding values being the cubes of the keys:
```python
cube_dict = {x: x ** 3 for x in num_list}

```

Now if we print cube_dict, we get:
```python
for k, v in cube_dict.items():
    print(k, v)
# output
# 1 1
# 2 8
# 3 27
# 4 64
# 5 125
```

If we want to initialize the counters to zero in a dict to count frequencies of lower case letters in some input:


```python
lcase_freqs = { chr(c): 0 \
for c in range(ord('a'), \
ord('z') + 1) }

print(lcase_freqs)
# partial output ...

{'u': 0, 'q': 0, 'w': 0, 'o': 0, \
'b': 0,  'c': 0, 't': 0, 'h': 0, \
...
'g': 0, 'a': 0, 'n': 0}
# Check it is correct:
lfk = list(lcase_freqs.keys())
lfk.sort()
print(lfk)
['a', 'b', 'c', 'd', 'e', 'f', \
'g', 'h', 'i', 'j', 'k', 'l', \
'm', 'n', 'o', 'p','q', 'r', \
's', 't', 'u', 'v', 'w', 'x', \
'y', 'z']

```
