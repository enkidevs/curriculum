---
author: emmab
tags:
  - introduction
type: normal
category: must-know
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

# Intro to Sequential Data Types


---

## Content

There are several different *sequential* data types in Python. These are ones that are *ordered in a defined sequence.*

Strings are an example of a sequential data type.

```python
text = 'Order matters!'
```

> Elements in sequential data types can be *accessed via their indexes*.

```python
print(text[0])
# 'O'

print(text[1])
# 'r'

print(text[13])
# '!'
```

Indexes are basically *measures of position*. All elements within a variable start at index 0.

The index used must be valid:

```python
print(text[14])
# IndexError: str index out of range
```

Strings are also an **immutable data type** which means that items cannot be reassigned.

Most python objects (booleans, integers, floats, strings, and tuples) are immutable. This means that after you create the object and assign some value to it, you can't modify that value.

```python
text[13] = '.'
# TypeError: 'str' object does not support item assignment
```


---

## Practice

What's the correct output for the following?

```python
text = 'Strings can be accessed via indexes!'

print(text[1])
# '???'
```

- `t`
- `S`
- `!`
- `s`


---

## Revision

What's the correct output for the following?

```python
text = 'Strings can be accessed via indexes!'

print(text[O])
# '???'
```

- `S`
- `s`
- `!`
- `t`
