---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: tip

tags:

  - ''

links:

  - >-
    [blog.mariusschulz.com](https://blog.mariusschulz.com/2013/11/13/advanced-javascript-debugging-with-consoletable){website}

---
# Advanced debugging with `Console` API

---
## Content

`Console` API provide a range of functions useful during debugging:

Assert an object if a condition is false:
```
console.assert(expression, object)
```
Print a stack trace from the point where the method was called:

```
console.trace(object)
```

Start and end a timer:
```
console.time(label)
console.timeEnd(label)
```

Print a representation of the specified object:

```
console.dir(object)
```
Clear the console:
```
console.clear()
```

---
## Revision

Assert an object if a condition is false with `Console` API:
```javascript
???.???(expression, object);
```
* console
* assert
* trace
* clear
* Console