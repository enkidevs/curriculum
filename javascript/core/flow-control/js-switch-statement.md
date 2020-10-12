---
author: nem035
type: normal
category: must-know
---

# Switch Statement


---

## Content

When needing to do a lot of comparisons for a single value, instead of using many `if..else` statements, code can be made more readable by using the `switch` statement:

```js
// this code
if (a === "5") {
  // ...
} else if (a === "6") {
  // ...
} else if (a === "7") {
  // ...
} else {
  // ...
}

// is more readable like this
switch (a) {
  case "5":
    // ...
    break;
  case "6":
    // ...
    break;
  default:
    // ...
}
```

The `default` case in a `switch` statement is like the last `else` in an `if..else` chain. It will be reached if none of the previously tested conditions are `true`.

The `break` statement is needed to, as you might've already guessed, break out of the `switch` statement.

In case you omit `break`, `switch` will run all the following cases until it encounters `break`.


---

## Revision

Complete the basic syntax of the following `switch` statement:

```js
??? (checker) {
  case "1":
    // ...
    break;
  case "2":
    // ...
    break;
  ???:
    // ...
}
```

- `switch`
- `default`
- `case`
- `break`
- `if`
- `else`
- `if else`
