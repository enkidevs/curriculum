---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Play with interfaces and
    classes](https://repl.it/@enkicontent/TypeScriptDragonsFlyButNotFish){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Classes and Interfaces

---

## Content

Interfaces can be used with classes as their **behavioral contract**.

For example, for a `Bird` and a `Dragon` to become flyers, they must implement the `Flyer` contract.

```ts
interface Flyer {
  // all flyers must have a name
  // that is of type string
  name: string;
  // all flyers must have a fly method
  // that has no parameters and
  // doesn't return anything
  fly(): void;
}

class Bird implements Flyer {
//         ^^^^^^^^^^^^^^^^
// all Bird now have the data
// from the Flyer interface
  name: string;
  constructor(name: string) {
    this.name = name;
  }
  fly() {
    console.log(
      `bird ${this.name} is flying`
    );
  }
}

class Dragon implements Flyer {
  name: string;
  constructor(name: string) {
    this.name = name;
  }
  fly() {
    console.log(
      `dragon ${this.name} is flying`
    );
  }
}

const eagle = new Bird("Eagle");
const jabberwocky = new Dragon(
  "Jabberwocky"
);

eagle.fly();
// bird Eagle is flying
jabberwocky.fly();
// dragon Jabberwocky is flying
```

On the other hand, flying in water is a little tough:

```ts
class Fish {
//        ^ doesn't implement Flyer
  name: string;
  constructor(name: string) {
    this.name = name;
  }
}

const nemo = new Fish("Nemo");

nemo.fly(); // fish can't fly :)
// error: Property 'fly' does not exist on type 'Fish'
```

---

## Practice

Fill in the gaps such that the code contains no type errors:

```ts
??? MobileApp {
  category: string;
}

??? EnkiApp ??? MobileApp {
  category: ???
}

// Hint: we're not passing
// in the category
const e = ??? EnkiApp();
e.category;
```

- interface
- class
- implements
- string = 'Education'
- new
- string
- shape
- definedBy
- create
- instantiate

---

## Revision

Will this code run without errors?

```ts
interface MadeOfPotion {
  ingredients: Array<string>;
}

class PowerpuffGirl implements MadeOfPotion {
  ingredients = ["sugar", "spice", "everything nice"];
}

let Bubbles = new PowerpuffGirl();
let Blossom = new PowerpuffGirl();
let Buttercup = new PowerpuffGirl();

class Obelix implements MadeOfPotion {
  ingredients = ["magic"];
}

const o = new Obelix();
```

???

- Yes
- No
