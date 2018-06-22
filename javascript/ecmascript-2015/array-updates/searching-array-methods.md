---
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

category: feature

inAlgoPool: false

tags:

  - introduction

  - workout

  - arrays

  - new

  - es6


links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-array-extensions-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array){website}'


aspects:
  - introduction
  - workout
  - new


---

# Searching Arrays

---
## Content

Arrays added a number of prototype methods in ES6 for improved ease of searching Arrays.

**Array.prototype.includes(expr)**

*includes* returns a boolean indicating with an array contains a specific value:

```
var people = ["john", "bob"];
people.includes("john"); //true
```

**Array.prototype.find(f)**  
**Array.prototype.findIndex(f)**  

*find* and *findIndex* return the first value or index that satisfies a testing function `f`, which will receive the arguments `element`, `index`, `source`.

If no elements match then *undefined* will be returned:

```
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

```
[1,1,1].fill(5); //[5,5,5]
[1,1,1,1,1].fill(5,1,3); //[1,5,5,1,1]
```
## Practice
Find the first number divisible by `4`:

```
let ints = ['6','2','5','6','5','8'];
ints.???(???)
```
* `find`
* `findIndex`
* `fill`
* `includes`
* `get`
* `filter`
* `function (e) {return e % 4}`
* `function (e) {return e = 4}`
* `function (e) {return e == 4}`

---
## Practice

Find the first number divisible by `4`:

```
let ints = ['6','2','5','6','5','8'];
ints.???(???)
```

* `find`
* `findIndex`
* `fill`
* `includes`
* `get`
* `filter`
* `function (e) {return e % 4}`
* `function (e) {return e = 4}`
* `function (e) {return e == 4}`

---
## Revision

Fill the array with the first number divisible by `2` and `3`:

```
let ints = []'2','5','4','5','6','5','8'];
ints.???(ints.???(???))
```

* `find`
* `findIndex`
* `fill`
* `includes`
* `get`
* `filter`
* `function (e) {return e % 2 && e % 3}`

 
