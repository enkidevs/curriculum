# Variables and Types
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

There are few things to keep in mind when talking about Python:
- it's an entirely *object orientated* programming language
- each variable is an *object*
- variables and their types **don't** need to be declared before using them

To define a string (`str` type), you can either use single or double quotes:
```py
string = 'enki'
string_2 = "enki"
```

Using single quotes will allow unescaped embedding of double quotes and vice-versa:
```py
single = 'I can use "these" '
double = "I can use 'these' "
```

It's most Pythonic[1] to use single quotes until you need double quotes.

To define integers (keep in mind these are signed):
```py
integer = 23
integer_2 = -3
```
Note that `long` and `int` are **unified** in Python 3.x and you don't need to worry about long integers anymore.  

Floating point numbers are also easily defined:
```py
float_value = 7.0
```

Last, but not least, Python also provides support for complex numbers of form `a + b*j`, where `a` and `b` are float numbers and `J` represents the square root of `-1`:
```py
complex_value = 3 + 5J
```

Using the built-in `type()` function we can find out what type a variable has:
```py
print(type(integer_2))
# <type 'int'>

print(type(complex))
# <type 'complex'>
```
---
## Practice

Fill in the output given by calling the `type()` function on the following variable types:
```py
a = -8.9
print(type(a))
# <type '???'>

b = 877734314J
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
* `string`
* `int`
* `integer`
* `floating`

---
## Revision

Do you know what type do the following variable have?
```py
b = 100J
print(type(b))
# <type '???'>

c = '100'
print(type(c))
# <type '???'>
```

* `complex`
* `str`
* `float`
* `string`
* `int`
* `integer`
* `floating`
