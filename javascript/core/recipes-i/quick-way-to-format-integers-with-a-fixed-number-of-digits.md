---
author: Bruno

levels:

  - beginner

type: normal

category: tip

standards:

  javascript.write-expressions.0: 10

  javascript.evaluate-expressions.3: 10

  javascript.standard-library.1: 10

  javascript.data-types-structures.3: 10

tags:

  - introduction

  - workout

  - slice


links:

  - '[stackoverflow](http://stackoverflow.com/questions/8043026){discussion}'


aspects:
  - introduction
  - workout


---

# Quick way to format integers with a fixed number of digits.

---
## Content

If we are required to format a number with a particular amount of digits, for example:

```html
0001
0002
0102
0345
1483
```
We can use `slice()` to achieve the desired result.

```
var digits = 4;
var prefix = "0000";
var myNum = 16;
(prefix+myNum).slice(-digits);
// "0016"
```
Pay attention though, as `slice()` will throw an error if called by a *number*, not a *string*.

---
## Practice

`console.log(("0044742323412").slice(-3));`  
Outputs ??? , while
`console.log((32410000).slice(-5));`

outputs ??? .


* 412
* throws an error
* 10000
* 004

---
## Revision

`console.log(("123").slice(-4));` 

 outputs ???


* 123
* 0123
* 0001

 
