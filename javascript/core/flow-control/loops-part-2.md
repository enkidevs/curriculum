---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.control-flow.0: 10
  javascript.control-flow.3: 10

tags:

  - introduction

aspects:
  - introduction


---

# Loops - Part 2

---
## Content

*for in* loops allow you to iterate through an objects keys. E.g. the keys below are firstName and lastName:

```javascript
var obj = {
   firstName: "John",
   lastName: "Smith"
};
```

The keys can be used to get the value:
```javascript
for (var i in obj) {
   console.log(i); //key  
   console.log(obj[i]); //value
} //firstName John lastName Smith
```

**For of**

*for of* loops are used with iterable objects such as arrays & maps and allow you to easily loop through an iterables values:

```javascript
var iterable = [10, 20, 30];
for (var i of iterable) {
   console.log(i); //10 20 30
}
```

**Why use for of?**

*for of* loops will only iterate over an objects values and **not** inherited properties like the *for in* loop will.

For example note how the for in loop below returns newFunc that was added to array's prototype (we'll look at prototype shortly but for now think of it as a way to add functionality):

```javascript
Array.prototype.newFunc = function() {};
var iterable = [10, 20, 30];

for (var i in iterable) {
   console.log(i); //0 1 2 newFunc
}

for (var i of iterable) {
   console.log(i); //10 20 30
}

```

**break and continue**

The break statement exits out of a loop and continue will go to the next iteration:
```javascript
var i = 0;
do {
  i++;
  if(i===2){
    //skip over 2nd iteration
    continue;
  }
  if(i===5){
    //exit loop
    break;
  }

  console.log(i);    
} while (i<10);
//1 3 4

```

---
## Practice

Iterate through the elements of myArray:
```javascript
var myArray = [1,2,"3","item"];

??? (var i ??? ???){
  console.log(i);
}
```

* `for`
* `of`
* `myArray`
* `Array`
* `do`

---
## Revision

To exit a loop, you can use the ??? keyword.


* break
* stop
* finish
* end
 
