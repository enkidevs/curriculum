---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols){website}'

---
# Iterables

---
## Content

JavaScript has a number of built in objects that are defined as iterables such as arrays, strings, maps and sets. When an object is iterable it defines how it will work with language features such as `for..of` loops.

In order to be iterable an object must implement the iterable protocol which means that it must have a property marked with `Symbol.iterator`.

Let's try using the iterator we defined previously in a `for..of` loop:

```javascript
var it = getIterator();
for (var i of it) {
  console.log(i);
  //TypeError: it[Symbol.iterator]
  //is not a function
}
```

This error occurs as we didn't conform to the iterable protocol so JavaScript doesn’t know how to work with our iterator.

Let's fix this now by returning an object with a property marked with `[Symbol.iterator]`:

```javascript
function getIterator() {
  var num = [1, 2, 3, 4, 5];
  var nextIndex = 0;

  return {
    [Symbol.iterator]() {
      return {
        next: function() {
          if (nextIndex < num.length) {
            var valueToReturn =
              num[nextIndex];
            nextIndex++;
            return {
              value: valueToReturn,
              done: false
            };
          } else {
            return { done: true };
          }
        }
      };
    }
  };
}
```

Our iterator will now function as expected. We could even use it with the spread operator:

```javascript
const it = getIterator();
console.log([...it]); //[1,2,3,4,5]
```

---
## Practice

What property does an object in JavaScript need to have in order to be used in a `for..of` syntax:

```javascript
const x = {}
x[???] = function() {...}

for (const y of x) {
  // iterate
}
```

* Symbol.iterator
* Symbol()
* Iterator
* it
* @@it
* Symbol.match

---
## Revision

Can a JavaScript object, exposing a `next` that return `{value, done}` be iterated with the `for..of` syntax? Why?

```javascript

const obj = {
  next: () => {
    value: 1,
    done: true
  }
}

for (const y of obj) {
  // ...
}

```

???

* No, because it has no iteration protocol implemented via `Symbol.iterator`
* Yes, because it has the `next` function exposed
* No, because `done` must be at least one time `false`
* Yes, because all objects are iterable by default
 
