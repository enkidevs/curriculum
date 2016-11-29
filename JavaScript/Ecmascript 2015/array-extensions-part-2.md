# Array Extensions (Part 2)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values){website}

---
## Content

In ES6 array's have new keys, values and entries properties that returns an iterator.

We'll be covering iterators in future insights but for now you can think of an iterator as a collection you loop through that will also maintain its position.

Keys and values will return an iterator that respectively returns key or the value of array and entries provides key/value pairs. 

Lets look at an example using keys and entries (note values is not implemented in the latest version of Chrome at the time of writing):

```
var arr = ["a", "b"];

var iKeys = arr.keys();
var iEntries = arr.entries();

iKeys.next(); 
//{value: 0, done: false}

iEntries.next(); 
//{value: [0, a], done:false}

iKeys.next(); 
//{value: 1, done: false}

iEntries.next();
//{value: [1, b], done:false}

iKeys.next();
//{value: undefined, done: true}

iEntries.next();
//{value: undefined, done: true}
```