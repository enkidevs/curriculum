---
author: pawel
type: normal
category: how-to
tags:
  - introduction
  - deep
  - currency-formatting
links:
  - >-
    [css-tricks.com](https://css-tricks.com/snippets/javascript/format-currency/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Format Currency in JavaScript


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

What does the following code snippet output?

```javascript
function currency(n) {
   n = parseFloat(n);
   return isNaN(n) ? 
         false : n.toFixed(3);
}
console.log(
  currency('10.93719')
);
// ???
```

- 10.937
- 10.9372
- 10.938
- 10.9
- 11


---

## Revision

What does this output?

```javascript
function currency(n){
  n = parseFloat(n);
  return isNaN(n) ? false : n.toFixed(2);
}
console.log(currency('1234.567'));

// ???
```

- 1234.57
- 1234.56
- 12
 
