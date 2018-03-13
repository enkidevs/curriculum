---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats




---
## Content
# `NaN` is a number

When using the `typeof` operator with `NaN`, an interesting result is observed:

```
var x = typeof NaN;
console.log(x);
// 'number'
```

To distinguish `NaN` from other numbers, use `Number.isNaN`:

```
Number.isNaN(5) // false
Number.isNaN(true) // false
Number.isNaN('') // false
Number.isNaN(NaN) // true
Number.isNaN(Infinite) // false
Number.isNaN(Number.NaN) // true
```

Beware that using `=== NaN` instead of `isNaN` would not work because `NaN` is not equal to itself:

```
1 === NaN  // false
NaN === NaN // false
Infinity === NaN // false
```

---
## Revision

The following code snippet outputs ???
```
console.log(typeof NaN);
```

* number
* NaN
* false
* Infinite

---
## Quiz
### is NaN a number?
// What is the output of this line?
console.log(typeof(NaN));


 ???

* number
* object
* function
* undefined

