# Infinity
author: adamMontgomerie

levels:

  - basic

  - beginner

  - medium

type: fillTheGap

category: tip

---
## Content

Your goal is to determine what the console will print out for each given value of `x`

---
## Game Content

```
var x = 10/0;
console.log(x); //prints ???
```
*`Infinity`
*`0`
*`NaN`
---
```
var x = Infinity - Infinity;
console.log(x); //prints ???
```
*`NaN`
*`0`
*`Infinity`
---
```
var x = -10/0;
console.log(x); //prints ???
```
*`-Infinity`
*`Infinity`
*`0`
---
```
var x = Infinity * 10;
console.log(x); //prints ???
```
*`Infinity`
*`NaN`
*`-Infinity`
---
```
var x = 10/-0;
console.log(x); //prints ???
```
*`-Infinity`
*`Infinity`
*`NaN`
