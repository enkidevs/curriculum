---
author: fsites

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

standards:

  javascript.javascript-syntax.2: 10

tags:

  - obscura

  - introduction


aspects:
  - obscura
  - introduction


---

# Double and single quotes

---
## Content

Generally, double and single quotes are handled the same way.

```
str1 = 'I\'m a string.';
str2 = "I'm a string.";
```
`str1` and `str2` output the same string but `str2` is easier to read since it doesn't require an escape character in `I'm`.

JSON standards *require* strings to be double quoted. For consistency, some developers prefer to stick to double quotes on all strings.

However, modern linters often recommend using single quotes in JavaScript, with double quotes reserved for HTML only.

---
## Practice

JSON standards require strings to be ??? quoted. However some modern linters recommend using ??? quotes only in JavaScript.


* double
* single
* no

---
## Revision

JSON standard requires every string to be ??? quoted.


* double
* single
 
