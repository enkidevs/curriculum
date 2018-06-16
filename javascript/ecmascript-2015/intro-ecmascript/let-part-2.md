---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){website}'

---
# Let (Part 2)

---
## Content

*let* is particularly useful when used with loops and inner functions.

*let* solves an issue you may have come across before when attempting to add event handlers to multiple elements.

The code below looks like it will output 0 1 2 3 4 to the console but will output 5 5 5 5 5.

```javascript
var funcs=[];

for (var i = 0; i < 5; i++) {
   funcs.push(
      function(){console.log(i)}
   );
}

for(func of funcs){
   func();
}
// 5 5 5 5 5
```

This happens because each function added to the array is referring to the same instance of *i*.

Variable *i* ends up being five at the end of the loop, so we end up logging this final value in each function.

Now try changing the loop declaration to use the *let* keyword:

```javascript
for (let i = 0; i < 5; i++) {
...
}
// 0 1 2 3 4
```

The code will now run as expected as each loop iteration refers to a different rather than the same instance of *i*.

---
## Practice

What is the output of the following snippet?

```javascript
var letFuncs = [];
for (let i = 0; i < 3; i++) {
  letFuncs.push(
    function() {
      console.log(i)
    }
  )
}
for (func of letFuncs) {
  func()
}
// ???

```

* [0, 1, 2]
* [1, 2, 3]
* [3, 3, 3]

---
## Revision

What is the output of the two log statements?

```javascript
var varFuncs=[];

for (var i = 0; i < 3; i++) {
   varFuncs.push(
      function() {
        console.log(i)
      }
   );
}

for(func of varFuncs){
   func();
}
// ???

var letFuncs = [];
for (let i = 0; i < 3; i++) {
  letFuncs.push(
    function() {
      console.log(i)
    }
  )
}
for (func of letFuncs) {
  func()
}
// ???
```

* [3, 3, 3]
* [0, 1, 2]
* [4, 4, 4]
* [2, 2, 2]
* [1, 2, 3]
 
