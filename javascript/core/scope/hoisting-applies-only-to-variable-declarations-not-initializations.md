---
author: adamMontgomerie

type: normal

category: feature

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

Variable declarations using `var` are moved to the top of the function scope (or global scope if outside of a function). One consequences of this is that variables can be used before they are declared.

```js
x = 5;
alert(x); // 5
var x;
```

`5` will be alerted despite `var x` not being declared until after the alert. 

Note that it's only the declarations but not initializations that are hoisted:

```js
alert(x) // undefined
var x = 5;
```

This alert will produce `undefined` because, although the declaration `var x` is hoisted to the top, `x` is not initialized to the value of `5` until after the alert.

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

 
