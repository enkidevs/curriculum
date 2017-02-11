# Classes and Constructor
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

Whilst it has always been possible to simulate classical inheritance in JavaScript it comes with a number of gotcha's and caveats. 

ES6 introduces classes and inheritance to JavaScript. It is important to note that these changes dont change JavaScripts prototype model just make it easier to work with.

It is worth noting that some developers feel that the new class related features are not a good idea as they go against JavaScripts prototypical inheritance model.

Classes in JavaScript support only one level of inheritance although there is an approach called mixins for getting around this. 

It is important to note that in JavaScript classes are not hoisted (moved up to the beginning of a scope block) so must always be declared before they are used.

We can create a class in JavaScript with the following syntax:

```
class Person {
}

var p = new Person();
```

The following approach (called a class expression) is also valid:

```
var p = class Person{};
```

**Constructor**

Often you will want the user to supply initialisation arguments to the class – we can do this by introducing a **constructor**. 

JavaScript classes can have only a single constructor:

```
class Person {
  constructor(name) {
    this.name = name;
  }
};

var p = new Person("Enki");
p.name; //Enki
```

---