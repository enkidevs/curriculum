---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  javascript.functions.4: 10

  javascript.functions.8: 10

tags:

  - introduction

  - workout

  - deep

  - obscura




aspects:
  - introduction
  - workout
  - deep
  - obscura


---

# Functions Are Objects

---
## Content

Every function in JavaScript is also an object. 

This means we can assign a function to a variable which can be used to execute the function - this is called a *function expression*:

```
var x = function myFunc(x,y){
	return x+y;
};

x(1,2);//3
```

But why do this? 

One reason is to pass functions into other functions. 

A somewhat contrived example would be if we were creating a calculator we could pass different calculation expressions into the *calc* function and avoid repeating the console logging code:

```
function calc(expression){
   console.log(expression(2,1));
}

var add = function(x, y){
   return x + y;
}

var subtract = function(x, y){
   return x - y;
}

calc(add);//3
calc(subtract);//1
```

We don’t even need to give our functions a name. 

This is called an anonymous function:

```
var x = function(x, y){
	return x + y;
}
x(1,2);
```

---
## Practice

Complete the function expression in the following code snippet such that it makes sense:
```
??? x = ??? add(x, y, z){
    ??? x + y + z;
}
console.log(x(1, 2, 3)); 
```


* `var`
* `function`
* `return`
* `console.log`
* `get`
* `fn`
* `()`

---
## Revision

Complete the function expression in the following code snippet such that it makes sense:
```
??? x = ??? add(x, y, z){
    ??? x + y + z;
}
console.log(x(1, 2, 3)); 
```


* `var`
* `function`
* `return`
* `console.log`
* `get`
* `fn`
* `()`

 
