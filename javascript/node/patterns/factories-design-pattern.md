---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: best practice

standards:
  js.identify-common-design-patterns: 20
  js.use-modules: 20

tags:
  - workout
  - deep

links:

  - '[blog.risingstack.com](https://blog.risingstack.com/fundamental-node-js-design-patterns/){website}'
  - '[thenodeway.io](http://thenodeway.io/posts/designing-factories/){website}'

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

Use the factory function above to create an instance of Enki:
```

let enki = ???(???)???

```

* require
* './enki.js'
* (args)
* new Enki
* args
* ;


---
## Revision

Complete the code snippet to create a factory function and export it:

```javascript
//enki.js
function Enki (args) {
  this.args = args;
}

function create (args) {
  //args should be modified here
  ??? ??? ???(args);
}

module.exports.create = ???;
```

* return
* new
* Enki
* create
* this
