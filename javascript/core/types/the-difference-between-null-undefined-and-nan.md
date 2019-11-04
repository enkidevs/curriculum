---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

standards:

  javascript.javascript-syntax.2: 10

  javascript.evaluate-expressions.10: 10

tags:

  - introduction

aspects:
  - introduction
  - workout
  - obscura


---

# The difference between null, undefined and NaN

---
## Content

In JavaScript, a variable that has been declared but not yet defined is of the type `undefined`:

```
var Enki;
console.log(Enki);
// undefined

```

In contrast, a variable can be assigned the value `null`. In which case it is considered *defined* (even though it's set to a special value that represents "no value"):
```
var Enki = null;
console.log(Enki);
// null
```
`NaN` means **Not-A-Number** and is the result when Math functions fail or when a function expecting a number is given a different type:

```
var x = 0/0;
console.log(x);
// NaN
```

---
## Practice

The following code outputs ???
```javascript
function foo(num){
  return num/2;
}
console.log(foo("sum"));
```    

* NaN
* undefined
* null

---
## Revision

What will this print?
```javascript
var x = 0/0;
console.log(x);
// ???
```


* `NaN`
* `undefined`
* `null`
 
