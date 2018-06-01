---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  javascript.functions.1: 10

tags:

  - introduction
---

# Function Arguments

---

## Content

When we pass primitive variables (such as numbers and strings) to functions in JavaScript they are _passed by value_ which means that if we manipulate the argument value inside the function, changes will not be reflected outside the function.

However if we were to pass an object then changes _are_ reflected on the object itself.

For example:

```javascript
function changeVal(x) {
  x = 1000;
}

var x = 5;
changeVal(x);
console.log(x); //still 5

function changeObj(x) {
  x.name = 'Apple';
}

var obj = { name: 'Enki' };
changeObj(obj);
console.log(obj.name); //Apple
```

---

## Practice

In JavaScript, variables are ???.

- passed by value
- passed by reference
- passed by their object

---

## Revision

What will the following snippet output?

```javascript
function changeProp(obj) {
  obj.name = 'John';
}

var per = { name: 'Alex' };
changeProp(per);
console.log(per.name);
// ???
```

- John
- Alex
- undefined
- null
