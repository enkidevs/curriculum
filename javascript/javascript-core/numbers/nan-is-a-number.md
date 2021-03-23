---
author: jordanfish
type: normal
category: caveats
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `NaN` Is a Number


---

## Content

When using the `typeof` operator with `NaN`, an interesting result is observed:

```javascript
var x = typeof NaN;
console.log(x);
// 'number'
```

To distinguish `NaN` from other numbers, use `Number.isNaN`:

```javascript
Number.isNaN(5) // false
Number.isNaN(true) // false
Number.isNaN('') // false
Number.isNaN(NaN) // true
Number.isNaN(Infinite) // false
Number.isNaN(Number.NaN) // true
```

Beware that using `=== NaN` instead of `isNaN` would not work because `NaN` is not equal to itself:

```javascript
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

```javascript
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

```javascript
console.log(typeof(NaN));
```

???

- number
- object
- function
- undefined
 
