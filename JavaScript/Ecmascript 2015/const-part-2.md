# Const (Part 2)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Assigning a constant to another variable and then changing the source variable will not change the value of the constant:

```
var x= 1;
const y = x;
x = 5;
console.log(y); //still 1
```

Additionally note that modifying a property of an object referenced by a constant will not throw an error and the property will be changed.

**const and objects**

Objects can also be declared as constants.

```
const p = 
{first: "john", last: "smith"};

//below will cause errors:
p = 5;
p = 
{first: "bob", last: "smith"};
```

It is important to note however that the values of the object can be modified so the below is valid:

```
p.first = "bob"; //valid
```

If you don’t want anyone to be able modify the object at all be sure to use Object.freeze[1] function.

---
## Footnotes

[1:Object.freeze]
For more information on *Object.freeze* see (MDN)
[https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze]