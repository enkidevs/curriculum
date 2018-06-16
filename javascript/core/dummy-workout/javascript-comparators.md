---
author: rosielowther

levels:

  - basic

  - beginner

  - medium

type: tetris

category: must-know

---
# JavaScript Comparators

---
## Content

Do you know how JavaScript comparisons work?

---
## Game Content

```true
"1" == 1
%exp
The types in this comparison are coerced (automatic type conversion) because the abstract comparison (i.e. `==`) was used.

Their pure values are the same, the expression being `true`.
%

null == undefined
%exp
Both `null` and `undefined` in **JavaScript** indicate absence of value.

The specifications for the "loose" equality operator (`==`) is defined such that this expression return `true`.
%

1 === 1
%exp
The strict equality operator (`===`) checks for both the type and value of the operands.

These are identical here, the expression being `true`.
%
1 !== '1'
%exp
The negated strict equality operator (`!==`) will check for the operands' types (which are different) and value, returning the opposite value (`true` in our case as the types are different).
%
2 >= 1
%exp
Here, `2` is clearly **greater than or equal to** `1`.
%

0 == false
%exp
Here, automatic type conversion is done, `false` being converted to a number (specifically `0`), the expression being `true`.
%
1 != false
%exp
`false` is automatically converted to `0`, the expression evaluated in the end begin `1 != 0`, which is `true`.
%
```
```false
NaN == NaN
%exp
The **JavaScript** spec, following **IEEE 754** spec for floating-point numbers says that `NaN`s are never equal.
%

0 == undefined
%exp
Comparing a **number** with `undefined` will always result in `false`.
%

1 != true
%exp
As `1 == true` will result in `true` (second operand is converted to `1`), this expression is `false`.
%

0 == null
%exp
Comparing a **number** with `null` will always result in `false`.
%

0 === '0'
%exp
Because the strict equality operator (`...`) is used, the operands types are firstly checked. As they are different, the comparison is `false`.
%

2 <= 1
%exp
The expression is clearly false as `2` is bigger than `1`.
%

1 < 1
%exp
This expression is false, `1` being **equal** to `1` and not **less than**.
%
```
 
