---
author: tommarshall

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  python.native-types-operations.2: 10

---

# Variables and Types

---

## Content

There are few things to keep in mind when talking about Python:

- it's an entirely _object orientated_ programming language
- each variable is an _object_
- variables and their types **don't** need to be declared before using them

To define a string (`str` type), you can either use single or double quotes:

```python
str = 'enki'
str_2 = "enki"
```

Using single quotes will allow unescaped embedding of double quotes and vice-versa:

```python
single = 'I can use "these" '
double = "I can use 'these' "
```

It's most Pythonic[1] to use single quotes until you need double quotes.

To define integers (keep in mind these are signed):

```python
int = 23
int_2 = -3
```

Longs (long integers) are also available - as integers of infinite size and followed by the letter `L`:

```python
long = 0122L
```

Note that `long` and `int` are **unified** in Python 3.x and you don't need to worry about long integers anymore.

Floating point numbers are also easily defined:

```python
float_value = 7.0
```

Last, but not least, Python also provides support for complex numbers of form `a + b*j`, where `a` and `b` are float numbers and `J` represents the square root of `-1`:

```python
complex_value = 3 + 5J
```

Using the built-in `type()` function we can find out what type a variable has:

```python
print(type(integer_2))
# <type 'int'>

print(type(complex))
# <type 'complex'>
```

---

## Practice

Fill in the output given by calling the `type()` function on the following variable types:

```python
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

- `float`
- `complex`
- `str`
- `long`
- `string`
- `int`
- `integer`
- `floating`

---

## Revision

Do you know what type do the following variable have?

```python
b = 100J
print(type(b))
# <type '???'>

c = '100'
print(type(c))
# <type '???'>
```

- `complex`
- `str`
- `float`
- `string`
- `int`
- `integer`
- `floating`
