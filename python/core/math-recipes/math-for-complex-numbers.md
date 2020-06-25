---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: tip

inAlgoPool: false

aspects:
  - introduction
  - workout
  - deep
standards:
  python.standard-library-data.1: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/cmath.html){website}'


---

# Math for complex numbers

---
## Content

Another module for mathematical operations is available by default in Python. `cmath` is specialised for operations on complex numbers.

Its methods can take any type of number as arguments, but also any object that has either a `__complex__` or `__float__` definition.

Import the module:
```python
import cmath
# create a complex number
# (module not required)
z = complex(3,4) # real, imag parts
z = 3 + 4j
```

Imaginary and real parts of complex numbers:
```python
# complex number
# z == z.real + z.imag*1j
print(z.real) # 3.0
print(z.imag) # 4.0

```
Get the phase of a number:
```python
# equiv to
# math.atan2(x.imag, x.real)
print(cmath.phase(z))
# 0.9272952180016122
```
Get polar representation:
```python
# equiv to (abs(x), phase(x))
print(cmath.polar(z))
# (5.0, 0.9272952180016122)
```

Other functions from the `math` module are available for complex numbers too:
```python
print(cmath.log(z))
# (1.6094379124341003+0.9272952180016122j)
print(cmath.cos(z))
# (-27.034945603074224-3.8511533348117775j)
```

---
## Practice

Fill the gaps such that the variable given is correctly created as a complex number, then print its imaginary part:
```
import cmath
z = 7 + 1???
print(z.???)
```

* `j`
* `imag`
* `imaginary`
* `i`
* `cmath`
* `complex`

---
## Revision

Fill the gaps to create a complex number with the given values for the real and imaginary parts:
```
import ???
z = ???(2, 4)
```


* `cmath`
* `complex`
* `c`
* `math`
* `create`
