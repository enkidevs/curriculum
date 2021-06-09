---
author: rosielowther
levels:
  - basic
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

# Generators as iterators in ES6


---

## Content

Generators can return a value via `next()` at each `yield` point to produce a sequence of values. This sequence is known as an **iterable** and the generator function as an **iterator**.

For example:

    // generator function 'E' 'n' 'k' 'i'
    function* genFunc() {
          yield 'E';
          yield 'n';
          yield 'k';
          yield 'i';
        }

The yielded values can be obtained one-by-one using `next()`:

    let genObj = genFunc();
    genObj.next(); //{value:'E', done:false}
    genObj.next(); //{value:'n', done:false}
    ... // etc
    genObj.next(); //{value:undefined,done:true}


---

## Practice

What's the output of the following JS code snippet? ???

```javascript
function* genFunc() {
  yield 'E';
  yield 'C';
  yield 'M';
  yield 'A';
}

let genObj = genFunc();
genObj.next();
genObj.next();
console.log(genObj.next().value);
```

- M
- A
- E
- C
- undefined


---

## Revision

What's the output of the following snippet?

```javascript
function* genFunc() {
  yield 'a';
  yield 'b';
}

let genObj = genFunc();
genObj.next();
console.log(genObj.next().value);
// ???
```

- b
- a
- undefine
 
