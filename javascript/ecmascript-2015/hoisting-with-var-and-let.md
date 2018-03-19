# Hoisting with `var` and `let`
author: ailiea

levels:

  - advanced

  - medium

type: normal

category: must-know

tags:

  - variable scope

links:

  - '[es6-features.org](http://es6-features.org/#BlockScopedVariables){website}'

---
## Content

Consider the following functions which are using `var` and `let` respectively.
```javascript
function f1(){
  var flag = true;
  var i = 5;
  if (flag){
    var i = 10;
  }
  return i;
}

function f2(){
  let flag = true;
  let i = 5;
  if (flag){
    let i = 10;
  }
  return i;
}
```

Note how these functions return different values:

```
console.log(f1());
// 10
console.log(f2());
// 5
```


  The reason for this is that `var` declarations get hoisted up to __local-scope__ inside a function and thus they point to the same instance of `i`.
With `let` however the declarations are separated into a __local-scope__ `i` with a value of _5_ and __block-scope__ `i` with a value of _10_.

Using `let` instead of `var` is considered best practice because it operates on a more precise and natural scope.

---
## Revision

Consider the function:
```javascript
function enki(){
  let i = 3.14;
  if (1 === 1){
    let i = 10;
  }
  return i;
}
```
What is the output?
```javascript
console.log(enki());
// ???
```

*`3.14`
*`10`
*`undefined`