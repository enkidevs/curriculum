---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Classes Intro

---
## Content

If you're not familiar with classes, these represent the building blocks of the object-oriented class-based programming approach. TypeScript allows you to use classes, and when the code is compiled it is compatbile with all the major broswers and platofrms. In this insight we will take a look at a simple class, with more in-depth information being given in a future mission.

So, what is a class? To best explain it, let's take a look at an example:

```ts
class Animal {
  name: string;
  constructor(animalName: string) {
    this.greeting = animalName;
  }
  sayHi() {
    console.log("Hi, I'm a " + this.greeting);
  }
}

let zebra = new Animal("zebra");
zebra.sayHi();
// Hi, I'm a zebra
```

Classes are pieces of re-usable code, and they are one of the reasons TypeScript is so great. You can use the `Animal` class to create as many animals as you want (we have created a `zebra` instance). Although this is a simple piece of code, you can see how useful this can get as the logic gets more complex.

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