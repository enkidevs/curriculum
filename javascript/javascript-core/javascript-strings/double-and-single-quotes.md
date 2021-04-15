---
author: fsites
type: normal
category: best-practice
tags:
  - obscura
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Double & Single Quotes


---

## Content

There are different types of values you can store in variables. One such type is called string, and it represents a sequence of text. 

To create a string add either single or double quotes around the text. Generally, double and single quotes are handled the same way.

```js
let str1 = 'I\'m a string.';
let str2 = "I'm a string.";
```

`str1` and `str2` output the same string but `str2` is easier to read since it doesn't require an escape character in `I'm`.

JSON standards *require* strings to be double quoted. For consistency, some developers prefer to stick to double quotes on all strings.

However, modern linters often recommend using single quotes in JavaScript, with double quotes reserved for HTML only.


---

## Practice

JSON standards require strings to be ??? quoted. However some modern linters recommend using ??? quotes only in JavaScript.

- double
- single
- no


---

## Revision

JSON standard requires every string to be ??? quoted.

- double
- single
 
