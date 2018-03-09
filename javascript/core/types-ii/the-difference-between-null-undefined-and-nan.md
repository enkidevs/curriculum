# The difference between null, undefined and NaN
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

standards:
  js.identify-syntax.2: 10
  js.evaluate-expressions.10: 10

tags:
  - introduction
  - workout

---
## Content

In JavaScript, a variable that has been declared but not yet defined is of the type `undefined`:

```
var Enki;
console.log(Enki);
// undefined

```

In contrast, a variable can be assigned the value `null`. In which case it is considered *defined* (even though to nothing):

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
*NaN
*undefined
*null

---
## Revision

What will this print?
```javascript
var x = 0/0;
console.log(x);
// ???
```

*`NaN`
*`undefined`
*`null`
