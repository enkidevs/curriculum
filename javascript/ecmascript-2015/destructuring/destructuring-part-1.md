---
author: alexjmackey

levels:

  - beginner

type: normal

category: feature

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){website}'


---

# Destructuring (Part 1)

---
## Content

Destructuring provides a succinct and flexible way to assign values from arrays or objects. 

This is best illustrated with an example. Destructuring is used below to assign x and y the values 100 and 200 in just one line of code:

```
var x, y;
[x, y] = [100, 200];
//x=100, y=200
```

**Function Return Values**  

Destructuring works great with functions.

Let's say we have a function that multiplies two input arguments (x and y) by two and returns the result as an array.

Destructuring can assign the results of this operation to two variables with just one line of code:  

```
var x,y;

function dblNumbers(x, y) {
  return [x*2, y*2];
}

[x, y] = dblNumbers(100,200);
//x=200, y=400
```

**Swapping variables**  

Destructuring can also be used to swap the contents of two variables without having to create another temporary variable:

```
var x= 1;
var y= 2;
[y, x] = [x, y];
//x=2, y=1
```

