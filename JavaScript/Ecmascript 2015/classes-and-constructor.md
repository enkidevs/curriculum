# Classes and Constructor
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

Whilst it has always been possible to simulate classical inheritance in JavaScript it comes with a number of gotcha's and caveats. 

ES6 introduces classes and classical inheritance to JavaScript. 

Many developers feel that some of the class features are not a good idea and go against JavaScripts prototypical inheritance model.

Classes in JavaScript support only one level of inheritance although there are work around approaches to this using something called mix ins that we will discuss in future insights.

It is important to note that in JavaScript classes are not hoisted (moved up to the beginning of a scope block) so must be declared before they are used.

We can create a class in JavaScript with the following syntax:
```
class Person {
}
var p =new Person();

The following called a class expression is also valid:
var p = class Person{};
```

**Constructor**

Often you will want the user to supply initialisation arguments to the class – we can do this by introducing a constructor. 

Remember that JavaScript classes can have only a single constructor:

```
class Person {
  constructor(name) {
    this.name = name;
  }
};

var p = new Person("Alex");
p.name; //Alex
```
---