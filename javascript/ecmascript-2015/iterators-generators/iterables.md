# Iterables
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

Javascript has a number of built in objects that are defined as iterables such as arrays, strings, maps and sets. When an object is iterable it defines how it will work with language features such as **for..of** loops. 

In order to be iterable an object must implement the iterable protocol which means that it must have a property marked with **[Symbol.iterator]**

Let`s try using the iterator we defined previously in a for..of loop:

```
var it = getIterator()
for(var i of it){
 console.log(i);
 //TypeError: it[Symbol.iterator]
 //is not a function
}
```

This error occurs as we didn't conform to the iterable protocol so JavaScript doesn’t know how to work with our iterator.

Let's fix this now by returning an object with a property marked with **[Symbol.iterator]**:

```
function getIterator (){
 var num = [1,2,3,4,5];
 var nextIndex = 0;      

 return {
 [Symbol.iterator]() {
 return{
 next: function(){

 if(nextIndex < num.length){
  var valueToReturn = num[nextIndex];
  nextIndex++;

  return {
   value: valueToReturn,
   done: false
  }
 }
 else{
  return{ done: true}
 }
}
}
}
}
}
```

Our iterator will now function as expected.
We could even use it with the spread operator:

```
console.log([...it]); //[1,2,3,4,5]
```
