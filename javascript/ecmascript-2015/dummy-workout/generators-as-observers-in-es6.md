---
author: rosielowther
levels:
  - advanced
  - medium
type: normal
category: feature
links:
  - '[www.2ality.com](http://www.2ality.com/2015/03/es6-generators.html){website}'
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Generators as observers in ES6


---

## Content

A generator can pause at a `yield` point until it receives input. This is described as an **observer**:

    function* observer() {
           console.log(`1. ${yield}`); 
           console.log(`2. ${yield}`);
           return 'result';
        }

`next()` is used to send values:

    // create generator object
    let genObj = observer(); 
    genObj.next(); // starts the observer
    genObj.next('E'); // 1. E
    genObj.next('n'); // 2. n
    // returns: { value: 'result', done: true }

`return()` terminates the generator and `throw()` signals an error.


---

## Practice

Which of the following statements is used to send a value? ???

- next
- return
- throw
- yield


---

## Revision

What statement will terminate a generator?

???

- return
- yield
- next
- throw
 
