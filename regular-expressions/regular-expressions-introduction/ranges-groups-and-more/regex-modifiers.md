---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Regex
    Modifiers](https://www.regular-expressions.info/refmodifiers.html){website}
  - '[Regex in Ruby](https://ruby-doc.org/core-2.7.1/Regexp.html){website}'
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

# Modifiers


---

## Content

Modifiers change the *whole nature of our regex pattern*.

They're written outside of the `//` like so:

```plain-text
/hello/i
```

The `i` modifier makes the whole regex pattern case insensitive, so the following would all match:

`hello`, `Hello`, `HeLlO`, `HELLO` ✅✅✅✅

The `m` modifier makes the `^` and `$` anchors match the *start and end of a new line* rather than an entire string.

A regex expression with an `m` modifier would allow the pattern to check across multiple lines:

```plain-text
/^(start|another).*(line)$/m
```

```plain-text
start of a line
another line
```

> 💡 When using Ruby, the anchors `^` and `$` always match on all lines. There is no way to turn this option off. This is actually quite a nice way to do things as there are separate anchors for the beginning and end of strings: `\A`, `\Z` and `\z`.

There are many more modifiers which you can read about [here](https://www.regular-expressions.info/refmodifiers.html).


---

## Practice

How would you make the following regex pattern match all four abbreviations?

```plain-text
/a[lkzr]/???
```

`AL, AK, AR, AZ` ✅✅✅✅

- `i`
- `^`
- `$`
- `m`


---

## Revision

How would you make the following regex pattern match all four abbreviations?

```plain-text
/regexp?/???
```

`Regex, Regexp, RegEx, RegExp` ✅✅✅✅

- `i`
- `^`
- `$`
- `m`
