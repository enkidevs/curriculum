---
author: rosielowther
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The NaN value


---

## Content

In JavaScript, `NaN` means **Not-A-Number** and is the result when math functions fail or when a function expecting a number is given a different type:

```js
// dividing by zero
// gives "not a number"
let x = 0 / 0;
console.log(x);
// NaN
```

It is a special value of type `"number"` to represent an invalid number.

One notable property of `NaN` is that it is never equal to itself:

```js
NaN === NaN // false
```

The main way to check if a value is `NaN` is by using the `isNaN` function:

```js
Number.isNaN(NaN); // true
Number.isNaN(2); // false
```


---

## Practice

What does the following code output?

```javascript
function foo(num){
  return num / 2;
}

console.log(foo("sum"));
// ???
```

- `NaN`
- `undefined`
- `null`


---

## Revision

What will this print?

```javascript
let x = 0 / 0;
console.log(x);
// ???
```

- `NaN`
- `undefined`
- `null`
