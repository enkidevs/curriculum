---
author: emmab
type: normal
category: feature
links:
  - >-
    [Dictionary
    methods](https://www.programiz.com/python-programming/dictionary){website}
  - >-
    [popitem()  Python
    3.7](https://docs.python.org/3/library/stdtypes.html#dict.popitem){website}
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

- `popitem()` removes the last item that was inserted in the dictionary and returns it.

> For versions prior to Python 3.7, `popitem()` removed an arbitrary item from the dictionary. For more information, check out the links in the "Learn More" section.

```python
square_numbers.popitem()

# (5, 25)

print(square_numbers)
# {1: 1, 2: 4, 3: 9, 4: 16}
```

- `fromkeys()` can make a new dictionary from the given keys. For instance, we can provide names as keys and surname as the value to get a dictionary of famous_siblings.

```python
names = ('Luke', 'Chris', 'Liam')

surname = ('Hemsworth')

famous_siblings = dict.fromkeys(names, surname)

print(famous_siblings)
# {'Luke': 'Hemsworth', 'Chris': 'Hemsworth', 'Liam': 'Hemsworth'}
```

> 💡 Alongside `dict.fromkeys`, you can also use the alternative `{}.fromkeys` to generate a new dictionary with the given keys.

If we update the `famous_siblings` example, we'd get the same result:

```python
# ...
famous_siblings = {}.fromkeys(names, surname)

print(famous_siblings)
# {'Luke': 'Hemsworth', 'Chris': 'Hemsworth', 'Liam': 'Hemsworth'}
```

---

## Practice

Suppose we want to create a dictionary using the `fromkeys` method. Fill in the gaps accordingly:

```python
new_dictionary = ???.???([1, 2, 3, 4, 5], ???)

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
