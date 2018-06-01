---
author: alexjmackey
levels:
  - beginner
type: normal
category: must-know
inAlgoPool: false
standards:
  javascript.evaluate-expressions.10: 10
  javascript.evaluate-expressions.2: 10
tags: []
aspects:
  - introduction
---

# Types - String


---

## Content

You can declare a string value in JavaScript using either single or double quotes - JavaScript will accept either:

```bash
var company = "Enki";
var company = 'Enki';
```

If you have longer text you can wrap multiple lines by using the + operator:

```bash
var longerText = "abc" +
		"def" +
		"ghi";
```

You can also use the backslash character to continue writing text on multiple lines (make sure nothing is after the backslash).

```bash
var longerText = "abc\
def\
ghi";
```

There are also special characters that can be used by preceding the character with a backslash. Here are some common ones:

```bash
\’ single quote
\" double quote
\\ backslash
\n new line
\r character return
\t tab
```


---

## Practice

What special character is used to add a `new line` to strings?

```javascript
var myString = 'this will ???
       be displayed on two lines';
```

* `\n`
* `+`
* `"`
* `\`
* `\r`
* `\t`


---

## Revision

Which one of the following is correct ?

```bash
var company = "Enki";
var company = 'Enki';
```

???

* both
* first
* second
* none

