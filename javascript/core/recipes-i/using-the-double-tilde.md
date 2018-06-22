---
author: pawel

levels:

  - basic

  - beginner

  - medium

type: normal

category: hack

standards:

  javascript.write-expressions.0: 10

  javascript.evaluate-expressions.3: 10

  javascript.data-types-structures.1: 10

tags:

  - double-tilde




---

# Using the double tilde `~~`

---
## Content

The double tilde `~~` is a quick way to truncate a value to an integer. For example:

```javascript
console.log( ~~12.34 ); // 12
console.log( ~~"56.78" ); // 56
console.log( ~~-2.6 ); // -2
```
It never returns `NaN`. If the check fails, it simply returns `0`.

```
console.log( ~~"Sunny" ); // 0
console.log( ~~[] ); // 0
console.log( ~~null ); // 0
```

---
## Practice

What does the following JS code snippet output?

```javascript
console.log(~~15); // ???
console.log(~~"7.08"); // ???
console.log(~~"-1.92"); // ???
console.log(~~{}); // ???
```


* 15
* 7
* -1
* 0
* -15
* 1.5
* 7.1
* 8
* -2
* 1
* NaN

---
## Revision

The following code will output:

```javascript
console.log( ~~12.34 ); // ???
console.log( ~~"56.78" ); // ???
console.log( ~~"Sunny" ); // ???
```


* 12
* 56
* 0
* NaN
* ”56”

 
