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
  context: standalone
---

# Regex basics


---

## Content

Very basic regex patterns can be *identical to the content* of the text we want to test:

```plain-text
text = 'Fred'

/fred/ ❌

/Fred/ ✅
```

However, most of the time we want to make our patterns a bit more flexible...

Say we want to find all names beginning with `'Fre'` from the following list:

'Fred, Freya, Francis'

We could use `/Fre/` as our regex pattern to match the following:

'`Fre`d, `Fre`ya, Francis'

> 💡 This would not match the whole name, just the letters 'Fre'.

In order to match the whole name, we'd have to use quantifiers and wildcards - more about those next!


---

## Practice

How could we match items in a shopping list that include the word 'apple'?

???

- `/apple/`
- `/a/`
- `/🍏/`
- `/Apple/`


---

## Revision

When writing regex patterns, capitalization matters.

???

- True
- False
