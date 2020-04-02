---
author: pawel

type: normal

category: must-know

tags:
  - introduction

links:
  - '[Comparison Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators){website}'

aspects:
  - introduction
  - workout
  - obscura

---

# Weak vs Strict equality operator

---
## Content

JavaScript supports two forms of equality.

### Weak Typing

The operator `==` coerces (converts) types before comparing the terms:

```js
0 == "" // true
5 == "5" // true
false == "0" // true
"enki" == "enki" // true
```

Using `==` is generally considered bad practice as it often leads to difficult-to-locate bugs due to unexpected type conversions.

### Strict Typing

The strict equality operator `===` works as `==`, but without type coercion:

```js
0 === "" // false
5 == "5" // false
false == "0" // false
"enki" === "enki" // true
```

---
## Practice

What is the output of the following code?

```javascript
console.log("19" == 19)
console.log(0 == "");
console.log("nk" === "nk")
// ???
```


* `true true true`
* `false true true`
* `true false true`
* `true true false`
* `true false false`
* `false true false`
* `false false true`
* `false false false`

---
## Revision

What will the following code output?

```javascript
console.log("" == 0);
console.log("" == " ");
// ???
```

* `true false`
* `true true`
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
 
