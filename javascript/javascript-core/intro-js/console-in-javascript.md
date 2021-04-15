---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [MDN
    Documentation](https://developer.mozilla.org/en/docs/Web/API/Console/log){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# `console.*` in JavaScript


---

## Content

The `console.*` methods output information to a console.

For example, `console.log` can print out a message:

```js
console.log("This is my message");
// This is my message
```

More commonly it is used to show the current value of a variable when debugging. In this example we are logging the value of a variable called `username`:

```js
console.log("Username: " + username);
// Username: enkilondon
```

A few other useful console methods include:

Sending a warning to the console.

```js
console.warn("Resource not changed")
```

Sending an error message to the console.

```js
console.error("File not found!")
```

Viewing the current stack trace.

```js
console.trace()
```

In JavaScript, there is no specification for how `console.*` methods behave. Each environment adds its own methods and behavior.

When creating a web application, the use of `console.*` is critical for quickly debugging problems. Whenever you need more information on a variable or would like to know where your code stops working, you should apply a console statement at the area in question. `console.*` statements can be viewed in Google Chrome by pressing `Ctrl+Shift+i`, and in Firefox by pressing `Ctrl+Shift+k`.

In addition to this, `console.*` can be used to pipe information to `stdout` in NodeJS.

**It is considered best practice to not include any `console.*` methods in production code.**

> 💡 As with all the skills in the app, if you want to access more advanced or specific content at any time, **feel free to use the *Skill Map* tab** to jump to the workouts most relevant for you.

> 💬 Why are you interested in learning Javascript?
>
> Leave a comment or view some of the other comments for inspiration before moving on.


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
 
