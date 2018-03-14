---
author: AlexBroadbent

levels:

  - basic

  - beginner

type: normal

category: how to

tags:

  - javascript

  - ecmascript2015

  - ecmascript

  - map

  - array

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Map)'

---

# Using maps

---
## Content

The `Map` object is a simple key/value map, in which value (including objects) can be used as either a key or a value.

An iterable object can be passed into the `Map` on creation, after which each key/value pair is added to the new map.

```javascript
var map = new Map();

map.set(0, "zero");
map.set(1, "one");

// Get the size of the map
map.size; // 2

// Get a value of 
var v = map.get(1); // v = "one"
```

Elements are stored in the same order in which they are put into the map.

Therefore, in the above example, calling the ```map.values()``` method will return ```["zero", "one"]``` because that is the order they were entered into the map.

---
## Revision

What's the output of the following snippet?
```javascript
var map = new Map();
map.set(0,"1");
map.set(1,"0");

var v = map.get(0);
console.log(v);
// ???
```

* `1`
* `0`
* `undefined`
* `null`

