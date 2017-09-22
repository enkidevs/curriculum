# Destructuring (Part 3)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: feature

---
## Content

Destructuring is very useful when working with arrays. 

**Copying Arrays**

We can use destructuring to easily copy an array when combining it with the spread operator:

```
var myArray;
[...myArray]=[1,2,3];
//myArray=[1,2,3]
```

If the source object to use for destructuring contains more values than you need you don’t necessarily have to use all of them either:

```
var myArray= [1, 2, 3, 4];
var [x, y, z] = myArray;
//x=1, y=2, z=3;
```
If you don’t want to assign all values from the source object simply leave them out!

Below we will ignore the second (200) value:

```
[x, , z] = f(100,200, 300);
```
