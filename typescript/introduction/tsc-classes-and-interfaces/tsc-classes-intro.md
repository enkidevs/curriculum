---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Introduction to Classes

---
## Content

Classes represent the building blocks of the style of programming called *object-oriented programming*, or OOP[1].

The idea behind it is to organize related values and behaviors into definitions of entities that exist in your program (an "Animal", a "GamePlayer", a "User", etc). Then you can use these definitions, called classes, to *create (or instantiate)* those entities wherever you'd like.

These instances of classes are called objects.

To define a class, TypeScript gives us the `class` keyword. To create an instance of that class we can use the `new` keyword. Let's look at an example:

> *Note*: A function defined on a class is called a **method**. Any method can access values defined on the class using the `this` keyword.

> *Note*: The `constructor` function is a special function that runs when a class is instantiated using `new`.

```ts
// define an Animal
class Animal {
  name: string;
  type: string = 'animal';
  constructor(animalName: string) {
    this.name = animalName;
  }
  sayHi() {
    console.log(`Hi, I'm an ${this.type} called ${this.name}`);
  }
}

// create (instantiate) an Animal
let zebra = new Animal("zebra");
zebra.sayHi(); // "Hi, I'm an animal called zebra"
```

The benefit of classes is that they allow us to define data and behavior in one place, and then create many entities that use that data and follow that behavior as we see fit. In the example above, we used the `Animal` class to create a `zebra` but we could've also created a `tiger` and an `eagle` too.

This allows us to have reusable code and not repeat ourselves.

Note that using classes comes with some drawbacks due to their strict rules[2].

---
## Practice

Create an instance of the `City` class:

```ts
class City {
  name: string;
  constructor(cityName: string) {
    this.name = cityName;
  }
  printCity() {
    console.log(this.name);
  }
}

let london = ??? ???('London')
```

* new
* City
* New
* city

---
## Footnotes

[1:Object-oriented programming]
OOP teaches us to [organize](https://en.wikipedia.org/wiki/Encapsulation_(computer_programming)) data along with its associated behaviors into [units](https://en.wikipedia.org/wiki/Abstraction_(computer_science)) called classes. Other classes can [inherit](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)) this data/behaviors further and change it or add their own. Related classes can also be [converted into one another](https://en.wikipedia.org/wiki/Polymorphism_(computer_science)).

[2:Classes]
Classes in OOP can inherit from one another. For example, a Mammal can extend an Animal. This can lead to programs with many levels of these inheritance links that are strict and hard to change. As an example, you can read about the [Diamond Problems](https://en.wikipedia.org/wiki/Multiple_inheritance#The_diamond_problem)
