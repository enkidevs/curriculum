---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:
  - es6
  - workout
  - array
  - iterators

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values){website}'

aspects:
  - workout


---
# Array Extensions

---
## Content

In ES6 the array type is expanded with 3 additional properties:

* keys (the indexes)
* values
* entries

These properties return a special type of object called an **iterator**.

If you haven't used one before, you can think of an iterator as a special collection that you can move through that will maintain its position.

The below code uses `Array`'s **entries** method to get an iterator and then logs `arr`'s _keys_ and _values_:

```javascript
var arr = ["a", "b", "c"];

var iEntries = arr.entries();

iEntries.next();
//{value: [0, "a"], done:false}

iEntries.next();
//{value: [1, "b"], done:false}

iEntries.next();
//{value: [2, "c"], done:false}

iEntries.next();
//{value: undefined, done: true}
```

---
## Practice

What will the following code do?

```javascript
var enki = ["e", "n", "k", "i"]

var enkiIterator = enki.keys()

console.log(enki[enkiIterator.next().value])
// ???
```

* log e
* log en
* raise an error
* log undefined

---
## Revision

Fill in the gaps such that an iterator will be created from the given array and the code won't raise any errors. The last gap should be completed with the right output of the expression above:

```javascript
var arr = [3, 1, 4]

var arrIt = arr.???()

var first = arrIt.???()
console.log(first.value[0])
// 0
console.log(first.???[???])
// 3
var second = arrIt.next()
console.log(???.value)
// ???
```

* entries
* next
* value
* 1
* second
* [1, 1]
* [1, 4]
* [0, 1]
* first
* keys
* iterator
* toIterator
* key
* 2
* 3
* 0
 
