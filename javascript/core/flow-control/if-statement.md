---
author: alexjmackey

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Comparison Operators & If Else](https://youtu.be/7WkfzokHGqo){video}'

---

# If Statement

---
## Content

Like most programming languages JavaScript has a number of flow control statements including the standard `if`, `if..else` and `switch` statements.

```js
let isNewCustomer = true;

if (isNewCustomer === true) {
  // ...
}

if (invalidLogins > 3) {
  // ...
}
```

### `if..else`

We can test multiple conditions using `if..else`. The first expression that is found to be `true` will be executed. If none of them are `true` then the `else` condition is executed (if it exists):

```js
if (isNewCustomer) {
  // ...
} else if (isVipCustomer) {
  // ...
} else {
  // ...
}
```

### `switch`

When needing to do a lot of comparisons for a single value, instead of using many `if..else` statements, code can be made more readable by using the `switch` statement:

```js
switch (customerType) {
  case "normal":
    // ...
    break;
  case "vip":
    // ...
    break;
  default:
    // ...
}
```

The `default` case in a `switch` statement is like the last `else` in an `if..else` chain. It will be reached if none of the previously tested conditions are `true`.

---
## Practice

How would you write an `if/else` statement?
```
if (condition <= 0) {
  ...
} ??? ??? (condition > 0) {
  ...
}

```

* `else`
* `if`
* `case`
* `break`
* `if else`
* `else if`
* `switch`
* `case`
* `==`

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

* `switch`
* `case`
* `default`
* `break`
* `if`
* `else`
* `if else`
