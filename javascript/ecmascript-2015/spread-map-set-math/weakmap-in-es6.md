---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - new
  - workout

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/WeakMap){website}'

---

# `WeakMap` in ES6

---
## Content

ES6 has a new data structure `WeakMap`. It is a collection of key/value pairs. Its keys must be objects. 

The syntax is:
```
new WeakMap([iterable])
```
The major benefit of using a `WeakMap` is  that memory leaks are prevented.

References to key objects are held weakly. This means that if there are no other strong references to the key, the entire entry will be removed by the garbage collector.

**Note**: `WeakMap` keys are not enumerable. Maintain a list of keys if required.

---
## Practice

Complete the syntax for a WeakMap below:
```
new ???([???])
```

* `WeakMap`
* `iterable`
* `weakmap`
* `Weakmap`
* `iterate`
* `iterator`

---
## Revision

Are `WeakMap`s enumerable?

???


* `yes`
* `no`

 
