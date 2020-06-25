---
author: alexjmackey

levels:
  - beginner

type: normal

category: feature

aspects:

  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){website}'

standards:
  javascript.destructuring.0: 10

---
# Destructuring (Part 3)

---
## Content

Destructuring is very useful when working with arrays.

### Copying Arrays

We can use destructuring to easily copy an array when combining it with the spread operator:

```javascript
var myArray;
[...myArray] = [1, 2, 3];
// myArray=[1,2,3]
```

If the source object to use for destructuring contains more values than you need you don’t necessarily have to use all of them either:

```javascript
var myArray = [1, 2, 3, 4];
var [x, y, z] = myArray;
//x=1, y=2, z=3;
```

If you don’t want to assign all values from the source object simply leave them out!

Below we will ignore the second (200) value:

```javascript
[x, , z] = [100, 200, 300];
```

---
## Practice

Fill in the gaps such that the variables will have the commented value:

```javascript
let x, y, z;
[??? ??? ???] = [5, 10, 15]
console.log(x)
// x == 5
console.log(y)
// y == undefined
console.log(z)
// z == 15
```

* x,
* ,
* z
* x
* y
* ,y
* y,
* ,x

---
## Revision

What will be the value of `x`, `y` and `z`?

```javascript
let x, y, z;
[x, , z] = [10, 20, 30];
// x = ???
// y = ???
// z = ???
```

* 10
* undefined
* 30
* 20
* [20]
* [10, 30]
* [10, 20]
* [20, 30]
* [10, 20, 30]
* null
* [10]
* [30]
