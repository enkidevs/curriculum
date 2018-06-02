---
author: alexjmackey
levels:
  - medium
  - advanced
type: normal
category: feature
inAlgoPool: false
tags:
  - es6
  - oop
links:
  - >-
    [MDN -
    Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes){webstie}
  - >-
    [MDN -
    Constructors](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor){website}
aspects:
  - introduction
---

# Classes and Constructor


---

## Content

It has always been possible to simulate classical inheritance in JavaScript, however it comes with a number of gotchas and caveats, and is widely regarded as "not nice to work with".

ES6 introduces classes and inheritance to JavaScript with the addition of `class` keyword. It is important to note a few things:

* These changes don't change JavaScript's prototype model, they are merely syntactic sugar.
* `Class`es in JavaScript support only one level of inheritance (although there is an approach called *mixins* for getting around this.)
* `Class`es are not hoisted (moved up to the beginning of a scope block) so must always be declared before they are used.

We can create a `class` in JavaScript with the following syntax:

```javascript
class Person {
}

var p = new Person();
```

### Constructor

Often you will want the user to supply initialization arguments to the class – we can do this by introducing a **constructor**.

JavaScript `class`es can have only a single constructor:

```javascript
class Person {
  constructor(name) {
    this.name = name;
  }
};

var p = new Person("Enki");
p.name; //Enki
```


---

## Practice

Fill in the class definition below such that the log statements at the end of the snippet hold true.

```javascript
??? ??? {
  ???(width, length) {
    ???.width = ???
    ??? = length
  }
}

const myRec = ??? Rectangle(20, 30)
console.log(myRec.width)
// 20
console.log(myRec.length)
// 30
```

* class
* Rectangle
* constructor
* this
* width
* this.length
* new
* super
* this.width
* myClass
* new Class
* inherit
* inheritance
* data


---

## Revision

How would you assign a variable passed to the constructor to a class?

```javascript
class Sphere() {
  constructor(radius) {
    ??? = 4 / 3 * Math.PI *
      Math.pow(radius, 3)
  }
}
```

* this.volume
* const volume
* let volume

