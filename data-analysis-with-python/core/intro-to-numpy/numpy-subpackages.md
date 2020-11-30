---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Numpy Sub-packages

---
## Content

`numpy` has several sub-packages:

| Subpackages |                                  Description                                  |
|-------------|:-----------------------------------------------------------------------------:|
| doc         | Topical documentation on broadcasting, indexing, etc.                         |
| lib         | Basic functions used by several sub-packages.                                 |
| random      | Core Random Tools                                                             |
| linalg      | Core Linear Algebra Tools                                                     |
| fft         | Core FFT routines                                                             |
| polynomial  | Polynomial tools                                                              |
| testing     | NumPy testing tools                                                           |
| f2py        | Fortran to Python Interface Generator.                                        |
| distutils   | Enhancements to distutils with support for Fortran compilers support and more |

Everything `numpy` has to offer is split into these packages. 

To import a subpackage, you should run this command:
```python
from numpy import SUBPACKAGE_NAME
```

For instance:
```Python
from numpy import lib
```

To get help on a subpackage you can type:
```python
help(SUBPACKAGE_NAME)
```

For instance:
```python
help(lib)
```

To check the documentation for `numpy` you can do:
```python
np?
```

This will list all the sub-packages, as well as some other useful information regarding `numpy` in the form of a single page document.

> The `?` is a Python command and can be used on any function/import for additional information.

---
## Practice

How do you import a subpackage from `numpy`?

```python
??? ??? ??? ???
```

- from
- numpy
- import
- subpackage_name
- in
- add

---
## Revision

What does the `np?` command do?

???

- Show documentation on the library imported with the name `np`.
- Askes the compiler if it has `No Pressure?`.

