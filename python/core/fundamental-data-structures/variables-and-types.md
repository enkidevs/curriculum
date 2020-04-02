---
author: tommarshall

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

---

# Variables and Types

---
## Content

There are few things to keep in mind when talking about Python:
- it is an entirely *object-oriented* programming language
- each variable is an *object*
- variables and their types **don't** need to be declared before assigning them values

To define a string (`str` type), you can either use single or double quotes:
```python
string_1 = 'Enki'
string_2 = "Enki"
```

Using single quotes will allow unescaped embedding of double quotes and vice-versa:
```python
single = 'I can use "these" '
double = "I can use 'these' "
```

It is most Pythonic[1] to use single quotes until you need double quotes.

To define integers (keep in mind these are signed, as in they are positive unless specified as negative):
```python
int_1 = 23
int_2 = -3
```

Longs (long integers) are also available - as integers of infinite size and followed by the letter `L`:
```python
long_int = 0122L
```
Note that `long` and `int` are **unified** in Python 3.x and you do not need to worry about long integers anymore.  

Floating point numbers:
```python
float_value = 7.0
```

Python also provides support for complex numbers in the form `a + b*j`, where `a` and `b` are floats and `j` represents the square root of `-1`:
```python
complex_value = 3 + 5j
```

Using the built-in `type()` function, we can find out what type a variable is:
```python
print(type(int_2))
# <type 'int'>

print(type(complex_value))
# <type 'complex'>
```

---
## Practice

Fill in the output given by calling the `type()` function on the following variables:
```python
a = -8.9
print(type(a))
# <type '???'>

b = 877734314j
print(type(b))
# <type '???'>

c = '"3.14"'
print(type(c))
# <type '???'>
```

* `float`
* `complex`
* `str`
* `long`
* `int`

---
## Revision

Fill in the types of the following variables:

```python
b = 100j
print(type(b))
# <type '???'>

c = '100'
print(type(c))
# <type '???'>
```


* `complex`
* `str`
* `float`
* `int`
