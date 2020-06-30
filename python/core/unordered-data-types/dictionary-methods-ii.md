---
author: emmab
type: normal
category: feature
links:
  - >-
    [Dictionary
    methods](https://www.programiz.com/python-programming/dictionary){website}
---

# Dictionary Methods II


---

## Content

- `keys()` and `values()` return lists of dictionary keys and values:

```python
square_numbers.keys()

# dict_keys([1, 2, 3, 4, 5])

square_numbers.values()

# dict_values([1, 4, 9, 16, 25])
```

- `pop()` removes the item at the given (`key`) and returns its value:

```python
square_numbers.pop(1)

# 1

print(square_numbers)
# {2: 4, 3: 9, 4: 16, 5: 25}
```

- `popitem()` removes an **arbitrary item** from the dictionary, and returns it

```python
square_numbers.popitem()

# (5, 25)

print(square_numbers)
# {1: 1, 2: 4, 3: 9, 4: 16}
```

- `fromkeys()` return a new **dictionary** with keys provided in the first argument, and values from the second argument:

```python
square_numbers = {}.fromkeys([1,2,3], 0)

print(square_numbers)
# {1: 0, 2: 0, 3: 0}
```


---

## Practice

Suppose we want to create a dictionary using the `fromkeys` method. Fill in the gaps accordingly:

```python
new_dictionary = ???.???(
  [1, 2, 3, 4, 5], ???)

print(new_dictionary)
# {1: 0, 2: 0, 3: 0, 4: 0, 5: 0}
```

- `{}`
- `fromkeys`
- `0`
- `1`
- `fromKeys`
- `values`
- `popitem`
- `clear`


---

## Revision

Return all of the keys from the dictionary:

```python
num_dict = {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

???
```

- `num_dict.keys()`
- `keys(num_dict)`
- `num_dict_keys()`
- `keys_num_dict()`
