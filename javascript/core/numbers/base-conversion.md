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




---

# Base conversion

---
## Content

Base conversion for `int` data types is easily achievable with the help of `toString` and `parseInt` functions. 

Convert decimal to hexadecimal:
```javascript
(int).toString(16);
```

Convert decimal to octal:
```javascript
(int).toString(8);
```
Vice-versa convert hexadecimal to decimal:
```javascript
parseInt(string, 16);
```
Convert octal to decimal:
```javascript
parseInt(string,8);

```

---
## Practice

Complete the following code snippet:
```javascript
// convert 1423 to base 2
 console.log((1423).toString(???));
// convert "ad23e1" from base 16 to base 10
console.log(???("ad23e1",???));
```

* 2
* parseInt
* 16
* 10
* ”base 10”

---
## Revision

Complete the following code snippet:
```javascript
// convert 132 to base 16
console.log((132).toString(???));
// convert "ead2" from base 15 to base 10
console.log(???("ef2",???));
```

* 16
* parseInt
* 15
* 10
* ”base 10”

 
