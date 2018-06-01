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
# Built-in

---
## Content

Think of Python's Standard Library as an efficient toolbox. However, not all types provided by it are built-in and they require an `import`.

Can you guess which types are built-in and which are not?

---
## Game Content

built-in:imported
```false
int
%exp
`int` is a built-in type in **Python**.
%
complex
%exp
`complex` is a built-in numeric type in **Python**.
%
float
%exp
`float` is a built-in numeric type in **Python**.
%
frozenset
%exp
The `frozenset` is an built-in immutable type in **Python**.
%
memoryview
%exp
`memoryview` is a built-in core type for manipulating binary data.
%
tuple
%exp
One built-in basic sequence type in **Python** is `tuple`.
%
range
%exp
`range` is one of the three built-in basic sequence types in **Python**.
%
str
%exp
Textual data in **Python** is handled by a built-in type called `str`.
%
bytearray
%exp
`bytearray` is a built-in type in **Python** used for manipulating binary data.
%
bytes
%exp
`bytes` is a built-in type in **Python** used for manipulating binary data.
%
dict
%exp
`dict` is a built-in mapping type in **Python**. It's acronym for **dictionary**.
%
set
%exp
`set` is a built-in mutable set type.
%
```

```true
enum
%exp
An enumeration is a set of symbolic names bound to unique, constant values. It's not built-in in **Python**.
%
struct
%exp
`struct` performs conversions between **Python** values and **C** structs represented as **Python strings**. You need to `import struct` to work with it in **Python**.
%
codecs
%exp
`codecs` module defines base classes for encoding and decoding in **Python**. `import codecs` is required in order for this module to be used.
%
weakref
%exp
This module allows programmers to make **weak references** to objects. `import weakref` is required here.
%
array
%exp
`array`s are sequence types and behave very much like **lists**, except that the **type** of objects stored in them is **constrained** (only chars, ints and floats can be stored in arrays). In order to use arrays in **Python** you need to `import array`.
%
datetime
%exp
The `datetime` module supplies classes for manipulating dates and times in both, simple and complex ways. This modul needs to be imported.
%
decimal
%exp
This module provides support for fast correctly-rounded decimal floating point arithmetic. `import decimal` is required.
%
string
%exp
`string` module needs to be imported in **Python**.
%
calendar
%exp
When imported, this module provides additional useful functions related to calendar.
%
bisect
%exp
This module helps maintaining a list in sorted order, without having to sort the list after each insertion. `import bisect` is required in **Python**.
%
pprint
%exp
`pprint` provides the ability to "pretty print" arbitrary **Python** data structures. In order to use this module in **Python** it must be imported.
%
copy
%exp
For collections that are mutable or contain mutable items, a copy is sometimes needed so one can change one copy without changing the other. To use this module in **Python** you need to `import copy`.
%
re
%exp
When imported, this module provides regular expression matching operations.
%
os
%exp
This module provides a portable way of using operating system dependent functionality. To use it in **Python** `import os` is required.
%
io
%exp
When imported, the `io` module provides Python’s main facilities for dealing with various types of I/O
%
time
%exp
Time related functions can be found in this module. `import time` is required.
%

```
