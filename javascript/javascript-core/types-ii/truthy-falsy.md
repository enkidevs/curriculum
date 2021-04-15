---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN -
    Falsy](https://developer.mozilla.org/en-US/docs/Glossary/Falsy){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Truthy Falsy


---

## Content

All values in JavaScript have a corresponding *boolean* value of either `true` or `false`.

The ones that correspond to a `false` value are called **falsy**. 

Here are the common falsy values:

- `null`
- `0`
- `false`
- `""` (empty string)
- `undefined`
- `NaN` (Not A Number)
- `-0` (negative zero)	

*Note: there're two more falsy values that are less common, `-0` and `0n`.*

Every other value is considered to be **truthy**.

This includes some things you might not expect such as:

- Empty objects
- The string version of zero e.g. `"0"`
- Empty arrays and functions

**Why is this important?**

All boolean operations in JavaScript, before doing what's intended, will first convert a value to its corresponding boolean value, based on its "truthyness".

```javascript
// first, convert x to a boolean
// then, decide where to go in the if/else flow
if (x) {
   // x is truthy
} else {
   // x is falsy
}
```


---

## Practice

The value of `0` is ???.

- falsy
- truthy
- neither falsy nor truthy.


---

## Revision

An empty string is ???.

- falsy
- truthy
- neither falsy nor truthy
