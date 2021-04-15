---
author: catalin
type: normal
category: feature
links:
  - '[pymotw.com](https://pymotw.com/2/codecs/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/codecs.html){website}'
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

# Unicode character database at your hands


---

## Content

Python's self explanatory module called `unicodedata` provides the user with access to the **Unicode Character Database** and implicitly every character's properties.

Lookup a character by name with `lookup`:

```python
>>> import unicodedata
>>> unicodedata.lookup\
... ('RIGHT SQUARE BRACKET')
']'

```

Get a character's name with `name`:

```python
>>> unicodedata.name(u'~')
'TILDE'
```

Get the category of a character:

```python
>>> unicodedata.category(u'X')
'Lu'
# L = letter, u = uppercase
```

To get the version of the **Unicode Database** currently used:

```python
>>> unicodedata.unidata_version
'8.0.0'
```


---

## Practice

Get the category of the specified character:

```python
>>> ???.???(u’L’)
‘Lu’
#Letter, uppercase
```

- `unicodedata`
- `category`
- `lookup`
- `name`
- `unicode`
- `data`


---

## Revision

Get the name of the specified character:

```python
>>>unicodedata.???(u’~’)
‘TILDE’
```

- `name`
- `lookup`
- `category`
