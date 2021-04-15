---
author: pawel
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [Comparison
    Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
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

> 💡 The **weak equality operator** (`==`) is also refered to as **loose** or **abstract**.

### Strict Typing

The strict equality operator `===` works as `==`, but without type coercion:

```js
0 === "" // false
5 === "5" // false
false === "0" // false
"enki" === "enki" // true
```


---

## Practice

Match the type name with the operator:

```plain-text
==  - ???
=== - ???
```

Fill in the gaps with the correct equality operator to get the output:

```js
"19" ??? 19
// true

"nk" ??? "nk"
// true
```

- Weak Equality Operator
- Strict Equality Operator
- ==
- ===
- Reference Equality Operator


---

## Revision

What will the following code output?

```javascript
console.log("" == 0);
// ???
console.log("" == " ");
// ???
```

- true
- false


---

## Quiz

### how familiar are you with weak equality?


// What will this evaluate to?
"\t\r\n\ " == 0

- true
- false
- SyntaxError
- String
