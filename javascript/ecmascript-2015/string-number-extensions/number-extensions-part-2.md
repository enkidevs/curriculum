---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}'

inAlgoPool:

---
## Content
# Number Extensions (Part 2)

**Number.EPSILON**

Number.EPSILON is the smallest value less than 1 that can be represented as a number and is intended for advanced uses such as testing equality: 

```
Number.EPSILON;
//2.220446049250313e-16
```

**Number.isSafeInteger**

To be considered a safe integer numbers must be able to be represented in a format called *IEEE-754* and cannot be the result of rounding any other IEEE-754 number. There are some numbers that fall outside of what can be represented using IEEE-754:

```
Number.isSafeInteger(3); //true
var unsafe = Math.pow(2, 53);
Number.isSafeInteger(unsafe); //false
```

**Number.MIN_SAFE_INTEGER and Number.MAX_SAFE_INTEGER**

*IEEE-754* can represent a limited range of numbers. This range can be retrieved using *Number.MIN_SAFE_INTEGER* and *Number.MAX_SAFE_INTEGER*:

```
Number.MIN_SAFE_INTEGER; //-9007199254740991
Number.MAX_SAFE_INTEGER; //9007199254740991
```

