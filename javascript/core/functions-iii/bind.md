# `.bind()`
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

standards:
  js.functions.5: 10
  js.execution-context.0: 10

tags:
  - introduction
  - workout

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/2236747/use-of-the-javascript-bind-method){website}

  - '[www.javascripture.com](http://www.javascripture.com/Function#bind){website}'

---
## Content

The `bind()` function creates a new **bound function** with the same function body as the function it is being called on.

You can use `bind()` to make a function that is always called with a **particular** `this` value:
```
bind(thisArg, [p1, [p2, [...]]])
// returns a new function
// that has this equal to thisArg
```
The other parameters are optional and bind the parameters of the function, for example:

```
var sum = function(a, b) {
  return a + b;
};
var add10 = sum.bind(null, 10);
// binds a = 10
console.log(add10(10)); // 20
```

---
## Practice

Complete the code snippet below to return a new function with its `this` being equal to `thisArg`:

```javascript
???(???, [p1, [???, [...]]])
```

* `bind`
* `thisArg`
* `p2`
* `tie`
* `next`
* `this`
* `param`
* `function`
* `combine`

---
## Revision

What can be used to make a function be always called with a **particular** `this` value?

???

*`bind()`
*`push()`
*nothing
*`return`
*`new`
