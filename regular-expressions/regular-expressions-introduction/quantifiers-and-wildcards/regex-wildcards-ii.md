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

# Wildcards II


---

## Content

Going back to our previous example - if we wanted to find all names beginning with `'Fre'` then we could write our regex pattern as:

```plain-text
/Fre\w*/
```

This would match the names that start with `'Fre'`, and then have zero or more word characters.

`Fred` ✅
`Freya` ✅
Francis ❌

Here are a few more wildcards that can be used when you want to be more specific than using a `.`, `\w` or `\W`!

`\s` matches all whitespace characters - spaces, tabs and line-breaks.

`\S` matches all non-whitespace characters

We could use the following regex pattern to match these three strings:

```plain-text
/\s+abc/

' abc' ✅
'	abc' ✅
'    abc' ✅
'abc' ❌
```

`\d` matches all digits

`\D` matches all non-digits

We could match just the numbers in the following strings by using this regex:

```plain-text
/\d/
```

| Text             | Match |
| ---------------- | ----- |
| abc`123`xyz      | ✅     |
| define = "`456`" | ✅     |
| var g = `789`;   | ✅     |
| abc              | ❌     |

In this case, `/\d/` will match 1, 2 and 3 individually. If we want to match 123 then we could use `/\d+/` or `/\d*/`.


---

## Practice

Which regex pattern would match any non-digits in the following text?

`abc`123`xyz`

???

- `/\D/`
- `/\d/`
- `/\S/`
- `/\s/`


---

## Revision

Which regex pattern would match any non-whitespace characters in the following text?

`green eggs and ham`

???

- `/\S/`
- `/\d/`
- `/\D/`
- `/\s/`
