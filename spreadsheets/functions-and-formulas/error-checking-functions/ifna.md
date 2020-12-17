---
author: Stefan-Stojanovic

type: normal

category: how to

links:
  - '[IFNA](https://support.google.com/docs/answer/9365944){documentation}'

---

# IFNA

---
## Content

The `=IFNA()` function is used to evaluate a value and, if it is a [#N/A error](https://www.enki.com/glossary/spreadsheets/name-error), it will return a different specified value.

The syntax is:
```plain-text
=IFNA(value, value_if_na)
```

Both `value` and `value_if_na` are required.

The `value` is what we want to check for an [#N/A error](https://www.enki.com/glossary/spreadsheets/name-error).

The `value_if_na` is what we want to return if `value` evaluates to a [#N/A error](https://www.enki.com/glossary/spreadsheets/name-error).

![ifna](https://img.enkipro.com/34288db76b020d1f6f9bf84c76309683.png)

---
## Practice

Using this table:

| \ | A    |
|---|------|
| 1 | #N/A |

What is the result of this function:

```plain-text
=IFNA(A1, "error")
```

???

- 'error'
- #N/A
- null

