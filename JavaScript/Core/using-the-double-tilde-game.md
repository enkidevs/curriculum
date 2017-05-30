# Using the double tilde ~~
author: adamMontgomerie

levels:

  - beginner

  - basic

  - medium

type: fillTheGap

category: tip

---
## Content

Your goal is to determine what the console will print out for each given value of `x`.

---
## Game Content

```
var x = 3.5;
console.log(~~x); //prints ???
```
*`3`
*`3.5`
*`-3`
---
```
var x = -7.394;
console.log(~~x); //prints ???
```
*`-7`
*`7`
*`-7.394`
---
```
var x = true;
console.log(~~x); //prints ???
```
*`1`
*`true`
*`NaN`
---
```
var x = "Enki";
console.log(~~x); //prints ???
```
*`0`
*`Enki`
*`NaN`
---
```
var x = "";
console.log(~~x); //prints ???
```
*`0`
*` `
*`1`
---
```
var x = false;
console.log(~~x); //prints ???
```
*`0`
*`NaN`
*`1`
