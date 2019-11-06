---
author: adamMontgomerie

levels:
  - basic
  - beginner

type: normal

category: tip

standards:

  javascript.functions.5: 10

tags:
  - workout
  - scope
  - deep
  - variables
  - obscura

links:
  - '[learnxinyminutes.com](http://learnxinyminutes.com/docs/javascript/){website}'
  - '[stackoverflow.com](http://stackoverflow.com/questions/500431/what-is-the-scope-of-variables-in-javascript){website}'

aspects:
  - workout
  - deep
  - obscura


---
# No block scope

---
## Content

Functions have their own scopes, however most other blocks do not.

```javascript
var a = 1;
function global() {
  alert(a); //1
}
function local() {
  var a = 2;
  alert(a); //2
}
```

In the example above, `global` will alert the global value of `a` which is `1`. `local` will alert `2` because `a` is defined within the scope of the `local` function here.

```javascript
var a = 1;
function foo() {
  if (true) {
    var a = 3;
  }
  alert(a); //3
}
```

However, despite `a = 3` being contained within an `if` block, the `foo` function will alert `3`. This is because (most) blocks do not have their own scope.

The only exception is the case of `catch` blocks, which also have their own scope.

---
## Practice

What will the following snippet do?

```javascript
var x = 'foo';
(function bar() {
 {
   var x = 5
 }
 console.log(x)
})()
```

???

* log 5
* log 'foo'
* raise an error
* can't be compiled

---
## Revision

What's the output of the `alert()` method?

```javascript
var a = 1;
function bar() {
  if(2 === 2) {
    var a = 0;
  }
  alert(a); // ???
}
bar()
```

* 0
* 1
* 2
* 3
* undefined
 
