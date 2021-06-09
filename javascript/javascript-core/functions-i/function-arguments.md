---
author: alexjmackey
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Function Arguments


---

## Content

When we pass primitive values (such as numbers and strings) into a function, we are actually passing in a copy of each of those values instead of the originals. This behavior is called **pass by value**. If we were to manipulate one of those values, the changes will not be reflected on the original value outside of the function.

```js
function changeVal(x) {
  x = 1000;
}

var x = 5;
changeVal(x);
console.log(x); // still 5
```

When we pass non-primitive values (such as objects and arrays) into a function, we are not passing in a copy and instead are passing in the actual value. This behavior is called **pass by reference**, where the "reference" means "direct link to the value". If we were to manipulate one of those values, we will also end up changing original value outside of the function. 

```js
function changeObj(x) {
  x.name = "Apple";
}

var obj = { name: "Enki" };
changeObj(obj);
console.log(obj.name); // Apple
```


---

## Practice

In JavaScript, objects are passed into a function as a ???.

- reference
- value
- string
- json


---

## Revision

What will the following snippet output?

```js
function changeProp(obj){
  obj.name = "John";
}

var per = { name : "Alex"};
changeProp(per);
console.log(per.name);
// ???
```

- John
- Alex
- undefined
- null
 
