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

Arrays added a number of prototype methods in ES6 for improved ease of searching Arrays.

**Array.prototype.includes(expr)**

*includes* returns a boolean indicating with an array contains a specific value:

```javacript
var people = ["john", "bob"];
people.includes("john"); //true
```

**Array.prototype.find(f)**  
**Array.prototype.findIndex(f)**  

*find* and *findIndex* return the first value or index that satisfies a testing function `f`, which will receive the arguments `element`, `index`, `source`.

If no elements match then *undefined* will be returned:

```javacript
var people = [
    {name: 'Alex', age: 36},
    {name: 'John', age: 20},
    {name: 'Tait', age: 1}
];

people.find(function (e, i, src) {
    return element.age>=18;
});
//returns Alex

people.findIndex(function (e, i, src) {
    return element.age > 18 &&
           element.age < 30;
});
//returns 1

```

**Array.prototype.fill(value, [start, [end]])**

Populates an array with a supplied value and optional start & end position and is great for producing test data.

```javacript
[1,1,1].fill(5); //[5,5,5]
[1,1,1,1,1].fill(5,1,3); //[1,5,5,1,1]
```

---
## Practice

Find the first number divisible by `4`:

```javacript
let ints = ['6','2','5','6','5','8'];
ints.???(???)
```

* `find`
* `function (e) {return e % 4 == 0}`
* `fill`
* `includes`
* `get`
* `filter`
* `function (e) {return e % 4}`
* `function (e) {return e == 4}`

---
## Revision

Fill the array with the first number divisible by `2` and `3`:

```javacript
let ints = ['2','5','4','5','6','5','8'];
ints.???(ints.???(???))
```

* `fill`
* `find`
* `function (e) {return e % 2 == 0 && e % 3 == 0}`
* `findIndex`
* `includes`
* `get`
* `filter`
