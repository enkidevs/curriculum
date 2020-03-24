---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:
  - introduction


aspects:
  - introduction
  - workout


---

# Function Arguments

---
## Content

When we pass primitive variables (such as numbers and strings) to functions in JavaScript, they are *passed by value*. This means that if we manipulate the argument value inside the function, changes will not be reflected outside the function.

```js
function changeVal(x) {
  x = 1000;
}

var x = 5;
changeVal(x);
console.log(x); // still 5
```

However, if we were to use an object as argument, then it will **not be pased as a value**. What will happen though is that the object will **be passed as a reference**, which means that all the changes on the object made inside the function **are** reflected on the object itself.

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


* reference
* value
* string
* json

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

* John
* Alex
* undefined
* null

