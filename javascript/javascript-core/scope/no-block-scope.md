---
author: adamMontgomerie
type: normal
category: tip
links:
  - >-
    [learnxinyminutes.com](http://learnxinyminutes.com/docs/javascript/){website}
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/500431/what-is-the-scope-of-variables-in-javascript){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Function vs Block Scope


---

## Content

In JavaScript, every function creates a scope. Following this logic, nested functions will create nested scopes. 

When JavaScript tries to figure out what value a particular variable contains, it checks the closest scope. If it doesn't find it there, it keeps going up the chain of scopes until it does (or reaches the global scope without finding the value at all).

Let's look at an example:

```javascript
let a = 1;

function one() {
  alert(a); // 1
}

function two() {
  let a = 2;
  alert(a); // 2
}

one();
two();
```

In the code above, the function `one` contains no definition of `a` within its own scope. This means it will alert the value of `a` in the scope above, which is `1`. On the other hand, `two` will alert `2` because it does have `a` defined within its scope.

Furthermore, any block of code, i.e. code between `{}`, creates a scope.

```javascript
let a = 1;

function foo() {
  if (true) {
    let a = 3;
  }
  alert(a); // 1
}

foo();
```

In this example, `foo` will alert the global value of `a`, which is `1`. The `a` within `foo` is enclosed in its own scope within the `if` statement and thus isn't visible outside of it, on the line that calls `alert(a)`. 

There's one gotcha. Using `var` is an exception to the rule, as any variable declared with `var` is always available in the function scope, no matter if it's in a different block of scope as well.

```javascript
var a = 1;

function foo() {
  if (true) {
    var a = 3;
  }
  alert(a); // 3
}

foo();
```

Despite `a` being defined within the scope of the `if` block, the `foo` function will alert `3`, because `var` essentially doesn't respect block-scope (it's always available in the entirety of the function).


---

## Practice

What will the following snippet do?

```javascript
let x = 1;
(function bar() {
 if (true) {
   let x = 2;
 }
 console.log(x)
})()
```

???

- log 1
- log 2
- raise an error
- can't be compiled


---

## Revision

What's the output of the `alert()` method?

```javascript
var a = 1;
function bar() {
  if (2 === 2) {
    var a = 0;
  }
  alert(a); // ???
}
bar()
```

- 0
- 1
- 2
- 3
- undefined
