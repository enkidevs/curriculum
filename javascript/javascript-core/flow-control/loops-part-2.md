---
author: alexjmackey
type: normal
category: must-know
links:
  - '[for in / for of loops](https://youtu.be/a3KHBqH7njs){video}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Loops - Part 2


---

## Content

The `for..in` loop allows you to iterate through an object's keys. Consider the following `firstName` and `lastName` keys:

```javascript
let obj = {
   firstName: "John",
   lastName: "Smith"
};
```

The keys can be used to get the value:

```javascript
for (let key in obj) {
   console.log(key, obj[key]);
}

// "firstName" "John"
// "lastName" "Smith"
```

### `for...of`

The `for..of` loops are used for looping through iterable objects such as arrays:

```javascript
let arr = [10, 20, 30];

for (let i of arr) {
   console.log(i); 
   // 10 20 30
}
```

### Why use `for..of`?

`for..of` loops will only iterate over an object's values and **not** its inherited properties like the `for..in` loop will.

Let's see an example. 

Notice how the `for..in` loop below returns `newFunc` that was added to array's prototype (we'll look at prototypes shortly but for now think of it as a way to add functionality):

```javascript
Array.prototype.newFunc = function() {};

let arr = [10, 20, 30];

for (let i in arr) {
   console.log(i); 
}
// 10 20 30 newFunc

for (let i of arr) {
   console.log(i);
}
// 10 20 30
```

### `break` & `continue`

The `break` statement exits out of a loop, while the `continue` statement will skip to the next iteration:

```javascript
let i = 0;
do {
  i++;
  
  if (i === 2){
    // skip over the 
    // 2nd iteration
    continue;
  }
  
  if (i === 5){
    // exit the loop
    break;
  }

  console.log(i);
  
} while (i < 10);
// 1 3 4
```


---

## Practice

Iterate through the elements of `myArray`:

```javascript
let myArray = [1, 2, "3", "item"];

??? (let i ??? ???){
  console.log(i);
}
```

- `for`
- `of`
- `myArray`
- `Array`
- `do`


---

## Revision

To exit a loop, you can use the ??? keyword.

- break
- stop
- finish
- end
 
