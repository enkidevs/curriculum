---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Play with
    classes](https://repl.it/@enkicontent/TypeScriptPlayWithClasses){website}
  - >-
    [Class
    Type](https://www.typescriptlang.org/docs/handbook/classes.html){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Introduction to Classes

---

## Content

Classes represent the building blocks of the style of programming called *object-oriented programming*, or OOP[1].

The idea behind OOP is to organize related values and behaviors into definitions of things that exist in your program (an "Animal", a "GamePlayer", a "User", etc).

You can think of a class as a blueprint that defines how some object will behave and what data it will have.

To define a class, we can use the `class` keyword.

To create an object based on that class we can use the `new` keyword.

> 💡 Creating an object based on a class is called *instantiation*

Let's look at an example:

```ts
// define an Animal
class Animal {
  // data for all Animals
  name: string;
  kind: string = "animal";
  //           ^^^^^^^^^^ default value

  // function that runs on instantiation
  constructor(animalName: string) {
    this.name = animalName;
  }

  // function that belongs to every Animal
  sayHi() {
    console.log(
      `Hi, I'm an ${this.kind} called ${this.name}`
    );
  }
}

// create (instantiate) an Animal
// Note that we're only passing in the "name" as "zebra"
// the "kind" has a default value of "animal"
let zebra = new Animal("zebra");
zebra.sayHi(); // "Hi, I'm an animal called zebra"
```

> 💡 A function defined on a class is called a **method**. Any method can access values defined on the class through the `this` value.

> 💡 The `constructor` function is a special function that runs when a class is instantiated using `new`.

The benefit of classes is that they allow us to define data and behaviors in one enclosed place, and then create many objects based on that definition.

In the example above, we used the `Animal` class to create a `zebra` but we could've also created a `tiger` or an `eagle`.

---

## Practice

Create the `"London"` instance of the `City` class:

```ts
class City {
  name: string;
  constructor(cityName: string) {
    this.name = cityName;
  }
}

let london = ??? ???('London')
```

- new
- City
- New
- city

---

## Revision

Create the `"Miami"` instance of the `City` class:

```ts
??? City {
  name: string;
  constructor(cityName: string) {
    this.name = cityName;
  }
  printCity() {
    console.log(this.name);
  }
}

let miami = ??? ???('Miami')
```

- class
- new
- City
- interface
- New
- city

---

## Footnotes

[1:Object-oriented programming]
OOP teaches us to [organize](https://en.wikipedia.org/wiki/Encapsulation_(computer_programming)) data along with its associated behaviors into [units](https://en.wikipedia.org/wiki/Abstraction_(computer_science)) called classes.

Other classes can [inherit](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)) this data/behaviors further and change it or add their own.

Related classes can also be [converted into one another](https://en.wikipedia.org/wiki/Polymorphism_(computer_science)).
