---
author: pawel
type: normal
category: must-know
links:
  - '[Arbitrary Precision](http://0.30000000000000004.com/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Precision


---

## Content

Integers are considered accurate only up to 15 digits.

```javascript
var a = 999999999999999; //15 digits
// a = 999999999999999
var b = 9999999999999999; //16 digits
// b = 10000000000000000
```

The maximum number of decimals is 17, but floating point arithmetic is not always 100% accurate:

```javascript
var x = 0.2 + 0.1;         
// x will be 0.30000000000000004
```

To avoid that we can multiply and divide our result as follows:

```javascript
var x = (0.2 * 10 + 0.1 * 10) / 10;
// x will be 0.3
```


---

## Practice

What are the following variable values?

```javascript
var x = 0.6 - 0.2;
// x is ???
var y = (0.2 * 10 + 0.3 * 10) / 10;
// y is ???
```

- 0.39999999999999997
- 0.5
- 0.4
- 0.6
- 0.49999999999999997
- 0.50000000000000004


---

## Revision

What is the value of `x`?

```javascript
// 16 digits
var x = 9999999999999999;
console.log(x);
// x is ???
```

- 10000000000000000 // 17 digits
- 9999999999999999 //16 digits
- 99999999999999999//17 digits
 
