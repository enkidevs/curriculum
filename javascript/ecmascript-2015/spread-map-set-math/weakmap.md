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

# `WeakMap`

---
## Content

Like a map, a `WeakMap` is also a collection of key value pairs. Additionally, keys in a `WeakMap` must be objects. 

The syntax is:
```js
new WeakMap([iterable]);
```
The major benefit of using a `WeakMap` is that it helps us prevent memory leaks because references to key objects are weakly held. This means that if there are no other strong references to the key, the entire entry will be removed by the garbage collector. In the case of a strong reference, garbage collection would be prevented even if there are no other references to the key object.

**Note**: `WeakMap` keys are not enumerable. You should maintain a list of keys if you need them.

---
## Practice

Create a `WeakMap` out of the following array such that objects point to their position in the array:

```js
var arr = [ { enki: 1 }, { enki: 2 } ];
new ???(
  ???.???((???, 1) => [???, i])
)
```

* `WeakMap`
* `arr`
* `map`
* `obj`
* `obj`
* `object`
* `array`
* `let array`
* `weakmap`
* `Weakmap`

---
## Revision

Are `WeakMap`s enumerable?

???


* `yes`
* `no`

 
