# Introducing Iterators
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-iterators-in-depth)'

---
## Content

An iterator is a special type of object that returns items from a sequence one at a time and remembers its position within the sequence. 

A sequence can be anything but for simplicity let's imagine we have an array of numbers from 1 to 5:
```
[1,2,3,4,5];
```

Whilst we could easily write a loop to iterate through these numbers let's write a function to return an iterator to do this.

```
function getIterator(){
 var num = [1,2,3,4,5];
 var nextIndex = 0;    

 return {
  next: function(){
   var x = num[nextIndex];
   nextIndex++;
   return {
    value: x
   }
  }
 };
}
```

What's going on here?

We have defined two variables - our sequence of numbers (num) and another (nextIndex) to keep track of our current position.

We then return an object with a next method that will retrieve a value at the current position, increment the position and return an object with our value in the value property.

We can use this iterator as follows:

```
var it = getIterator();
it.next(); //Object {value: 1}
it.next(); //Object {value: 2}
it.next(); //Object {value: 3}
it.next(); //Object {value: 4}
it.next(); //Object {value: 5}
```
