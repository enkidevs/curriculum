---
author: pawel
levels:
  - basic
  - beginner
type: normal
category: pattern
notes: >-
  It's always struggle for me for now to decide if it's not too simple to put it
  here, hope I made a right call here :)
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Conditional_Operator){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `if/else` shortcut `conditional operator`


---

## Content

Rather than using standard `if/else` notation such as:
```javascript
let count = 101;
let stop;
if (count > 100) {
  stop = true;
} else {
  stop = false;
}
// stop = true
```

It is possible to use a `Condition (ternary)` operator:
```javascript
let count = 99;
let stop = (count > 100) ? true : false;
// stop = false
```

---

## Practice

```javascript
if (animal === "lion") {
  run = true;
} else {
  run = false;
}
```

How would you express this using 
a conditional operator?

```javascript
let animal = 'lion';
let run = (animal === 'lion')? true:???;
```

- false
- 'undefined'
- 'null'
- true


---

## Revision

```javascript
if (animal === "lion") {
  run = true;
} else {
  run = false;
}
```

How would you express this using 
a conditional operator?

```javascript
let animal = 'lion';
let run = (animal === 'lion')? true:???;
```

- 'false'
- 'undefined'
- 'null'
- true
 
