# Taking precedence...
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

---
## Content

Precedence decides the order in
which operators are evaluated.

Higher precedence means earlier
evaluation.

How well do you know how Javascript
handles precedence?

---
## Game Content

```
1 + 2 + "3" + 4
```
* "334"
* "1234"
* "37"
%exp
`((1+2)+ "3") + 4`
%
---
```
2 - 2 - 2
```
* -2
* 2
* 0
%exp
`(2-2)-2`
%
​---
```
2 * 3 + 4
```
* 10
* 14
* 18
%exp
`(2*3) + 4`
%
```
​---
{5:1}[2+3]
```
* SyntaxError
* undefined
* 1
%exp
5 is a number, it is not a valid object property.
%
​---
```
var a = 1
a++
```
* 1
* 2
* undefined
%exp
First the value of `a` is returned and then incremented.
%
​---
```
({5:1})[2+3]
```
* 1
* SyntaxError
* undefined
%exp
We assign property `5` the value `1` and then ask for what value does property `5` hold.
%
​---
```
var a = 1
var b = 1
a+++b
b
```
* 1
* 2
* undefined
%exp
`b`'s value remains unchanged. So the result is `1`.
%
​---
```
var a = 1
var b = 1
a+++b
a
```
* 2
* 1
* 0
%exp
As we've seen before, the postincrement(`a++`) first take the value and after adds one to it. So here we take value `1` from `a` and sum it up with `b`'s value(`1`).
%
```
---​
var a = 1
var b = 1
a++-++b
```
* -1
* 1
* 0
%exp
`a` is `1` and `b` is preincremented(`++b`). So `1 - 2 = -1`
%
​---
```
false && true || true
```
* true
* false
* 1
%exp
`(false && true) || true` => `false || true` => `true`
%
​---
```
true || true && false
```
* true
* false
* Error
%exp
`true || (true && false)` => `true || false` => `true`
%
​---
```
0 * 1 ? 2 : 3
```
* 3
* 2
* 0
%exp
This expressions states: `if(0*1) then 2 else 3`, so the result is 3.
%
​---
```
var a = 1; a += 3 * 2 ; a
```
* 7
* 4
* 5
%exp
`a = a + 3 * 2`, because `a = 1` => `7`
%
```
​---
var a = -1;
a += 1 && a *= 2
```
​
* ReferrenceError
* -3
* 0
​%exp
`a += (1 && a) *=2` => ReferrenceError.
%
---
```
var a = -1;
a += 1 && (a *= 2)
```
* -3
* 0
* ReferrenceError
​%exp
`a += (1 && (a *=2))`.The `&&` operator returns the left expressions if it can be evaluated to `flase`, otherwise it returns the expression on the right hand side.
%
---
```
0 == 1 >= 2
```
* true
* false
* 0
%exp
`0 == (1 >= 2)`
%
---
