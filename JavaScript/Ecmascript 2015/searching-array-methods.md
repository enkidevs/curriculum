# Searching Arrays
author: lizthedeveloper

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: feature

tags:

  - introduction

  - workout

  - arrays

links:

  - >-
    [ponyfoo.com](https://ponyfoo.com/articles/es6-array-extensions-in-depth){website}

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

*find* and *findIndex* return the first value or index that satisfies a testing function `f`.

If no elements match then *undefined* will be returned:

```
var people = [
    {name: 'Alex', age: 36},
    {name: 'John', age: 20},
    {name: 'Tait', age: 1}
];

people.find(function (element, index, source) {
    return element.age>=18;
});
//returns Alex

people.findIndex(function (element, index, source) {
    return element.age > 18 && element.age < 30;
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
let integers = ['6','2','5','4','5','6','5','8'];
integers.???(???)
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
##Revision

Fill the array with the first number divisible by `2` and `3`:

```
let integers = ['6','2','5','4','5','6','5','8'];
integers.???(integers.???(???))
```
* `find`
* `findIndex`
* `fill`
* `includes`
* `get`
* `filter`
* `function (e) {return e % 2 && e % 3}`
