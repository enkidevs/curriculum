---
author: Bruno
type: normal
category: tip
links:
  - >-
    [www.python.org](https://www.python.org/dev/peps/pep-0008/#whitespace-in-expressions-and-statements){website}
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Following PEP 8 styling guideline.


---

## Content

Python's most common and standard styling guideline is PEP 8, designed to improve readability.

It can, however, be quite strict (e.g. in the case of whitespaces).

For instance, this is OK in PEP 8:

```python
john = 1
ted = 2
fred = 3
```

but this is not allowed:

```python
john = 1
ted  = 2
fred = 3
```

Raymond Hettinger's word of wisdom:
"Do not PEP 8 unto others; only PEP 8 thy self.
Don't let PEP 8 make you insanely intolerant of other people's code."

To PEP 8 yourself, use a linter and an autoformatter. These exist for all the popular editors.


---

## Practice

Is the following syntax in accordance with PEP8 rules?

```python
def func():
  new_element = 0
  new_string  = 's'
```

???

- no
- yes
- not applicable


---

## Revision

Which of the following is allowed in the PEP8 styling guidelines?

???

```python
# Option A
one = 1
two = 2
three = 3

# Option B
one   = 1
two   = 2
three = 3
```

- `Option A`
- `Option B`
