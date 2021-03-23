---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Window){website}
  - >-
    [ryanmorr.com](http://ryanmorr.com/understanding-scope-and-context-in-javascript/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Context in JavaScript


---

## Content

In JavaScript `this` represents the **context** of a function. The code currently executing belongs to the object that `this` references.

If you call an **unbound** function, `this` will default to the **global context** or `Window` object in the browser. 

If you execute a function in **strict mode**, the context will default to `undefined`.

If you call a function as a **method** of an object, `this` is set to the object the method is called on.

If you create a `new` instance of an object to call a function, `this` is set to the newly created instance.

You can use `bind()` to avoid confusion by specifying the `this` to use when calling a function.


---

## Practice

What will the context default to when executing a function in strict mode? 

???

- undefined
- this
- Window
- navigator
- bind
- new


---

## Revision

What represent the **context** of a function in Javascript?

???

- this
- undefined
- Window
- navigator
- history
- bind
- new
 
