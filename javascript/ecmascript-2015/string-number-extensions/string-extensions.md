---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/String/fromCharCode){website}'

---
# String Extensions

---
## Content

ES6 expands on existing primitives to fix some long time issues and add useful functionality.

In previous versions of EcmaScript if you wanted to use Unicode characters one method was to use *String.fromCharCode*:

```javascript
String.fromCharCode(65); /A
```

However *fromCharCode* doesn’t work with all possible unicode values.

ES6 introduces a new method *fromCodePoint* that can be used to work with all Unicode values up to 21 bits:

```javascript
String.fromCodePoint(65); //A
String.fromCodePoint(65,66,67); //ABC
```

---
## Practice

Fill in the gap with a method introduced in ES6 such that the log statement is correct:

```javascript
console.log(???.???(70))
// F
```

* String
* fromCodePoint
* fromCharCode
* Char
* Number
* Ascii
* fromAsciiNumber
* fromNumber
* fromCode
* fromNumberCode
* fromNumberPoint

---
## Revision

What should go in the missing gap such that the log statement is correct?

```javascript
console.log(String.fromCharCode(90))
// Z
console.log(String.fromCodePoint(90))
// ???
```

* Z
* z
* a
* 90.0
* 90
 
