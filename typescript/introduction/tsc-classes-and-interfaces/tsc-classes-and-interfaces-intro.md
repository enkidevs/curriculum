---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Play with interfaces and classes](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=43&pc=32#code/JYOwLgpgTgZghgYwgAgGIBsCe1kG8BQyyA9McnOusjFtAM7IC2ArnWMgBZwBuKcyIOIwiESZMF3bAGAexjIwmAA4o2UUAHNRg4QC5kazQG5RpcpWq0oDFm048+lzEwgSZAE1PjJ9hiBnISnBQQq705CCeRGbuMhB0IADk7FCuzFAgEZgSmqI0mAAUAJT63DLA7iYAvvj4COhwdAwAQsBQ7sjAjEroEMLgDBjYUHjaofqGIBomRAgyIGrMCGAyUAU6EBNg6lNFo0REOXQAdBvIALwCoTPINUT5xfsHcwsyvcfoMhoFogfIAAYAIzaHQAJLgjqdQlVOgx8pp-r9kEUbjUanUGk1kAAREIaeadbq9fpgQZWJ4bLY7aaiF6LZardbjAzbTR7Ah-SFnS4bVF5LCPDnPeZ0N4QD5fH5-Ij-dx4gngrnQ2FOBFIlGiNG1OnsCBwDS9C4CCAAd2QrXaBQARABRfW9K0anXIABWcEBgOgJpkCAA1s4eaacfKQFLkFaAFLuz1Qb1+zBW-Aa-B6g3ih4aszA9rIO1plXwqb4N0er0+-3HDMmGIh5BR0ux8vOaSqqZAA){documentation}'

---

# Classes and Interfaces

---
## Content

Interfaces can be use with classes as their **behavioral contract**.

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

* interface
* class
* implements
* string = 'Education'
* new
* string
* shape
* definedBy
* create
* instantiate

---
## Revision

Will this code run without errors?

```ts
interface MadeOfPotion {
  ingredients: Array<string>;
}

class PowerpuffGirl implements MadeOfPotion {
  ingredients = ["sugar", "spice", "everything nice"]
}

let Bubbles = new PowerpuffGirl();
let Blossom = new PowerpuffGirl();
let Buttercup = new PowerpuffGirl();

class Obelix implements MadeOfPotion {
  ingredients = ["magic"]
}

const o = new Obelix();
```

???

* Yes
* No
