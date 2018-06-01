---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

standards:

  javascript.javascript-syntax.1: 10

  javascript.standard-library.3: 10

tags:
  - introduction


links:

  - '[github.com](https://github.com/getify/You-Dont-Know-JS/blob/master/async%20&%20performance/ch1.md){website}'
  - '[developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/API/Console/log){website}'
---

# `console.*` in JavaScript

---

## Content

The `console.*` methods output information to a console.

For example, `console.log` can print out a message or show details of an object:

```javascript
console.log("Username: " + username);
// Username: enkilondon
```

A few other useful console methods include:
Sending a warning to the console.

```javascript
console.warn("Resource not changed");
```

Sending an error message to the console.

```javascript
console.error("File not found!");
```

Viewing the current stack trace.

```javascript
console.trace();
```

In JavaScript there is no specification for how `console.*` methods behave. Each environment adds its own methods and behaviour.

When creating a web application, the use of `console.*` is critical for quickly debugging problems. Whenever you need more information on a variable, or would like to know where your code stops working, you should apply a console statement at the area in question. `console.*` statements can be viewed in Google Chrome by pressing `Ctrl+Shift+i`, and in Firefox by pressing `Ctrl+Shift+k`.

In addition to this, `console.*` can be used to pipe information to `stdout` in NodeJS.

**It is considered best practice to not include any `console.*` methods in production code.**

---

## Practice

Which of the following is the correct method for outputting information to the console? ???

- `console.log();`
- `console.write();`
- `console.print();`
- `console.println();`

---

## Revision

Log a message in the `console`:

```javascript
???.???("my message");
```

- `console`
- `log`
- `print`
- `system`
- `output`
- `show`
- `warn`
