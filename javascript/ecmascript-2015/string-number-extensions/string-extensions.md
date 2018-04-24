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

```
String.fromCharCode(65); /A
```

However *fromCharCode* doesn’t work with all possible unicode values.

ES6 introduces a new method *fromCodePoint* that can be used to work with all Unicode values up to 21 bits:

```
String.fromCodePoint(65); //A
String.fromCodePoint(65,66,67); //ABC
```

