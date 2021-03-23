---
author: emmab
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# ZIP Codes


---

## Content

Another way we can use regex to solve **real world problems** is to check whether ZIP codes are formatted correctly.

We're going to use US ZIP codes for our example.

Typically these consist of 5 digits.

> 💡 Fun fact: In 1983, an extended ZIP+4 code was introduced; it includes the five digits of the ZIP code, followed by a hyphen (or space) and four digits that designate a more specific location.

We want both ZIP and ZIP+4 formats to be valid in our ZIP code checker!

The first bit is easy, right?

We can check that it starts with 5 digits by using `\d` and a quantifier `{5}`.

We can also check for the last 4 optional digits the same way, `\d{4}`.

As we want our checker to allow both hyphens and spaces between the 5 and 4 digit parts, we can make a set containing these characters `[-\s]`.

Tying this all together we have the following pattern:

`/^\d{5}([-\s]\d{4})?$/`

Notice how we have grouped the whole second part so that we can make it optional, `([-\s]\d{4})`, using a `?`.

This means that our regex pattern will work for ZIP codes such as 58701-0124 as well as for 58701 🎉.


---

## Practice

The following regex pattern would match `65807` as well as `65807-4589`.

`/^\d{5}([-\s]\d{4})$/`

???

- `False`
- `True`


---

## Revision

Complete the following regex pattern to match both ZIP (`65807`) and ZIP+4 (`65807-4589`) codes:

```plain-text
/^\d{5}([-\s]\d{4})???$/
```

- `?`
- `*`
- `+`
- `\.`
