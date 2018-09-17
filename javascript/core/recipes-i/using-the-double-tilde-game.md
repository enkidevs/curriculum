---
author: adamMontgomerie

levels:

  - beginner

  - basic

  - medium

type: fillTheGap

category: tip

standards:
  javascript.write-expressions.0: 1000
  javascript.evaluate-expressions.3: 1000
  javascript.data-types-structures.1: 1000

---

# Using the double tilde ~~

---
## Content

Your goal is to determine what the console will print out for each given value of `x`.

---
## Game Content

```javascript
var x = 3.5;
console.log(~~x); //prints ???
```

* `3`
* `3.5`
* `-3`

%exp
The double tilde syntax is just shorthand for truncating numbers to integers. It is used as a shorthand for `Math.floor()` although it has a key difference in that it just removes any numbers after the decimal place. Therefore 3.5 becomes 3.
%

---

```javascript
var x = -7.394;
console.log(~~x); //prints ???
```

* `-7`
* `7`
* `-7.394`

%exp
Double tilde just removes any numbers after the decimal place, retaining any positive or negative.
%

---

```javascript
var x = true;
console.log(~~x); //prints ???
```

* `1`
* `true`
* `NaN`

%exp
Double tilde `true` evaluates to 1 since the double tilde is technically a *double NOT bitwise operator*. `True` evaluates to `1` and `False` evaluates to `0`.
%

---

```javascript
var x = "Enki";
console.log(~~x); //prints ???
```

* `0`
* `Enki`
* `NaN`

%exp
Double tilde never returns `NaN`, but if a check fails it simply returns `0`.
%

---

```javascript
var x = "";
console.log(~~x); //prints ???
```

* `0`
* ` `
* `1`

%exp
Double tilde never returns `NaN`, but if a check fails it simply returns `0`.
%

---

```javascript
var x = false;
console.log(~~x); //prints ???
```

* `0`
* `NaN`
* `1`

%exp
Double tilde `false` evaluates to 0 since the double tilde is technically a *double NOT bitwise operator*. `True` evaluates to `1` and `False` evaluates to `0`.
%
