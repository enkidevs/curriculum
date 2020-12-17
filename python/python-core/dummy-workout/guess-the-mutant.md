---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: tetris

category: must-know

---
# Guess the mutant

---
## Content

Objects which values can change are considered **mutable** objects. This property is really important and quite deterministic when talking performance.

Can you guess which of the following types are immutable and which are not?

---
## Game Content

immutable:mutable
```false
int
%exp
Numeric types are immutable in python. `int` is one of them.
%
float
%exp
Numeric types are immutable in python. `float` is one of them.
%
complex
%exp
`complex` is a numeric type as well. It defines complex numbers.
%
bool
%exp
`bool` is an immutable type.  
%
str
%exp
`str` is immutable in Python, making them fairly trivial to use in multi-threaded environments and not only.
%
tuple
%exp
A `tuple` is a sequence of immutable objects in python. So the `tuple` itself is immutable too.
%
bytes
%exp
`bytes` objects are immutable sequences of single bytes. Since many major binary protocols are based on the ASCII text encoding, `bytes` objects offer several methods that are only valid when working with ASCII compatible data and are closely related to string objects.
%
frozenset
%exp
`frozenset` is a immutable implementation of the `set`. The `frozenset` type is immutable and **hashable**; it can therefore be used as a `dictionary` key or as an element of another `set`.
%
bytecode
%exp
Python source code is compiled into `bytecode`, the internal representation of a Python program in the CPython interpreter.
This is an immutable type.
%
```

```true
list
%exp
A `list` is an ordered collection of values.
This type is **mutable** in Python.
%
bytearray
%exp
`bytearray` objects are sequences of integers (between 0 and 255), representing the ASCII value of single bytes. They are mutable in python as well.
%
array
%exp
`array`s are actually lists that can contain different data types.

They are **mutable** in python.
%
set
%exp
`set`s respect the structure of lists in python with the only exception that don't allow duplicate items.

This type is **mutable**.
%
dict
%exp
`dict` comes from dictionary and it is a sequence which, unlike the others, is indexed by keys which can be of any immutable type.
However, the `dict` remains a **mutable** type.
%
deque
%exp
The `deque` type is a generalisation of the Stack or Queue, supporting appending and retrieving from both sides.

The `deque` type is mutable.
%
namedTuple
%exp
`namedTuple`s assign meaning to each position in a `tuple`. They add the ability of accessing specific fields using names instead of indexes.
They are **mutable**.
%
Counter
%exp
A `counter` is a `dict` subclass for counting hashable objects.
Hence, they are mutable.
%
UserList
%exp
The `UserList` class simulates a `list`, mainly available for backwards compatibility.

They are as well **mutable**.
%
ChainMap
%exp
A `ChainMap` is a class from the `collections` module that provides the ability to link multiple mappings together such that they end up being a single unit.

It is mutable in python.
%
MutableString
%exp
Available for backwards compatibility, the `MutableString` class of `UserString` module acts like a wrapper around string objects, redefining them as mutable.
%
OrderedDict
%exp
An `OrderedDict` is a `dictionary` subclass that remembers the order in which its contents are added.

This is a **mutable** as well.
%
UserDict
%exp
This class is another wrapper around the `dict` type, making it **mutable**.
%
```
 
