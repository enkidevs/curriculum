---
author: catalin
type: normal
category: best-practice
tags:
  - workout
  - deep
links:
  - >-
    [blog.risingstack.com](https://blog.risingstack.com/fundamental-node-js-design-patterns/){website}
  - '[thenodeway.io](http://thenodeway.io/posts/designing-factories/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Factories design pattern


---

## Content

In order to avoid custom object creation with different arguments, **factories** can be used instead. Their usage is obvious when working with complex constructors or you want to avoid *copypasta*.

Factories will create objects for you so *you don't have to*.

Basic factories pattern:

```javascript
//enki.js
function Enki (args) {
  this.args = args;
}

function create (args) {
  //args should be modified here
  return new Enki(args);
}

module.exports.create = create;
```


---

## Practice

Fill in the gaps of the following snippets. First you need to define you `Enki` factory which exposes `createWithNumber` and `createWithString`:

```javascript
// myFactory.js

function Enki(number) {
  this.number = number
}

function createWithNumber(number) {
  console.log('created with number')
  return ???(number)
}

function createWithNumberString(str) {
  console.log('created with number string')
  ???(Number(str))
}

module.exports = {
  createWithNumber: createWithNumber,
  createWithNumberString:
   createWithNumberString,
}
```

How would you use this factory?

```javascript
// main.js
var Enki = require('./myFactory.js')

const e1 = ???(42)
const e2 = ???.???('55')
```

- new Enki
- return new Enki
- Enki.createWithNumber
- Enki
- createWithNumberString
- Enki.createWithNumberString
- return new
- Enki()
- create
- factory
- init


---

## Revision

Which of the following statements about the factory design pattern do you consider false?

???

- factory methods need to return multiple instances of the object in one call
- factories begin to be useful when working with complex constructors
- specific methods will create objects instead of the constructor
- factory methods will call the constructor themselves
