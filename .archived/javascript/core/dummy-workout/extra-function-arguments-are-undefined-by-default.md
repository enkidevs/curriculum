---
author: dean

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - 'function, arguments, undefined, default'

links:

  - '[javascript.info](http://javascript.info/tutorial/arguments){website}'

---
# Extra function arguments are undefined by default

---
## Content

Functions can be called with **any** amount of arguments, regardless of the parameters stated in the constructor.

Including parameters that aren't set a value, any extra arguments are set to *undefined* by default.

Any extra arguments can be accessed via the *arguments* object, which each function has.

```javascript
function foo(amount) {
    // Output the argument value
    alert(arguments[amount]);
}

// Without an argument
foo(); // undefined

// Output the extra argument
foo(1, "lol"); // "lol"

// Output the extra argument after
// the extra argument set
foo(2, "lol"); // undefined
```

---
## Practice

What's the output of the following snippet?
```javascript
function bar(x) {
 console.log(arguments[x]);
}

bar(2, "a", "b");
// ???
```
* b
* a
* 2

---
## Revision

A function can be called using any number of arguments, but they are set to *undefined* by default. What output will the following code sinppet have?
```javascript
function foo(arg) {
   console.log(arguments[arg]);
}
foo(1, "test");
// ???
```

* test
* 1
* undefined