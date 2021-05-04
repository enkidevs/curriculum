---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Quantifiers II


---

## Content

### More general quantifiers

When we don't know the number of times we want something repeated we can use more general metacharacters[1] as our quantifiers.

Here's how they work:

```plain-text
/abc?/
```

`ab` followed by an optional `c`

```plain-text
/abc*/
```

`ab` followed by zero or more `c`'s

```plain-text
/abc+/
```

`ab` followed by one or more `c`'s

These metacharacters are super useful as they add much more flexibility to our regex patterns.


---

## Practice

Which of these would be a match for the following regex pattern?

```plain-text
/aeiouy?/
```

???

- aeiou
- aeiouyy
- aeio


---

## Revision

Which of these would be a match for the following regex pattern?

```plain-text
/abc+/
```

???

- All of them
- abccccc
- abccc
- abc


---

## Footnotes

[1:Metacharacters]
A metacharacter is a character that has a special meaning. They are the building blocks of regexes. Characters in regex are either a *metacharacter with a special meaning* or a *regular character with a literal meaning.*
