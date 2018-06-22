---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

standards:

  javascript.write-expressions.0: 10

  javascript.evaluate-expressions.3: 10

  javascript.standard-library.1: 10

tags:

  - introduction

  - deep

  - currency-formatting


links:

  - '[css-tricks.com](https://css-tricks.com/snippets/javascript/format-currency/){website}'


aspects:
  - introduction
  - deep


---

# Format currency in JavaScript

---
## Content

The function below will ensure numbers are correctly rounded to 2 decimal places and prevent some null errors: 

```javascript
function currency(n){
  n = parseFloat(n);
  return isNaN(n) ? false : n.toFixed(2);
}
```

---
## Practice

What does the following code snippet output? ???

```javascript
function currency(n) {
   n = parseFloat(n);
   return isNaN(n) ? 
         false : n.toFixed(3);
}
console.log(
         currency('10.93719'));
```


* 10.937
* 10.9372
* 10.938
* 10.9
* 11

---
## Revision

What does this output?
```javascript
function currency(n){
  n = parseFloat(n);
  return isNaN(n) ? false : n.toFixed(2);
}
console.log(currency('1234.567'));

???
```

* 1234.57
* 1234.56
* 12

 
