---
author: jordanfish
type: normal
category: caveats
---

# `NaN` is a number


---

## Content

When using the `typeof` operator with `NaN`, an interesting result is observed:

```plain-text
var x = typeof NaN;
console.log(x);
// 'number'
```

To distinguish `NaN` from other numbers, use `Number.isNaN`:

```plain-text
Number.isNaN(5) // false
Number.isNaN(true) // false
Number.isNaN('') // false
Number.isNaN(NaN) // true
Number.isNaN(Infinite) // false
Number.isNaN(Number.NaN) // true
```

Beware that using `=== NaN` instead of `isNaN` would not work because `NaN` is not equal to itself:

```plain-text
1 === NaN  // false
NaN === NaN // false
Infinity === NaN // false
```


---

## Practice

Complete the code to check if variable `z` is *not a number*.

```javascript
var z = NaN
???.???(z) // true
```

- Number
- isNaN
- isNotNaN
- Math
- validate
- NaN
- check
- is


---

## Revision

The following code snippet outputs ???

```plain-text
console.log(typeof NaN);
```

- number
- NaN
- false
- Infinite


---

## Quiz

### is NaN a number?


What is the output of this line?

```plain-text
console.log(typeof(NaN));
```

???

- number
- object
- function
- undefined
