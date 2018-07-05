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
var stringOfHTML = "<div>
  This is a bad example.
</div>";
```
However, this will cause an error. 


To preserve both readability and functionality, use string concatenation:

```javascript
var stringOfHTML = '<div>' +
  '  This is a better example.' +
'</div>';
```

Or, ES2015 makes it possible to use backticks, in this form:

```
var stringOfHTML = `This is a 
multi-line
string in ES6!`;
```

---
## Practice

What standard is used in ES2015 for multi line string variables? ???


* Backticks
* Single quotes
* Double quotes
* No quotes

---
## Revision

The new standard for multi-lined string is using ??? .


* backticks
* single quotes
* double quote

 
