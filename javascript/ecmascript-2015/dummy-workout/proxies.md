---
author: nene
levels:
  - basic
  - advanced
  - medium
type: normal
category: how-to
links:
  - >-
    [ponyfoo.com](https://ponyfoo.com/articles/es6-proxy-traps-in-depth){website}
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Proxy){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Proxies


---

## Content

Proxies enable custom behaviors for fundamental operations (e.g., property lookup, assignment, enumeration, function invocation...).

For instance:

    // make NaN the default value for getters
    var handler = {
      get: (target, name) =>
        name in target ? target[name] : NaN
    };

    var obj = new Proxy({}, handler);
    obj.a = 1;
    obj.b = 2;

    console.log(obj.a) // 1
    console.log(obj.b) // 2
    console.log(obj.c) // NaN

`obj.c` evaluates to `NaN` (instead of the usual `undefined`) because of the special behavior defined in the Proxy's handler.


---

## Revision

What is the output of the following logs?

```javascript
var handler = {
  get: (target, name) =>
    name in target ? target[name] : -4
};

var obj = new Proxy({}, handler);
obj.a = 5;

console.log(obj.a) // ???
console.log(obj.enki) // ???
```

- 5
- -4
- NaN
- undefined
- -Infinity
 
