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

In ES6 the array type is expanded with additional properties: keys, values and entries. 

These new properties return an **iterator**.

Iterators are a more advanced concept that we cover in  EcmaScript 2015 intermediate and advanced levels. 

For now you can think of an iterator as a special collection that you can move through that will maintain its position.

The below code uses the **entries** property to get an iterator and log arr's keys and values:

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
