# Weak vs Strict equality operator
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

notes: ''

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators){website}

---
## Content

JavaScript supports two forms of equality.

*Weak Typing*

The operator `==` coerces types before comparing the terms: 

```
""  ==  "0"    // false
0   ==  ""     // true
false == "0"   // true
" \t\r\n" == 0   // true
```
Using `==` is generally considered bad practice as it often leads to difficult-to-locate bugs due to unintuitive conversion rules.

*Strict Typing*

The strict equality operator is expressed as `===`. It works as `==`, but without type coercion:

```
""  ===  "0"    // false
0   ===  ""     // false
false === "0"   // false
" \t\r\n" === 0   // false
```

---
## Practice

What is the output of the following code? 

```javascript
"" == "0"
"" === "0"
" \t\r\n" == 0
```
???
* False, False, True
* False, True, False
* True, False, True
* True, False, False
* True, True, True
* False, True, True

---
## Revision

What will the following code output?
```javascript
console.log(0 == ""); 
console.log("\n" == 0); 
// ???
```
*true true
*true false
*false true
*false false