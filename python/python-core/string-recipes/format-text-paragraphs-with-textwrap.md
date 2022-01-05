---
author: catalin
type: normal
category: how-to
links:
  - '[pymotw.com](https://pymotw.com/2/textwrap/){website}'
  - >-
    [docs.python.org](https://docs.python.org/3.5/library/textwrap.html){website}
notes: String manipulation workout
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

# Format text paragraphs with `textwrap`


---

## Content

Python's `textwrap` module is useful for rearranging text, e.g. wrapping and filling lines.

Import the module:

```python
import textwrap
```

Wrap the text in the string *"parallel"*, so that all lines are a maximum of `x` characters long:

```python
# When x = 2
textwrap.wrap("parallel", width=2)
# Output:
# ['pa', 'ra', 'll', 'el']

# When x = 4
textwrap.wrap("parallel", width=4)
# Output:
# ['para', 'llel']
```

Returns a list of lines (without trailing newlines).

If we would like to include trailing newlines (`\n`) after each string of a certain `width` we can use the following syntax:

```python
'\n'.join(textwrap.wrap('text', width=2))
# Output:
# 'te\nxt'
```

You can also use `fill` (a shorthand notation) to achieve the same result:

```python
textwrap.fill("text", width=2)
# Output:
# 'te\nxt'
```

> 💡 `fill` accepts the same keyword arguments as `wrap`

Collapse and truncate a text to `width` :

```python
print(textwrap.shorten
("Hello world!", width=12))
print(textwrap.shorten
("Hello world!", width=11))
# Hello world!
# Hello [...]
```

The last words are dropped if the text is longer than the width argument.

Other useful methods like `indent` and `dedent` are available in this module.


---

## Practice

Truncate `text` to `17` characters max:

```python
???.???(text, ???=17)
```

- `textwrap`
- `shorten`
- `width`
- `fill`
- `format`
- `length`
- `text`


---

## Revision

Wrap the `text` with a maximum of 30 chars per line:

```python
textwrap.???(text, ???=30)
```

- `wrap`
- `width`
- `format`
- `fill`
- `length`
- `max`
