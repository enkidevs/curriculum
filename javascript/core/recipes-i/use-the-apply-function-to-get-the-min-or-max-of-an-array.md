---
author: Bruno

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

standards:
  javascript.write-expressions.0: 10
  javascript.evaluate-expressions.5: 10
  javascript.data-types-structures.6: 10

links:

  - '[stackoverflow](http://stackoverflow.com/questions/21255138){discussion}'

---

# Use the `apply` function to get the `min` or `max` of an array

---
## Content

Common idiom:

```javascript
var nums = [1, 3, 2]
Math.max.apply(Math,nums) // 3
Math.min.apply(Math,nums) // 1
```

Note that `apply` is required here because `Math.max` does not directly support arrays as an argument.

More examples:

```javascript
Math.max(1,3,2)                 // 3
Math.max([1,3,2])             // NaN
Math.max.apply([1,3,2]) // -Infinity
Math.max.apply({},[1,3,2])      // 3
Math.max.apply(null,[1,3,2])    // 3
Math.max.apply(Math,[1,3,2])    // 3

```

The first argument provided to `.apply` is the "context". The value of this context does not matter in this case, but it is common practice when using `.apply`
to provide the relevant class as context.

---
## Practice

What is the return value of the following line?
```javascript
Math.max.apply(null, [5,8,2]);
// ???
```

* `8`
* `NaN`
* `-Infinity`
* `5`

---
## Revision

What is the return value of the following line?
```javascript
Math.max.apply(null, [5,8,2]);
// ???
```

* `8`
* `NaN`
* `-Infinity`
* `5`
 
