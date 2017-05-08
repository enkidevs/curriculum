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

%
---
```
2 - 2 - 2
```
* -2
* 2
* 0
%exp

%
​---
```
2 * 3 + 4
```
* 10
* 14
* 18
%exp

%
```
​---
{5:1}[2+3]
```
* SyntaxError
* undefined
* 1
%exp

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

%
​---
```
({5:1})[2+3]
```
* 1
* SyntaxError
* undefined
%exp

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

%
​---
```
false && true || true
```
* true
* false
* 1
%exp

%
​---
```
true || true && false
```
* true
* false
* Error
%exp

%
​---
```
0 * 1 ? 2 : 3
```
* 3
* 2
* 0
%exp

%
​---
```
var a = 1; a += 3 * 2 ; a
```
* 7
* 4
* 5
%exp

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

%
---
```
0 == 1 >= 2
```
* true
* false
* 0
%exp

%
---
