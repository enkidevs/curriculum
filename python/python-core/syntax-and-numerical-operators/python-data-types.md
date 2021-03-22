---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Pythonic](https://stackoverflow.com/questions/25011078/what-does-pythonic-mean){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Fundamental Data types


---

## Content

Everything in Python has a data type, or *class*[1]. The ones you need to know about now are:

- **Integers** - any whole number. Integers belong to the `int` class:

```bash
>>> type(12)
# <class 'int'>
```

- **Floats** - any decimal number. Floats belong to the `float` class:

```bash
>>> type(12.0)
# <class 'float'>
```

For all you mathematicians out there, there's one more numerical data type to be aware of: `complex`[2]. For everyone else, you don't need to worry about these 😅!

- **Strings** - any character wrapped in single or double quotes (`''` or `""`). Strings belong to the `str` class:

```bash
>>> type('12')
# <class 'str'>
```

By using single quotes you can *embed* double quotes and vice-versa:

```python
single = 'I can use "these"'
double = "I can use 'these'"
```

Though it's more pythonic[3] to use single quotes until you need double quotes.

> We can use Python's built-in `type()` function, passing an argument in parenthesis, to see the data type, or *class*, of our argument.

Other Python data types that you'll soon learn about are:

- **Boolean**
- **Set**
- **Dictionary**
- **List**
- **Tuple**


---

## Practice

What class does the following return?

```python
>>> type('Learning Python')
# <class '???'>
```

- str
- string
- text
- data


---

## Revision

```python
>>> type('3.0')
# <class '???'>
```

- str
- string
- float
- int


---

## Footnotes

[1:Classes]
A class is a code template where objects are created. For example, we may have a Car class which acts as a factory for making unique car objects. These cars will belong to the Car class.

[2:Complex Numbers]
Complex numbers come in the form `a + b*j`, where `a` is a real number, `b` is an imaginary number and `j` represents `√−1`.

```python
complex_value = 3 + 5j
type(complex_value)
# <type 'complex'>
```

[3:Pythonic]
Pythonic is an adjective used to describe code that is clear, concise and maintainable.

Pythonic means code that doesn't just get the syntax right but that follows the conventions of the Python community and uses the language in the way it's intended to be used.
