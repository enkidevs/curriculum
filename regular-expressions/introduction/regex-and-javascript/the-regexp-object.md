---
author: emmab

tags:
  - introduction

type: normal

category: must-know

---

# The RegExp Object

---
## Content

When Regex patterns are used in [object-oriented programming](https://www.enki.com/glossary/general/object-oriented-programming) languages they exist as objects of the Regex/Regexp class.

To illustrate this, if we wanted to create a new regex pattern in JavaScript we could type:

```js
let pattern = /abc/;

OR 

let pattern = new RegExp('abc');
```

We could then check the data type or class of our `pattern` variable by logging to the console:

```javascript
console.log(pattern instanceof RegExp);
```

The output is `true`.

---
## Practice

How would you check whether the class of a JavaScript object returns `RegExp`?

```javascript
let regex_pattern = /aeiou/

console.log(??? instanceof ???);
```


* `regex_pattern`
* `RegExp`
* `pattern`
* `Regexp`

---
## Revision

When Regex patterns are used in programming, they exist as ???.

* objects
* booleans
* methods
* variables

