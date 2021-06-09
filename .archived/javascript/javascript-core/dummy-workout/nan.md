---
author: adamMontgomerie
levels:
  - basic
  - beginner
type: normal
category: feature
tags:
  - NaN
  - numbers
  - not-a-number
links:
  - '[www.2ality.com](http://www.2ality.com/2012/02/nan-infinity.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `NaN`


---

## Content

`NaN` stands for 'Not a Number' and is used when a number value is expected but a value which is not a number is produced.

For example, when attempting to parse a string that does not contain a number value:

    Number("Enki"); //NaN

`"Enki"` cannot be converted into a valid number so `NaN` is returned.

Additionally:

    var x = 0/0; //NaN

`x` will be `NaN`, which is the result of `0/0`.


---

## Practice

What does the following code return? ???

```javascript
NaN === NaN
```

- False
- True
- 0
- Undefined


---

## Revision

What will each of these output?

```javascript
console.log(Number("enki")); // ???
console.log(0/0 ===
   Number("five")); // ???
```

- NaN
- false
- enki
- True
- true
- 0
 
