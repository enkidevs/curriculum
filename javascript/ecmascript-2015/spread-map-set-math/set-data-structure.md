---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Set){website}'


---

# Set (data structure)

---
## Content

Set is a new data structure in ES6 that will only store unique values.
 
```
var mySet = new Set();
mySet.add(1);
mySet.add(1);
mySet.add(1);
mySet.size; //size still 1
```

We can test if a set already has a value by using the has method:

```
mySet.has(1); //true
```

Note that iterating through a set will return objects in their insertion order.

