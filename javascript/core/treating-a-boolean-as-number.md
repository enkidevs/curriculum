# Treating a boolean as number
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - type-coercion

  - ''

---
## Content

*Type coercion* converts a boolean to a number. 

`true` is evaluated to `1` and `false` is evaluated to `0`.

For example:

```javascript
console.log(3 + false); // 3
console.log(3 + true); // 4
```

---
## Practice

What does the following code snippet output? ???

```javascript
console.log(3 - false);
console.log(3 + false);
console.log(3 + true);
```

* `3, 3, 4`
* `2, 4, 3`
* `3, 3, 3`
* `4, 2, 3`
* `2, 4, 4`

---
## Revision

What does the this code output?
```javascript
console.log(3 + false); // ???
console.log(3 + true); // ???
```  
* 3
* 4
* undefined

---
## Quiz

headline: how will (5 + true) be evaluated?

question: |
  // What would the output of the following code snippet be?
  console.log(5 + true);

answers:
  - 6
  - 5
  - True
  - SyntaxError
