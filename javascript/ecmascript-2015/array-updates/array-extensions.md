---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

tags:

  - es6

  - workout

  - array

  - iterators


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values){website}'

inAlgoPool:

---

# Array Extensions

---
## Content

In ES6 the array type is expanded with 3 additional properties: 

* keys
* values
* entries

These properties return a special type of object called an  **iterator**.

If you haven't used one before, you can think of an iterator as a special collection that you can move through that will maintain its position.

The below code uses `Array`'s **entries** method to get an iterator and then logs `arr`'s _keys_ and _values_:

```
var arr = ["a", "b", "c"];

var iEntries = arr.entries();

iEntries.next();
//{value: [0, "a"], done:false}

iEntries.next();
//{value: [1, "b"], done:false}

iEntries.next();
//{value: [2, "c"], done:false}

iEntries.next();
//{value: undefined, done: true}
```

