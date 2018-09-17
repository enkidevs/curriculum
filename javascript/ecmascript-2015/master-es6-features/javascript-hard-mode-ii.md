---
author: jordanfish

levels:


  - advanced

  - medium

type: fillTheGap

category: tip

notes: Kangax quiz

---

# JavaScript: Hard Mode II

---
## Content

Are you up for a challenge?

Test you JavaScript knowledge with some questions taken from `Kangax`'s quiz.

Keep in mind some of these questions are not practical so don't worry if you get some wrong.

Note that you need to assume **ECMAScript** 3rd edition. In addition, all `Error` answers describe a runtime error.

---
## Game Content

```javascript
typeof (function* f() {
  yield f })().next().next()
```

* `Error`
* `"function"`
* `"generator"`
* `"object"`

%exp
One interesting feature **ES6** introduced is **generator** functions. The special thing about a **generator** is that it can be **paused** and **resumed** as many times as the programmer wants to. **Generator** objects have `next()` method, that **resumes** the function and lets it run until the next `yield`.

`next()` method returns an **iterator protocol** format value: `{value: <return value>, done: boolean}`. So on the first `next()` we get:

```
g.next(); // {value: f, done: false}
```

The mistake here is that only **generator** objects have `next()` method implemented. If we try to call `next()` as a chain, the second one will be applied to the **return value** of the first `next()` and not on the **generator** object.
That is why `Error` is the right answer.
%

---

```javascript
typeof (new class f()
  { [f]() { }, f: { } })[`${f}`]
```

* `Error`
* `"function"`
* `"undefined"`
* `"object"`

%exp
The above example results in **SyntaxError** because `class name f()` is not syntactically correct in JavaScript.
%

---

```javascript
typeof `${{Object}}`.prototype
```

* `"undefined"`
* `"object"`
* `"function"`
* `Error`

%exp
Template strings are a feature of **JavaScript** making it able to render values of variables directly in the **string**. However the correct **syntax** for **template strings** is `${Object}` and not `${{Object}}`.

Here **ES6**'s short notation for **object literals** which states that `{Object}` means `{Object : Object}`, so basically an **object** with one **property** called Object and the **value** assigned to it Object.

 In the end we use `prototype` property on the string '[Object Object]', this results in `undefined`.
%

---

```javascript
((...x, xs)=>x)(1,2,3)
```

* `Error`
* `1`
* `3`
* `[1,2,3]`

%exp
Rest parameters can only appear on the last position. Here `...x` is used first, this results in `Error`.
%

---

```javascript
let arr = [ ];
for (let { x = 2, y } of
  [{ x: 1 }, 2, { y }]) {
    arr.push(x, y);
}
arr;
```

* `Error`
* `[{ x: 1 }, 2, { y }]`
* `[2, { x: 1 }, 2, 2, 2, { y }]`

%exp
The variable `y` is in **scope**, but since it's never initialized it stays in **Temporal Dead Zone**, so it can't accessed.
%

---

```javascript
(function() {
  if (false) {
    let f = { g() => 1 };
  }
  return typeof f;
})();
```

* `Error`
* `"function"`
* `"undefined"`
* `"object"`

%exp
Here we encounter a **SyntaxError** as the arrow function `=>` can have either **concise body**(`var func x => x * x;`) or  the usual **block body**(`var func = (x,y) => {return x + y;};`).

The definition here doesn't respect either of the.
%