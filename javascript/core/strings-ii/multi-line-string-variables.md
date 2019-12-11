---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

standards:

  javascript.evaluate-expressions.3: 10

  javascript.write-expressions.1: 10

tags:

  - strings

  - html

  - introduction

  - workout


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/805107/creating-multiline-strings-in-javascript/6247331#6247331){website}'


aspects:
  - introduction
  - workout


---

# Multi-line string variables

---
## Content

For readability, it may be preferable to write strings over multiple lines:

```javascript
let stringOfHTML = "<div>
  This is a bad example.
</div>";
```
However, this will cause an error. 


To preserve both readability and functionality, use string concatenation:

```javascript
let stringOfHTML = '<div>' +
  '  This is a better example.' +
'</div>';
```

Or, since ES2015, it is possible to use backticks (`` ` ``), in this form:

```javascript
let stringOfHTML = `This is a 
multi-line
string in ES6!`;
```

---
## Practice

Which characters are used to enclose a multi-line string?

```js
"" // A
```

```js
`` // B
```

???

* B
* A

---
## Revision

The new standard for multi-lined string is using ??? .


* backticks
* single quotes
* double quote

 
