# Factories design pattern
author: catalin

levels:

  - advanced

  - medium

type: normal

category: best practice

links:

  - >-
    [blog.risingstack.com](https://blog.risingstack.com/fundamental-node-js-design-patterns/){website}

  - '[thenodeway.io](http://thenodeway.io/posts/designing-factories/){website}'

---
## Content

In order to avoid custom object creation with different arguments, **factories** can be used instead. Their usage is obvious when working with complex constructors or you want to avoid *copypasta*.

Factories will create objects for you so *you don't have to*.

Basic factories pattern:
```javascript
function Enki (args) {
  this.args = args;
}

function create (args) {
  //args should be modified here
  return new Enki(args);
}

module.exports.create = create;
```
