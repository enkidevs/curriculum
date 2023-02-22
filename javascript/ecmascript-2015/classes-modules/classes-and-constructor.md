---
author: alexjmackey
type: normal
category: feature
tags:
  - es6
  - introduction
  - oop
links:
  - >-
    [MDN -
    Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes){webstie}
  - >-
    [MDN -
    Constructors](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/constructor){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Classes and Constructor


---

## Content

It has always been possible to simulate classical inheritance in JavaScript, however it comes with a number of gotchas and caveats, and is widely regarded as "not nice to work with".

ES6 introduces classes and inheritance to JavaScript with the addition of `class` keyword. It is important to note a few things:

- These changes don't change JavaScript's prototype model, they are merely syntactic sugar.
- `Class`es in JavaScript support only one level of inheritance (although there is an approach called *mixins* for getting around this.)
- `Class`es are not hoisted (moved up to the beginning of a scope block) so must always be declared before they are used.

We can create a `class` in JavaScript with the following syntax:

```javascript
class Person {
}

let p = new Person();
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

let p = new Person("Enki");
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

- class
- Rectangle
- constructor
- this
- width
- this.length
- new
- super
- this.width
- myClass
- new Class
- inherit
- inheritance
- data


---

## Revision

How would you assign a variable `volume` passed to the constructor to a class member variable?

```javascript
class Sphere() {
  constructor(radius) {
    ??? = 4 / 3 * Math.PI *
      Math.pow(radius, 3)
  }
}
```

- this.volume
- const volume
- let volume
 
