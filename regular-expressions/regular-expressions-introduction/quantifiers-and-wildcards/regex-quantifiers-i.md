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

# Quantifiers I


---

## Content

Quantifiers allow us to build patterns that have additional characters without explicitly writing those characters.

When we know how many times we want something repeated, we can put that number inside curly brackets `{ }`.

The second optional number inside the curly brackets determines the maximum number of times the character before can be repeated. And we can even determine that this should be infinite.

Let's have a look at some examples!

```plain-text
/abc{3}/
```

`ab` followed by exactly three `c`'s

```plain-text
/abc{3,}/
```

`ab` followed by three or more `c`'s

```plain-text
/abc{3,6}/
```

`ab` followed by three, four, five or six `c`'s


---

## Practice

Which of these regexes would NOT match `abcc`?

???

- `/abc/`
- `/abc{1,2}/`
- `/abc{1,}/`
- `/abc{2}/`


---

## Revision

Which of these regexes would **NOT** match `abccc`?

???

- `/abc{1,2}/`
- `/abc{1,3}/`
- `/abc{1,4}/`
- `/abc{2,4}/`
