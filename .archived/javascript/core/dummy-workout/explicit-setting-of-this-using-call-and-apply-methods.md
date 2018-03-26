---
author: pawel

levels:

  - basic

  - medium

type: normal

category: tip

notes: ''

links:

  - >-
    [yehudakatz.com](http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/){website}

---
# Explicit setting of `this` using `call` and `apply` methods

---
## Content

There are some characteristic problems when using `this` with `call` and `apply` methods.

```
function calculate(a, b) {
  var c = a+b;
  console.log(this+" equals "+c);
}
var emp = {};
calculate.apply(emp, [200,400]);
calculate.call(emp, 200, 400);
```
`call` and `apply` methods explicitly set value of `this` to the first argument of the function call. As a result, `this` inside `calculate` will refer to *emp*:
```
//apply
[object Object] equals 600
//call
[object Object] equals 600
```

Versus the 2 parameter call of the function:
```
calculate(200,400);
[object Window] equals 600
```

---
## Revision

What will be the value of `this` inside `testFunction`?
```javascript
function testFunction(a) {
  console.log(this + a);
};
var x = {};
testFunction.apply(x, [5]);
testFunction.call(x, 5);

```

???

* x
* [5]
* a
* [a]
* 5
