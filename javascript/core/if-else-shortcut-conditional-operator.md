---
author: pawel

levels:

  - basic

  - beginner

type: normal

category: pattern

links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Conditional_Operator)'

---

# `if/else` shortcut `conditional operator`

---
## Content

Rather than using standard `if/else` notation such as:

```
var count = 101;
var stop;
if (count > 100) {
  stop = true;
}
else {
  stop = false;
}
// stop = true
```
It is possible to use a `Condition (ternary)` operator:

```
var count = 99;
var stop = (count > 100) ? true : false;
// stop = false
```

---
## Practice

```
if(animal==='lion'){
   run = true;
}else{
   run = false;
}

How would you express this using 
a conditional operator?

var animal = 'lion';
var run = (animal === 'lion')? true:???;

* false
* undefined
* null
* true
```

---
## Revision

```
if(animal==='lion'){
   run = true;
}else{
   run = false;
}

How would you express this using 
a conditional operator?

var animal = 'lion';
var run = (animal === 'lion')? true:???;

* false
* undefined
* null
* true
```

