# Classes and Constructor
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

tags:

  - es6

  - introduction

  - oop

inAlgoPool: false

category: feature

---
## Content

It has always been possible to simulate classical inheritance in JavaScript, however it comes with a number of gotcha's and caveats, and is widely regarded as "not nice to work with".

ES6 introduces classes and inheritance to JavaScript with the addition of `class` keyword. It is important to note a few things:

* These changes don't change JavaScript's prototype model, they are merely syntactic sugar.
* `Class`es in JavaScript support only one level of inheritance (although there is an approach called _mixins_ for getting around this.)
* `Class`es are not hoisted (moved up to the beginning of a scope block) so must always be declared before they are used.

We can create a `class` in JavaScript with the following syntax:

```
class Person {
}

var p = new Person();
```

**Constructor**

Often you will want the user to supply initialization arguments to the class – we can do this by introducing a **constructor**.

JavaScript `class`es can have only a single constructor:

```
class Person {
  constructor(name) {
    this.name = name;
  }
};

var p = new Person("Enki");
p.name; //Enki
```
