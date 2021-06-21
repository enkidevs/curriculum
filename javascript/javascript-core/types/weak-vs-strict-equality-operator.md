---
author: pawel
type: normal
category: discussion
tags:
  - introduction
links:
  - >-
    [Comparison
    Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators){website}
  - >-
    [Using `==` in Js](https://2ality.com/2011/12/strict-equality-exemptions.html){website}
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

In JavaScript, there are two ways to check if values equal each other.

### Weak Typing `==`

The operator `==` coerces (converts) types before comparing the terms. Using `==` to compare two values will first force the values to have the same type before comparing them:

```js
// a number 2
let x = 2; 

// a string '2'
let y = '2';

// are equal when
// using == because
// they are both
// first converted
// to numbers before
// comparing
console.log(
  x == y // true
);
```

> 💡 The **weak equality operator** (`==`) is also refered to as **loose** or **abstract**.

### Strict Typing `===`

The strict equality operator `===` works as `==`, but without type coercion. Using `===` will require us to match both the type and the value:

```js
// a number 2
let x = 2; 

// a string '2'
let y = '2';

// when using ===
// any values that
// have a different
// type are always
// not equal
console.log(
  x === y // false
);
```

Using `==` is generally considered bad practice as it could lead to bugs in the code. 

> 🤔 What kind of problems do you think using weak equality operators can cause? Can you think of an example?
>
> Leave a comment or view some of the other comments for inspiration before moving on.

In case you need a hint, check out this footnote[1].

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

---

## Footnotes

[1: Hints]

Weak equality operators can cause difficult-to-locate bugs due to unexpected type conversions.
