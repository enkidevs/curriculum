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

Precedence decides the order in which operators are evaluated.

Higher precedence means earlier evaluation.

How well do you know how JavaScript handles precedence?

---
## Game Content

```
1 + 2 + "3" + 4
```
* "334"
* "1234"
* "37"
%exp
The expression is read from left to right: integer addition is done first (`3`), then string concatenation(`33`) and then another string concatenation (`334`).
%
---
```
2 - 2 - 2
```
* -2
* 2
* 0
%exp
Nothing uncommon here: the computation is done from left to right.
%
​---
```
2 * 3 + 4
```
* 10
* 14
* 18
%exp
`*` has higher priority than `+`. `2*3` is computed first, then the addition is done.
%
```
​---
{5:1}[2+3]
```
* SyntaxError
* undefined
* 1
%exp
Wrong brackets used here.
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
There are two ways to increment a number: `a++` and `++a`. The first one, returns the value hold by `a` first and the increments its value. The second one, increments the value first and returns the value after.
%
​---
```
({5:1})[2+3]
```
* 1
* SyntaxError
* undefined
%exp
This means: find out the value mapped with key 5 (from [2+3]). ({5 : 1}) means that we map value `1` with key `5`.
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
`(a++)+b` means increment `a`'s value by 1 and add `b`'s value afterwards. In this situation, `b` remains unchanged.
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
`(a++)+b` first, the value of `a` is incremented and b is added, but this result isn't held by any of the variables. In the end `a`'s value is `2`.  
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
`a++` returns the value of `a` before incrementing, `++b` returns the value of `b` after incrementing. The result of the subtraction is: `1 - 2 = -1`.
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
The operator won't even past the  `true` in the clause here, since the first operand is `true` we know the result will be `true`.
%
​---
```
0 * 1 ? 2 : 3
```
* 3
* 2
* 0
%exp
The above syntax, called ternary operator, is equivalent to an `if-else` clause: `if(0*1) return 2 else return 3`. JavaScript evaluates `0` to `false`, hence the result is `3`.
%
​---
```
var a = 1; a += 3 * 2 ; a
```
* 7
* 4
* 5
%exp
`a = a + (3 * 2)`, because `a = 1` => `7`
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
`a += (1 && a) *=2`.The `&&` operator has higher priority then assignment(`=`) operator. It returns the left expressions if it can be evaluated to `false`, otherwise it returns the expression on the right hand side.
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
Because of the parantheses here, we first increment check the lefthand side of the `&&` expression to see if it is flase. `1` is evaluated to `true` in python so the result is: `a += (a*=2)` => `a = -1 + (2 * (-1))` => `a=3`.

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
