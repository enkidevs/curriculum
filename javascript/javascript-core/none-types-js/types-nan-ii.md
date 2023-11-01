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

# The isNaN function


---

## Content

Imagine we needed to collect the `age` of every person in a classroom so that we may find the oldest person present. It's a simple calculation that could become quite complex if some of the `age` values are text instead of numbers.

We can tackle this issue using the `isNaN` function. If it's not a number, it will return true. Otherwise, false.

```js
isNaN(23) // false (it's a number)
isNaN("Twenty Three") // true (it's not a number)
```

> 🤔 Where else could we use the `isNaN` function to make our lives easier?
>
> Leave a comment or view some of the other comments for inspiration before moving on.

---

## Practice

What does the following code output?

```javascript
console.log("one" / 2);
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
