---
author: jordanfish

levels:

  - basic

  - beginner

  - medium

type: evaluateThis

category: tip

---
# Taming the beast

---
## Content

In each of the following cases, answer what will be shown in the console.

Select the correct of the three options to score points.

---
## Game Content

```javascript
typeof(null);
```

* `object`
* `null`
* `undefined`

%exp
`null` returns `object` when passed into `typeof` even though it is not technically an object. It is what is called a `primitive value` which is immutable. This is a "bug" in JavaScript that is not feasible to fix without breaking a lot of existing functionality in the language.
%

---

```javascript
null instanceof Object
```

* `false`
* `true`
* `Object`

%exp
Although `null` looks like an `object` since `typeof(null)` returns `object`, `instanceof` returns `False` since `instanceof` checks for the presence of `constructor.prototype` in the given `object`'s prototype chain. i.e. `Object.getProtoypeOf(null) === Object.prototype`, which fails because it returns a `TypeError`. This is because null is not actually an object, this is a quirk of JavaScript.
%

---

```javascript
var x = 0;
alert(x == false);
```

* true
* false
* 0

%exp
This returns `True` as an alert. This is due to the `truthiness` values of integers in JavaScript. In JS, `0`, the integer, is always `falsy`, i.e. always evaluates to `False` when used or evaluated as a Boolean expression. When `truthiness` might cause logic issues remember to use *strict equal* and *strict not equal* `=== and !==` instead.
%

---

```javascript
0.1 + 0.2 == 0.3
```

* false
* true

%exp
Floating points numbers are represented in JavaScript as a whole number multiplied by a power of two.

For this reason, rational numbers like `0.1` , whose denominator is not a power of two (`1/10`), cannot be exactly represented.

The computer has to approximate the value to the closest one it can represent: for `0.1`, the closest approximation is `0.100000000000000005...` , that has 55 digits after the decimal point. The same happens with `2/10` . This is why the final result is not what we expected.
%

---

```javascript
var enki;
enki == undefined;
```

* true
* false
* enki

%exp
The `var` keyword declares a variable, but in this case it is not initialized to a value. This means it is `undefined` so the result returned is `True`.
%

---

```javascript
undefined = "Hello world"
var enki;
enki == undefined;
```

* true
* false
* enki

%exp
Here, we've tried to override the the variable `undefined` to refer not to the primitive variable in global scope but to to a local variable, a string, containing `"Hello world"`. Therefore, when we try to compare `enki` and `undefined`, the result is different depending on the version of ECMAScript your JavaScript engine supports. ES5 and above silently prevents redefining built-in primitive types, but older engines such as ES3 do not. In this case we assume we are using ES6 syntax, so the redefinition is silently prevented and `enki` is `undefined`. Otherwise, on older engines it may be `False` since `"Hello world"` does not equal the undefined variable `enki`.
%

---

```javascript
var x = 0;
alert(x === false);
```

* false
* true
* 0

%exp
This illustrates the importance of strict versus loose equality comparison. In this case we use strict comparison, so the result is `False`. This is because even though the truthiness of integer zero is `False`, strict equality comparison considers the types of the two operands first, and if they are different the two operands must both be different
%

---

```javascript
(function(){
  return typeof arguments;
})();
```

* "object"
* "arguments"
* `undefined`

%exp
The returned answer is `object` since the `arguments` object is a local object inside all functions which, similar to an array, contains a collection of entries for all arguments passed into the function.
%

---

```javascript
(function(x){
  delete x;
  var a = x;
  return a;
})('Enki');
```

* "Enki"
* `null`
* `undefined`

%exp
Any property declared with `var` cannot be deleted from global scope or within a function using the `delete` keyword. Therefore the argument passed in, `Enki`, is retained and returned on execution.
%

---

```javascript
var a = function b(){
  return 'Hi World';
};
typeof(b());
```

* Error
* "string"
* "function"
* "number"
* `undefined`

%exp
The result of this code is a `ReferenceError: b is not defined` as the variable name of function `b()` is actually `a`, and there is nothing in scope called `b` which we can reference. However, if we were to call `typeof(a())` then we would get `string`. If we called `typeof(b())` within the declaration of the function, `b` would be in scope and there would be no error.
%
