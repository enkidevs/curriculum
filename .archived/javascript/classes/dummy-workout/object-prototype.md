---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/toString){website}

  - >-
    [github.com](https://github.com/getify/You-Dont-Know-JS/blob/master/this%20&%20object%20prototypes/ch5.md){website}

---
# Object.prototype

---
## Content

The top of the `[[Prototype]]` chain is the object `Object.prototype`.

This mean all objects in Javascript can access the methods in `Object.prototype` (apart from some host-specific extensions).

For example `toString()` returns `[object type]`:
```
var obj = new Enki();
obj.toString(); // returns [object Enki]
```

---
## Revision

What's the output of the following code snippet?
```javascript
var myObj = new Enki();
console.log(myObj.toString());
// ???
```

* [object Enki]
* [Enki]
* [object]
* [[Prototype]]
* Object.prototype