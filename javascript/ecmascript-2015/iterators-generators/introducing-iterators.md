---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Iteration
    Protocols](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols){documentation}
  - >-
    [Iterators in
    Depth](https://ponyfoo.com/articles/es6-iterators-in-depth){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Introducing Iterators


---

## Content

An iterator is a special type of object that returns items from a sequence one at a time and remembers its position within the sequence.

A sequence can be anything but for simplicity let's imagine we have an array of numbers from 1 to 5:

```javascript
[1, 2, 3, 4, 5];
```

Whilst we could easily write a loop to iterate through these numbers let's write a function to return an iterator to do this.

```javascript
function getIterator(){
 let num = [1,2,3,4,5];
 let nextIndex = 0;

 return {
  next: function(){
   let x = num[nextIndex];
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

```javascript
let it = getIterator();
it.next(); //Object {value: 1}
it.next(); //Object {value: 2}
it.next(); //Object {value: 3}
it.next(); //Object {value: 4}
it.next(); //Object {value: 5}
```


---

## Practice

Which of the following statements is false about iterators?

???

- Iterators work only on arrays
- Iterators are special objects that go over a collection
- Iterators can be manually implemented
- Iterators remember the position while iterating


---

## Revision

What method do iterators canonically make use of to advance the iteration?

???

- iterator.next()
- iterator.pop()
- iterator.get()
- iterator.advance()
- iterator.step()
 
