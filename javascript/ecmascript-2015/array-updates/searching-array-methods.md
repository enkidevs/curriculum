---
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

category: feature

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

tags:

  - introduction

  - workout

  - arrays

  - new

  - es6

standards:
  javascript.es6-extensions-standard-library.1: 10

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-array-extensions-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array){website}'

---

# Searching Arrays

---
## Content

Arrays have a number of prototype methods for performing search operations.

- **Array.prototype.includes(expr)**

`includes` returns a boolean indicating whether an array contains a specific value or not:

```javascript
var people = ["john", "bob"];
people.includes("john"); //true
```

- **Array.prototype.find(f)**  
- **Array.prototype.findIndex(f)**  

`find` and `findIndex` return the first value or index that satisfies a testing function `f`, which will receive the arguments `element`, `index`, `source`.

If no elements match then *undefined* will be returned:

```javascript
var people = [
  { name: "Alex", age: 36 },
  { name: "John", age: 20 },
  { name: "Tait", age: 1 }
];

people.find(function(e, i, src) {
  return e.age >= 18;
});
//returns Alex

people.findIndex(function(e, i, src) {
  return (
    e.age > 18 && e.age < 30
  );
});
//returns 1
```

---
## Practice

Find the first number divisible by `4`:

```javascript
let ints = ["6", "2", "5", "6", "5", "8"];
ints.???(???);
```

* `find`
* `function (e) {return e % 4 === 0}`
* `includes`
* `function (e) {return e % 4}`
* `filter`
* `function (e) {return e === 4}`

---
## Revision

Fill the array with the first number divisible by `2` and `3`:

```javascript
let ints = [
  "2",
  "5",
  "4",
  "5",
  "6",
  "5",
  "8"
];
ints.fill(ints.???(???))
```

* `find`
* `e => e % 2 === 0 && e % 3 === 0`
* `findIndex`
* `includes`
* `e => e / 2 === 0 && e / 3 === 0`
