# Function Arguments
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  js.functions.1: 10

tags:
  - introduction
  - workout

---
## Content

When we pass primitive variables (such as numbers and strings) to functions in JavaScript they are *passed by value* which means that if we manipulate the argument value inside the function, changes will not be reflected outside the function.

However if we were to pass an object then changes *are* reflected on the object itself.

For example:
```
function changeVal(x){
    x=1000;
}

var x = 5;
changeVal(x);
console.log(x);//still 5

function changeObj(x){
    x.name="Apple";
}

var obj = {name:"Enki"};
changeObj(obj);
console.log(obj.name);//Apple
```

---
## Practice

In JavaScript, variables are ???.

*passed by value
*passed by reference
*passed by their object

---
## Revision

What will the following snippet output?
```
function changeProp(obj){
  obj.name = "John";
}

var per = { name : "Alex"};
changeProp(per);
console.log(per.name);
// ???
```
*John
*Alex
*undefined
*null
