---
author: stefkn

levels:

  - beginner

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:

  python.data-structures-uses.0: 10
  python.data-structures-uses.1: 10
  python.native-types-operations.3: 10
  python.use-iteration-protocol.1: 10

links:

  - '[Map, filter and Reduce](http://web.mit.edu/6.005/www/fa15/classes/25-map-filter-reduce/#reduce){website}'


---

# The `reduce` Built-in Function

---
## Content

The `reduce` built-in allows us to apply a function sequentially to all items in a given list, but is different from `map` in that it applies the given function cumulatively.

'Cumulatively' means it takes a two-argument (binary) function and an iterable sequence and applies the function to the first and second elements in iterable. Once this is done, the result obtained will then be used as the first argument to the function and the third element will be the second argument. This result is then, again, the first argument with the fourth element as the second argument, et cetera.

This continues until no elements are left in the iterable list and all elements in the list have effectively been *reduced* into a single value.

For example, consider using `reduce` with a simple lambda function which adds the two arguments given together: `lambda x, y: x+y`

Let our list be:

`list = (5, 2, 8, 3, 9)`

then,

`reduce(lambda x, y: x+y, list)`

would effectively calculate:

`((((5 + 2) + 8) + 3) + 9) `

The general syntax for the `reduce` function is of the form:

```python
reduce(function, iterable[, initializer])
```

where `function` is the binary function to be applied to all of the elements in `iterable`, `iterable` is an iterable collection of elements, and `initializer` is an optional argument which is treated as being before the elements in the `iterable` collection. `initializer` may be thought of as a default value which is returned if the `iterable` collection is empty. If an `initializer` value is not provided and the `iterable` list is empty, the result is undefined, so `reduce` will throw an exception.

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


* `int(totalStorage)`
* `storage.size`
* `reduce`
* `totalUsableSpace`
* `collection`
* `drive1`
* `collection`
* `Storage.size`
* `map`
* `totalStorage`

---
## Revision

What is calculated as a result of the following code execution?

```python
numbers = [100, 2, 2, 5]
print(reduce(lambda x, y: x / y, numbers))
```
???


* `(((100 / 2) / 2) / 5) = 5.0`
* `(((100 / 2) / 2) / 5) = 5`
* `(100 / 2 / 2 / 5) = 5.0`
* `2`

---
## Footnotes
[1:Functional Programming]
*The style of programming that eschews imperative loops such as for loops is called functional programming. For more information about functional programming and Python, see the related workout, since the topic is too broad to cover in one lesson.*
