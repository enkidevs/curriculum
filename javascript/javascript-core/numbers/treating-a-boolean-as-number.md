---
author: pawel
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Treating a Boolean as Number


---

## Content

*Type coercion* converts a boolean to a number.

`true` is evaluated to `1` and `false` is evaluated to `0`.

For example:

```javascript
console.log(3 + false); // 3
console.log(3 + true); // 4
console.log(3 - true); // 2
```


---

## Practice

What does the following code snippet output? ???

```javascript
console.log(3 - false);
console.log(3 + false);
console.log(3 + true);
```

- `3, 3, 4`
- `2, 4, 3`
- `3, 3, 3`
- `4, 2, 3`
- `2, 4, 4`


---

## Revision

What does the this code output?

```javascript
console.log(3 + false); // ???
console.log(3 + true); // ???
```

- 3
- 4
- undefined


---

## Quiz

### How will (5 + true) be evaluated?


What would the output of the following code snippet be?

```javascript
console.log(5 + true);
```

- 6
- 5
- True
- SyntaxError
 
