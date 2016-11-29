# Loops - Part 2
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

*for in* loops allows you to iterate through an objects keys. E.g. the keys below are firstName and lastName:

```
var obj = {
   firstName: "John",
   lastName: "Smith"
};
```

The keys can be used to get the value:
```
for (var i in obj) {
   console.log(i); //key  
   console.log(obj[i]); //value 
}
```

**For of**

*for of* loops are used with iterable objects such as arrays & maps and allow you to easily loop through an iterables values:

```
var iterable = [10, 20, 30];
for (var i of iterable) {
   console.log(i);
}
```

**Why use for of?**

*for of* loops will only iterate over an objects values **not** inherited properties like the *for in* loop will. 

If you want to check just properties declared on the object itself use the  *object.hasOwnProperty*.

**break and continue**

The break statement exits out of a loop and continue will go to the next iteration:

```
do {
   i++;

   if(i===5){
      break;
   }  
} while (i<10);
//0 1 2 3 4

```

---
## Practice

Iterate through the elements of myArray:
```
var myArray = [1,2,"3","item"];

??? (var i ??? ???){
  console.log(i);
}
```
*`for`
*`of`
*`myArray`
*`Array`
*`do`

---
## Revision

To exit a loop, you can use the ??? keyword.

*break
*stop
*finish
*end