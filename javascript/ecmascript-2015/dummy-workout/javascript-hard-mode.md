---
author: jordanfish

levels:


  - advanced

  - medium

type: fillTheGap

category: tip

notes: Kangax

---

# JavaScript: Hard Mode

---
## Content

Are you up for a challenge?

Test you JavaScript knowledge with some questions taken from `Kangax`'s quiz.

Keep in mind some of these questions are not practical so don't worry if you get some wrong.

Note that you need to assume **ECMAScript** 3rd edition. In addition, all `Error` answers describe a runtime error.

---
## Game Content

```javascript
(function(x, f = () => x) {
  var x;
  var y = x;
  x = 2;
  return [x, y, f()];
})(1)
```

* [2, 1, 1]
* [2, undefined, 1]
* [2, 1, 2]
* [2, undefined, 2]

%exp
The tricky part at this questions is that if there is a **parameter** with the same name as a local **variable**, then the local binding isn't **initialized** with `undefined`, but with the **value** of that parameter, `1` in this case.
%

---

```javascript
(function() {
  return [
    (() => this.x).bind({ x: 'inner' })(),
    (() => this.x)()
  ]
}).call({ x: 'outer' });
```

* ['outer', 'outer']
* ['inner', 'outer']
* [undefined, undefined]
* Error

%exp
Arrow functions have lexical `this`, it **inherits** value from the context they are **defined** in. In this case both `this` calls are made within the context of `{x: outer}`. The fact that `.bind({x: 'inner'})` is applied on the first function doesn't change its **value**.
%

---

```javascript
let x, { x: y = 1 } = { x }; y;
```

* 1
* undefined
* { x: 1 }
* Error

%exp
The first `let x` defines `x` with `undefined` value. `{x: y = 1} = {x}` is a **destructuring assingment**, it take **variable** `y` from **property** `x`. In the end, because `x` is `undefined` default value `1` is assigned to `y`.
%

---

```javascript
(function() {
  let f = this ? class g { } : class h { };
  return [
    typeof f,
    typeof h
  ];
})();
```

* ["function", "undefined"]
* ["function", "function"]
* ["undefined", "undefined"]
* Error

%exp
In this situation as the **function** is executed with no explicit value of `this`. `let f` will be **assigned** `class h{ }`. `f`'s `typeof` is **function** and h as it is defined in the **expression position** has its `typeof` **undefined**.
%

---

```javascript
(typeof (new (class { class () {} })))
```

* "object"
* "function"
* "undefined"
* Error

%exp
Let's try and put it in a more understandable order:
`new(class{class () {} })`

What happens here is we instantiate a `new` class(called "class") with a method "class" in it, using `ES6` standardised concise method definition as well.

```javascript
new class{
  class () {};
}
```

Now, the result of `typeof` on a default class is a simple `object`.
%

---

```javascript
typeof (new (class F extends
  (String, Array) { })).substring
```

* "undefined"
* "function"
* "object"
* Error

%exp
The tricky part here is that the **grouping operator**  always returns the last argument, `Array` in this case. So what we have here is:

`typeof (new class F extends Array {})`
`.substring`

Now, we know that `Array`s don't have `.substring` method, so the result is `undefined`.
%

---

```javascript
[...[...'...']].length
```

* 3
* 6
* 1
* Error

%exp
Spread operator enables us to iterate over any **iterable object** and spread its elements into an **array**. So here `'...'` represents a **String**(which is iterable in **JavaScript**), this means it results in an array like this: `['.','.','.']`. The second **spread operator** does the exact same thing so the length will be `3`.
%