---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

standards:

  javascript.functions.5: 10

tags:

  - workout

  - hoisting

  - deep

  - variables

  - obscura


links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/3725546/variable-hoisting){website}'


aspects:
  - workout
  - deep
  - obscura


---

# Hoisting applies only to variable declarations, not initializations

---
## Content

Variable declarations are moved to the top of the current scope, either the current function or script. This means that variables can be used before they are declared.
```
x = 5;
alert(x);
var x;
```
`5` will be alerted despite `var x` not being declared until after the alert. 

However, variable initializations are not hoisted:
```
alert(x)
var x = 5;
```
This alert will produce `undefined` because, although `var x` is hoisted to the beginning of the script, `x` is not initialized to the value of `5` until after the alert.

---
## Practice

The following code will output ???
```javascript
s = "enki";
console.log(s);
var s;
```

* enki
* undefined
* nothing

---
## Revision

The following code outputs ???
```javascript
console.log(v);
var v = "enki";
```

* undefined
* enki
* nothing

 
