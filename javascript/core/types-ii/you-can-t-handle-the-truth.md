---
author: Bruno

levels:

  - basic

  - advanced

  - medium

type: tetris

category: must-know

standards:
  javascript.javascript-syntax.2: 1000
  javascript.evaluate-expressions.3: 1000
  javascript.evaluate-expressions.5: 1000
  javascript.evaluate-expressions.4: 1000
  javascript.evaluate-expressions.10: 1000

tags:
  - introduction
  - workout

aspects:
  - introduction
  - workout

---

# You can't handle the truth!

---
## Content

A value `v` is called *truthy* if it converts to `true` when used in an `if` clause.

This mean that
```
if (v) { console.log('yes'); }
```
will print `yes` if and only if `v` is truthy.

---
## Game Content

Falsy:Truthy
```true
true
%exp
True will always be evaluated as true by the if condition so the result is yes.
%

new Date()
%exp
new Date() returns the date the PC is currently set to. This will evaluate to true and the right answer is yes.
%

Infinity
%exp
The way ECMAScript's logic OR casts arguments to booleans is by using `toBoolean` function. It evaluates to false `-0`, `+0` and `NaN`, otherwise the result is true. This means infinity is evaluated to true.
%

{}
%exp
if({}) returns true even if the object is true. The result is yes.
%

[]
%exp
Empty arrays are evaluated to true in JavaScript. The expression will print yes.
%

3
%exp
As we stated before, any number that is not `-0`, `+0` or `NaN` will evaluate to true in JavaScript.
%

-1
%exp
As we stated before, any number that is not `-0`, `+0` or `NaN` will evaluate to true in JavaScript.
%

new Number(0)
%exp
`new Number(0)` will return an object. We've seen before that an object, being it empty or not, is evaluated to true.
%

7
%exp
As we stated before, any number that is not `-0`, `+0` or `NaN` will evaluate to true in JavaScript.
%

[1][0]
%exp
Any array in JavaScript, being it empty or not, will always be true.
%

{a: false}
%exp
Any object will be evaluated to truthy.
%

```

```false
false
%exp
False is false no matter what.
%

0
%exp
Positive 0 will always be evaluated to false in JavaScript.
%

''
%exp
An empty string is always false in JavaScript.
%

""
%exp
An empty string is always false in JavaScript.
%

null
%exp
`null` evaluates to false in JavaScript.
%

NaN
%exp
`NaN` is evaluated to false.
%

undefined
%exp
`undefined`'s boolean value is false.
%

{}.someKey
%exp
If we search for some key in an empty object undefined will be returned, therefore the result is false.
%

[].length
%exp
The length of an empty array will be undefined, so the expression will evaluate to false.
%

[1][1]
%exp
This expression is undefined in JavaScript, so it will evaluate to false.
%

```
 
