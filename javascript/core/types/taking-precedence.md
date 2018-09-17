---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

standards:
  javascript.javascript-syntax.2: 1000
  javascript.write-expressions.0: 1000
  javascript.evaluate-expressions.0: 1000
---

# Taking precedence...

---
## Content

Precedence decides the order in which operators are evaluated.

Higher precedence means earlier evaluation.

How well do you know how JavaScript handles precedence?

---
## Game Content

```javascript
1 + 2 + "3" + 4
```

* "334"
* "1234"
* "37"

%exp
The expression is read from left to right: integer addition is done first 1+2 = (`3`), then string concatenation 3+'3' = (`33`) and then another string concatenation, '33'+4 resulting in `334`.
%

---

```javascript
2 - 2 - 2
```

* -2
* 2
* 0

%exp
Nothing uncommon here: the computation is done from **left to right**.
%

---

```javascript
2 * 3 + 4
```

* 10
* 14
* 18

%exp
The multiplication operation (`*`) has higher priority than addition (`+`).

`2 * 3` is computed first, then the addition results in `10`.
%

---

```javascript
{5:1}[2+3]
```

* SyntaxError
* undefined
* 1

%exp
There's a syntax error in this code snippet. `[2+3]` will be evaluated first, followed by the block `{...}` before it, where using `:` is illegal.
%

---

```javascript
var a = 1
a++
```

* 1
* 2
* undefined

%exp
There are two ways to increment a number: `a++` and `++a`. The first one, returns the value hold by `a` first and the increments its value. The second one, increments the value first and returns the new value.
%

---

```javascript
({5:1})[2+3]
```

* 1
* SyntaxError
* undefined

%exp
`({5 : 1})` will be evaluated first because of the parentheses, denoting an object in which key `5` has the value `1`.

Therefore, `[2+3]` will get the value of the entry at key `5` - which is `1`.
%

---

```javascript
var a = 1
var b = 1
a+++b
b
```

* 1
* 2
* undefined

%exp
`(a++)+b` means increment `a`'s value by `1` and add afterwards to what is returned `b`'s value. In this situation, `b` remains unchanged.
%

---

```javascript
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


---

```javascript
var a = 1
var b = 1
a++-++b
```

* -1
* 1
* 0

%exp
`a++` returns the value of `a` before incrementing, `++b` returns the value of `b` after incrementing.

The result of the subtraction is: `1 - 2 = -1`.
%

---

```javascript
false && true || true
```

* true
* false
* 1

%exp
`(false && true) || true` => `false || true` => `true`
%

---

```javascript
true || true && false
```

* true
* false
* Error

%exp
A "short-circuit" evaluation rule is found here. As the logical expression is of the form `true || (anything)`, it will directly return `true`, without the need of the second evaluation.
%

---

```javascript
0 * 1 ? 2 : 3
```

* 3
* 2
* 0

%exp
The above syntax, called ternary operator, is equivalent to an `if-else` clause: `if(0*1) return 2 else return 3`.

JavaScript evaluates `0` to `false`, hence the result is `3`.
%

---

```javascript
var a = 1; a += 3 * 2 ; a
```

* 7
* 4
* 5

%exp
The `a += 3 * 2` expression is converted to `a = 1 + (3 * 2)` => `a = 7`.
%

---

```javascript
var a = -1;
a += 1 && a *= 2
```

* ReferrenceError
* -3
* 0

%exp
As the **AND** (`&&`) operator has higher priority than assignment (`=`), the expression can be converted to: `a += (1 && a) *=2`.
Following this, the second assignment will have an **invalid** left-hand operand.
%

---

```javascript
var a = -1;
a += 1 && (a *= 2)
```

* -3
* 0
* ReferrenceError

%exp
Parentheses will be evaluated first, `a` getting the new value of `-2`. Next, the logical `&&` operator will return `-2` for `1 && -2`.
Last, but not least, `-2` is added to the initial value of `a`, resulting in `-3`.
%

---

```javascript
0 == 1 >= 2
```

* true
* false
* 0

%exp
The expression can be converted to `0 == (1 >= 2)` as `>=` has higher priority than `==`.

`0 == (1 >=2)` => `0 == false` => `false` (as `0` is falsy)
%
