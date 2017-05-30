# JavaScript: Hard Mode
author: jordanfish

levels:


  - advanced

  - medium

type: fillTheGap

category: tip

notes: Kangax

---
## Content

Are you up for a challenge?

Test you JavaScript knowledge with some questions taken from `Kangax`'s quiz.

Keep in mind some of these questions are not practical so don't worry if you get some wrong.

Note that you need to assume **ECMAScript** 3rd edition. In addition, all `Error` answers describe a runtime error.

---
## Game Content

```
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
---
```
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
---
```
let x, { x: y = 1 } = { x }; y;
```
* 1
* undefined
* { x: 1 }
* Error
---
```
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
---
```
(typeof (new (class { class () {} })))
```
* "object"
* "function"
* "undefined"
* Error
---
```
typeof (new (class F extends
  (String, Array) { })).substring
```
* "undefined"
* "function"
* "object"
* Error
---
```
[...[...'...']].length
```
* 3
* 6
* 1
* Error
