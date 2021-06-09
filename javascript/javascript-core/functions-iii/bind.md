---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [What is the use of the JavaScript 'bind' method?](http://stackoverflow.com/questions/2236747/use-of-the-javascript-bind-method){website}
  - >-
    [bind](http://www.javascripture.com/Function#bind){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `.bind()`


---

## Content

The `bind()` function creates a new **bound function** with the same function body as the function it is being called on. 

You can use `bind()` to make a function that is always called with a **particular** `this` value:

```javascript
bind(thisArg, [p1, [p2, [...]]])
// returns a new function 
// that has this equal to thisArg
```

The other parameters are optional and bind the parameters of the function, for example:

```javascript
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

- `bind`
- `thisArg`
- `p2`
- `tie`
- `next`
- `this`
- `param`
- `function`
- `combine`


---

## Revision

What can be used to make a function be always called with a **particular** `this` value?

???

- `bind()`
- `push()`
- nothing
- `return`
- `new`
 
