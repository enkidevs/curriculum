---
author: lior-bd
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Syntax of reduce

---

## Content

Keep in mind that `reduce` is not built-in, so it first must be imported:

```python
from functools import reduce
```

The general syntax for the `reduce` function is of the form:

```python
reduce(function, iterable, initializer)
```

Where:
 - `function` is the binary function to be applied to all of the elements in `iterable`, 
 - `iterable` is an iterable collection of elements 
 - `initializer` is an optional argument that is treated as being before the elements in the `iterable` collection


The functionality afforded by `reduce` can be replicated with a for loop, but the for loop implementation generally tends to be less legible and sometimes slightly slower.[1]

---

## Practice

The binary function supplied to `reduce` does not have to be a numerical operation. Let's say we've defined a custom class, `Storage` which describes a storage device, with an integer for its size in gigabytes and a string for its filesystem, such as NTFS, FAT32 or APFS.

We want to find out how much storage space we effectively have across our whole collection of drives, with the caveat that we only want to consider drives formatted to work natively with, say, a Mac.

To do this, we define a function, `totalUsableSpace`, which only adds the storage space if the filesystem string matches those that work natively with a Mac.

Fill in the code gaps to achieve this.

```python
class Storage:
  ... #truncated
class StorageCollection:
  ... #truncated

def totalUsableSpace(totalStorage,
                        storage):
  if storage.filesystem == "APFS" or
     storage.filesystem == "HFS":
    return ??? + ???
  else:
    return int(totalStorage)

drive1 = Storage(2000, "APFS")
drive2 = Storage(2000, "NTFS")
drive3 = Storage(1500, "exFAT")
drive4 = Storage(3000, "HFS")

collection = StorageCollection()
collection.add(drive1, drive2,
                drive3, drive4)

print(???(???, ???))
```

- `int(totalStorage)`
- `storage.size`
- `reduce`
- `totalUsableSpace`
- `collection`
- `drive1`
- `collection`
- `Storage.size`
- `map`
- `totalStorage`


---

## Revision

What is calculated as a result of the following code execution?

```python
numbers = [100, 2, 2, 5]
print(reduce(lambda x, y: x / y, numbers))
```

???

- `(((100 / 2) / 2) / 5) = 5.0`
- `(((100 / 2) / 2) / 5) = 5`
- `(100 / 2 / 2 / 5) = 5.0`
- `2`




---

## Footnotes

[1:Functional Programming]
*The style of programming that eschews imperative loops such as for loops is called functional programming. For more information about functional programming and Python, see the related workout, since the topic is too broad to cover in one lesson.*
 
