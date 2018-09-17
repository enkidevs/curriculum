---
author: SebaRaba

levels:

  - beginner

type: normal

aspects:
  - introduction
  - workout

category: feature

standards:
  python.native-types-operations.6: 10

links:

  - '[Dictionary methods](https://www.programiz.com/python-programming/dictionary){website}'


---

# Dictionary methods

---
## Content

Consider the following dictionary:

```
dict = {1:1, 2:4, 3:9, 4:16, 5:25}
```

Python provides a plethora of **methods** intended for dictionaries manipulation:

- `clear()`: removes all items from the **dictionary**

```
dict.clear()
print(dict)

# Output: {}
```

- `copy()` : returns a **shallow copy**[1] of the **dictionary**

```
new = dict.copy()
print(new)

# Output: {1:1, 2:4, 3:9, 4:16, 5:25}
```

- `get(key,[default])`: the value mapped to the given key; if there's no item with that key, it'll return the optional argument `default`

```
print(dict.get(3))

# Output: 9
```

- `items()`: returns a list composed of all dictionary entries expressed as tuples of the form `(key,value)`

```
print(dict.items())

# Output:
# (2, 4), (3, 9), (4, 16), (5, 25)])
```

- `keys()` : returns a list of all dictionary `key`s

```
print(dict.keys())

# Output: [1, 2, 3, 4, 5]
```

- `pop(key,[d])` : returns the item with the given `key`. If no item is found, the optional `default` argument will be returned

```
print(dict.pop(4))
print(dict)

# Output:
# 16
# {1: 1, 2: 4, 3: 9, 5: 25}
```

- `popitem()` : returns an arbitrary **item** from the dictionary and `KeyError` if the **dictionary** is empty

```
print(dict.popitem())
print(dict)

# Output:
# (5,25)
# {1: 1, 2: 4, 3: 9, 4: 16}
```

- `values()` : lists all the values present in the **dictionary**

```
print(dict.values())

# Output: dict_values([1, 4, 9, 16, 25])
```

- `fromkeys(seq[, v])`: return a new **dictionary** with keys from `seq` and value equal to `v`

```
dict = {}.fromkeys([1,2,3], 0)
print(dict)

# Output: {1: 0, 2: 0, 3: 0}
```

---
## Practice

Suppose we want to create a dictionary having the following keys starting from `1` up to `5` and value `0` assigned to all items. Fill the gaps accordingly:
```
new = ???.???(
  [1, 2, 3, 4, 5], ???)
```
???


* `{}`
* `fromkeys`
* `0`
* `dict`
* `1`
* `fromKeys`
* `values`
* `popitem`
* `clear`

---
## Revision

Print all of the keys from the dictionary:
```
num_dict = {1:1, 2:4, 3:9, 4:16, 5:25}

print(???)
```

* `num_dict.keys()`
* `keys(num_dict)`
* `num_dict_keys()`
* `keys_num_dict()`

---
## Footnotes
[1:shallow copy]
If we have two objects: `A` and `B`. We say `B` is a shallow copy of `A` if they point to the same location in memory.

