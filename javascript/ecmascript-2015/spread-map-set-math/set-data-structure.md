---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Set){website}'

---
# Set (data structure)

---
## Content

Set is a data structure that only stores unique values.

```javascript
var mySet = new Set();
mySet.add(1);
mySet.add(1);
mySet.add(1);
mySet.size; //size still 1
```

We can test if a set already has a value by using the has method:

```javascript
mySet.has(1); //true
```

Note that iterating through a set will return objects in their insertion order.

---
## Practice

What will be the output of the last line of the following code?

```javascript
const mySet = new Set();
mySet.add(4);
mySet.add(5);
mySet.add(4);
mySet.add(3);
mySet.add(5);
mySet.add(5);
mySet.add(1);

console.log(mySet.size);
// ???
```

* 4
* 5
* 6
* 7
* 8
* 3
* 2
* 1

---
## Revision

What method is used to append an element to the `Set` data structure?

???

What method is used to check if an element is contained in the same data structure?

???

* add
* has
* append
* contains
* is
* contain
* isIn
* push
 
