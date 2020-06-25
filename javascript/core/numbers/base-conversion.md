---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

standards:

  javascript.data-types-structures.0: 10

  javascript.standard-library.2: 10


aspects:
  - introduction
  - workout
  - obscura


---

# Base conversion

---
## Content

Base conversion for numerical values in JavaScript is easily achievable
with the help of `toString` and `parseInt` functions.


### toString

`<number>.toString(base)` operates on a number and converts it into a string in the given base.

For example, converting a decimal number to hexadecimal, octal and binary looks something like this:
```javascript
let number = 123
number.toString(16) // "7b"
number.toString(8) // "173"
number.toString(2) // "1111011"
```

Note that the type of returned value is a string.

```javascript
let number = 123
typeof number.toString(16) // "string"
```

### parseInt

`parseInt(<string>, <base>)` takes a string and its base and converts it into a decimal number.

For example, parsing a hexadecimal, octal and binary number in string form into a decimal:

```javascript
parseInt("7b", 16) // 123
parseInt("173", 8) // 123
parseInt("1111011", 2) // 123
```

The type of returned value is `"number"`.

---
## Practice

Complete the following code snippet:
```javascript
// convert 1423 to base 2
(1423).???(???)

// convert "ad23e1" from base 16 to base 10
???("ad23e1",???)
```

* toString
* 2
* parseInt
* 16
* '10'
* '2'
* 10
* "base 10"
* "base 16"
* intoString
* "two"

---
## Revision

Complete the following code snippet:
```javascript
// convert 132 to base 16
(???).toString(???)

// convert "ead2" from base 15 to base 2
???("ead2",???).???(???);
```

* 132
* 16
* parseInt
* 15
* toString
* 2
* 10
* toBase
* toNumber
* ”base 10”
* ”base 15”
* ”base 2”
