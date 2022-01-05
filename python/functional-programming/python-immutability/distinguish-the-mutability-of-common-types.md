---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [PYTHON OBJECTS: MUTABLE VS.
    IMMUTABLE](https://www.geeksforgeeks.org/mutable-vs-immutable-objects-in-python/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Distinguish the Mutability of Common Types


---

## Content

Different types, depending on the language, might be mutable or immutable.

In Python, the **majority** of the type system is actually composed of **immutable** objects. This gives a valuable insight into the way the designers of the Python language intend the types to be used.

Another good example is the `string` type in Java, which the language treats as an immutable object. Whenever something is appended to a string, a new string with that modification is actually made behind-the-scenes instead of modifying the original string.

In Python, the **immutable** types are:

- `int`
- `float`
- `decimal`
- `complex`
- `bool`
- `string`
- `tuple`
- `range`
- `frozenset`
- `bytes`

The **mutable** types are:

- `list`
- `dict`
- `set`
- `bytearray`
- User-defined custom classes (unless specifically made immutable)

In summary, collections of objects and custom classes are almost always **mutable**. Scalar (or *base*) data types[1] are usually **immutable**. The only exceptions to these rules are:

- `tuple`, which is an **immutable** container.
- `frozenset`, which is an **immutable** version of `set`.
- `bytearray` can be used as a **mutable** alternative to `string`.

But why is it important to know which types in Python are immutable or mutable? It may seem like a mere technicality, but the data type you use can affect the efficiency of your program dramatically given the correct circumstances.

For example, consider the following code snippet:

```python
string = ""
for line in file:
  string += str(line)
```

In this case, while the code will execute and perform the functionality correctly, as we increase the size of the string it will become increasingly more inefficient. This is because of the immutability of the `string` type, which causes the concatenation operation performed at each iteration to create a whole new copy of the string. As we reach the end of a large file, every iteration of the loop will be creating and discarding a very large string, which could potentially be needlessly I/O intensive and a waste of memory.

With the knowledge of which data types are mutable, you can choose a better data type to carry out the above operation, increasing efficiency for this case:

```python
list = [] # List is mutable!
for line in file:
  list.append(str(line))
"".join(list)
```

Since `list` is mutable, it is not discarded and a new copy created at each step. It is a good idea for us to try and keep the mutability of our chosen data types in mind as we write our code to avoid these efficiency pitfalls.


---

## Practice

Which of the following types are immutable?

`tuple`, `complex`, `set`, `dict`, `range`, `frozenset`

???

- tuple, complex, range, frozenset
- tuple, complex, set, range, frozenset
- tuple, complex, set, dict, range, frozenset
- complex, range, frozenset
- complex, range, set, frozenset


---

## Revision

What is the default mutability of user-defined custom classes that have not had a mutability type explicitly declared?

???

- Mutable
- Strongly Immutable
- Weakly Immutable
- Immutable
- Neither


---

## Footnotes

[1:Scalar Data Types]
In programming languages, data types are said to be **scalar** or **base** data types when they hold only one item of data each. This is in contrast to **collections** or **containers** which are the family of data types that have the ability to encapsulate multiple separate items of data, each of which will be of one of the language's scalar types.
 
