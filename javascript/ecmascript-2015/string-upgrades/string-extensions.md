---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/String/fromCharCode){website}'

standards:
  javascript.es6-extensions-standard-library.2: 10

---
# String Extensions

---
## Content

ES6 expands on existing primitives to fix some long time issues and add useful functionality.

In previous versions of ECMAScript, if you wanted to use Unicode characters one method was to use `String.fromCharCode`:

```javascript
String.fromCharCode(65); // A
```

However `fromCharCode` doesn’t work with all possible unicode values, but only ranging from `1` to `65535` (`0xFFFF`). A greater number used as input will be truncated automatically.

```javascript
String.fromCharCode(0x2014); // —
String.fromCharCode(0x12014); // -
// the first 1 is truncated
```

ES6 introduced a new method, `fromCodePoint`, that can be used to work with all Unicode values up to 21 bits:

```javascript
String.fromCodePoint(65); // A
String.fromCodePoint(65, 66, 67); // ABC
String.fromCodePoint(0x12014); // 𒀔
```

---
## Practice

Fill in the gap with a method introduced in **ES6** such that the log statement is correct:

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
console.log(String.fromCharCode(90));
// Z
console.log(String.fromCodePoint(90));
// ???
```

* Z
* z
* a
* 90.0
* 90
