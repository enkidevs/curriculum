---
author: pawel

levels:

  - basic

type: normal

category: must-know

standards:
  javascript.evaluate-expressions.5: 10
  javascript.evaluate-expressions.4: 10
  javascript.javascript-syntax.2: 10
  javascript.evaluate-expressions.3: 10
  javascript.evaluate-expressions.10: 10

tags:

  - introduction


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators){website}'


aspects:
  - introduction


---

# Weak vs Strict equality operator

---
## Content

JavaScript supports two forms of equality.

*Weak Typing*

The operator `==` coerces (converts) types before comparing the terms:

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
Note: ` \t\r\n` are special characters that you might see in strings. All of them are whitespace, under one for or another. `\t` represents a tab (multiple space characters), while `\n` - carriage return -  and `\s` - line feed - are new line characters (they are not exactly the same and are even used together - CRLF).

---
## Practice

What is the output of the following code?

```javascript
console.log("" == "0")
console.log("" === "0")
console.log(" \t\r\n" == 0)
// ???
```


* `false false true`
* `false true false`
* `true false true`
* `true false false`
* `true true true`
* `false true true`

---
## Revision

What will the following code output?

```javascript
console.log(0 == "");
console.log("\n" == 0);
// ???
```

* `true true`
* `true false`
* `false true`
* `false false`

---
## Quiz
### how familiar are you with weak equality?

// What will this evaluate to?
"\t\r\n\ " == 0

* true
* false
* SyntaxError
* String
 
