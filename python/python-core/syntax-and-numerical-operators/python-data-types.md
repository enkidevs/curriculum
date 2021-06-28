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

Everything in Python has a data type or a [class](https://enki.com/glossary/general/class). The most important ones are as follows:

- **Strings** (str) - To store any sequence of characters. Like a name or an address.

A string is always wrapped in either `'single'` or `"double quotes"`

```bash
>>> type('person123')
# <class 'str'>
```

Though it's more pythonic[1] to use single quotes until you need double quotes.

- **Integers** (int) - To store whole numbers.

```bash
>>> type(12)
# <class 'int'>
```

- **Floats** (float) - To store decimal numbers.

```bash
>>> type(12.0)
# <class 'float'>
```

For the hardcore mathematicians, there is also a `complex`[2] class. However, it isn't all that important for the rest of us.


> We can use Python's built-in `type()` function, passing an argument in parenthesis, to see the data type, or *class*, of our argument.

Other Python data types that you'll soon learn about are:

- **Boolean**
- **Set**
- **Dictionary**
- **List**
- **Tuple**


> 🤔 Why don't we use floats all the time instead of dealing with integers? 
>
> Leave a comment or view some of the other comments for inspiration before moving on.

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

[1:Pythonic]
Pythonic is an adjective used to describe code that is clear, concise and maintainable.

Pythonic means code that doesn't just get the syntax right but that follows the conventions of the Python community and uses the language in the way it's intended to be used.

[2:Complex Numbers]
Complex numbers come in the form `a + b*j`, where `a` is a real number, `b` is an imaginary number and `j` represents `√−1`.

```python
complex_value = 3 + 5j
type(complex_value)
# <type 'complex'>
```
