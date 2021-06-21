---
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-array-extensions-in-depth){website}'
  
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array){website}'

---
# Array Extensions (Part 1)

---
## Content

Arrays benefit from a number of extensions in ES6 let's look at these now.

**includes**

*includes* returns a boolean indicating if an array contains a specific value:

```javascript
let people = ["john", "bob"];
people.includes("john"); //true
```

**find and findIndex**

*find* and *findIndex* return the first value or index that satisfies an input matching function (sometimes called a predicate). 

If no elements match then *undefined* will be returned:

```javascript
let people= [
    {name: 'Alex', age: 36},
    {name: 'John', age: 20},
    {name: 'Tait', age: 1}
];

function func(
element, 
index, 
source) { 
    return element.age>=18;
}

let p = people.find(func);
//Alex
let p = people.findIndex(func);
//0

```

**fill**

Populates an array with a supplied value and optional start & end position and is great for producing test data.

```
[1,1,1].fill(5); //[5,5,5]
[1,1,1,1,1].fill(5,1,3); //[1,5,5,1,1] 
```
 
