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
In javascript addition of a string and integers results in concatenation not addition.
%
---
```
2 - 2 - 2
```
* -2
* 2
* 0
%exp
Any series of arithmetic operators is calculated in concordance with maths rules.
%
​---
```
2 * 3 + 4
```
* 10
* 14
* 18
%exp
Any series of arithmetic operators is calculated in concordance with maths rules. So we first consider 2 * 3 and then 6 + 4.
%
```
​---
{5:1}[2+3]
```
* SyntaxError
* undefined
* 1
%exp
Bracket notation syntax wrong.
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
The increment operator can be used in two forms. Let’s take x be a variable. Then x++ returns the value before increment and ++x returns the value after increment.
%
​---
```
({5:1})[2+3]
```
* 1
* SyntaxError
* undefined
%exp
This is called bracket notation and what it states is: find out the object value at key 5 (from [2+3]). ({5 : 1}) means there is value 1 at key 5. So the result is 1.
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
b’s value isn’t changed in any way, the result is 1.
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
a is incremented once and then printed, so the result is 2.
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
a++ returns the value of a before increment subtracting ++b, which returns the value of b incremented once, we get the result -1.
%
​---
```
false && true || true
```
* true
* false
* 1
%exp
False and true results in  false. Then false or true results in true.
%
​---
```
true || true && false
```
* true
* false
* Error
%exp
False and true results in  false. Then false or true results in true.
%
​---
```
0 * 1 ? 2 : 3
```
* 3
* 2
* 0
%exp
This is called ternary operator. It basically states: if(01) return 2 else 3.  
0 * 1 equals false so the result is 3.
%
​---
```
var a = 1; a += 3 * 2 ; a
```
* 7
* 4
* 5
%exp
First we assign a the value 1. Then we add it’s value the result of 3*2 expression. So the result is 7.
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
Here we will get `ReferrenceError` because the right syntax is with `a*=2` enclosed between `()`.
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
Here, the console evaluates `1 && (a *= 2)` and returns -2 which is then added to the current value of a(-1) so the result is -3.
%
---
```
0 == 1 >= 2
```
* true
* false
* 0
%exp
It first evaluates if 1 is grater or equal to 2. It is not so the result is 0 (false). The final result is true because 0 == 0.
%
---
