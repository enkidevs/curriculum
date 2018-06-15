---
author: AlexYancey

levels:

  - basic

  - beginner

type: normal

category: how to

standards:
  javascript.data-types-structures.2: 10
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.6: 10
  javascript.functions.4: 10



notes: ''

---

# Get a random item from an Array

---
## Content

Given the array:

```
var food = ["Sushi", "Pizza", "Tacos"];
```

Select an item using `Math.random()` with a range of `food.length`.
```
var randIndex =
  Math.floor(Math.random() * food.length);
```

Now, print out the result.
```
console.log("Let's get " + food[randIndex]);
```

---
## Practice

If you have an array:
```
var fruits =[oranges, apples, banana];


How would you select a fruit at random
from the array fruits?

var index =
Math.???(Math.random()*
    fruits.length);

console.log("the random fruit is"
  +fruits[index]);
```

* floor
* ceil
* wall

---
## Revision

If you have an array:
```
var fruits =[oranges, apples, banana];


How would you select a fruit at random
from the array fruits?

var index =
Math.???(Math.random()*
   fruits.length);

console.log("the random fruit is"
  +fruits[index]);
```


* floor
* ceil
* wall
 
