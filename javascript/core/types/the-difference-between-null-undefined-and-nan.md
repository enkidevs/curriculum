---
author: rosielowther

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - obscura

---

# The difference between null, undefined and NaN

---
## Content

In JavaScript, a variable that has been declared but not yet initialized has the value of `undefined`:

```js
let Enki;
console.log(Enki);
// undefined
```

In contrast, a variable can be assigned the value `null`, in which case it is considered *defined* (even though it's set to a special value that represents "no value"):

```js
let Enki = null;
console.log(Enki);
// null
```

`NaN` means **Not-A-Number** and is the result when math functions fail or when a function expecting a number is given a different type:

```js
let x = 0 / 0;
console.log(x);
// NaN
```

---
## Practice

The following code outputs ???

```javascript
function foo(num){
  return num / 2;
}

console.log(foo("sum"));
```    

* `NaN`
* `undefined`
* `null`

---
## Revision

What will this print?

```javascript
let x = 0 / 0;
console.log(x);
// ???
```


* `NaN`
* `undefined`
* `null`
 
