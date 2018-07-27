---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

standards:
  javascript.functions.5: 1000

---

# Think you know Javascript?

---
## Content

Are you prepared for Dmitry Baranovskiy's famous "So, you think you know Javascript?"

It's a quick test for real understanding of JavaScript core beyond closures and scopes.

---
## Game Content

```javascript
if (!("a" in window)) {
  var a = 1;
}
alert(a);
```

* `undefined`
* `1`
* `Error`

%exp
In this case `a` is out of scope, as it is initialized inside the if statement. The right answer is `undefined`.
%

---

```javascript
var a = 1,
  b = function a(x) {
    x && a(--x);
  };
alert(a);
```

* `1`
* `2`
* `undefined`

%exp
Even though we declare the `function a()` after initializing the `variable a`, the function is under `b`'s scope.
Therefore, the initial assignment remains the same. The right answer is `1`.
%

---

```javascript
function a(x) { return x * 2; }
var a;
alert(a);
```

* `function a(x) { return x * 2; }`
* `Error`
* `undefined`

%exp
There are two things to consider here. In general, if a name has already been defined, it is never overridden by another property of the same name. Secondly, functions' name get resolved before variables' name. Having this in mind, we can agree that the snippet will alert the function.
%

---

```javascript
function b(x, y, a) {
  arguments[2] = 10;
  alert(a);
}
b(1, 2, 3);
```

* 10
* 2
* 3

%exp
The function accepts 3 arguments, which can be accessed through the function-scoped `arguments` object, as well as invoked by their name. The third argument, `a`, can be found at `index 2` in the arguments array. Therefore, the answer is `10`.
%

---

```javascript
function a() {
  alert(this);
}
a.call(null);
```

* [object Window]
* `null`
* `undefined`

%exp
The `this` keyword always refers to the owner of the function. In this case, we define the function `a` in a page, which is contained inside the JavaScript's global object, `window`. For reference, if you were to console log `this` inside a button's `click` function, the button would be logged.
%
