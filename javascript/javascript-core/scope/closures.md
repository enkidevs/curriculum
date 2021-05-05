---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Understanding Scope and
    Context](http://ryanmorr.com/understanding-scope-and-context-in-javascript/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Closures


---

## Content

A **closure** is created when a function is created and includes both the function and its surrounding scope.

When functions are nested, a closure gives the inner function access to the outer function’s scope.

For example, you can return the inner function `bar()` from the outer function `foo()` and `bar()` will still maintain access to the local variables and arguments of the outer function `foo()`:

```js
function foo(val) {
  let code = "coding is";
  
  return function bar() {
    // bar has access to code
    // and to val even after
    // it is returned from foo
    return code + " " + val;
  };
}

let bar = foo("fun");
bar(); // "coding is fun"
```

Which is the same as:

```js
foo("fun")(); // "coding is fun"
```

Closures allow us to emulate "private" variables using nested functions, by hiding them in the outer function's scope, and thus making them available only to the returned inner function.


---

## Practice

This code ??? run:

```javascript
function foo() {
  let localVariable = "lVar";
  return function bar() {
    return localVariable;
  };
}
foo()();
```

- will
- will not


---

## Revision

A *closure* is created when a function is ???.

- created
- called
- nested
