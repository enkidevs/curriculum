---
author: nem035

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Play with interfaces and classes](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=30&pc=58#code/JYOwLgpgTgZghgYwgAgDJxAcwK50ygbwChlkQ4BbCALmQGcwpRMBuE+uATwDlKIAKCBQD2AK2C0GTLAEpaAN2HAAJkQC+RIggA2cOnWQAFKMMxRKFZuiy58yYBQAO2oRHAHrOPIXbkqkxmY2UjouXipBEXEA6UxkAF5kAHJAXg3AKD2kmWRiUlIEYRA6YRcAOm1TfgADAEkkimQwAAsUABICJuA6Er8INWRHEzMLZmRdG29kNqExYDVKmWDkDTyCqWwEMGEofh6Y5iyc3I6unoSyPkWNDS1VsAaDRJAIAHcjQfMKSyxPWwEAIgAKpxHBAAMoIJiOMB-BZEMBdUI8Pj8BbIAD0aOQf1q9SaKCBIPBkLuA1MHy+cTGXjs6T+mh0egMAAlsBQMD8Jg5nK53GgMNSfKRdvRAlhFojwgJptERbEzqkMgd2CtCsUIGUKjU6g1mpN2o1Ot0+H1GqyMKN+b89dLZvNLux8oVGOtNtthVJ9tllTrDadHhd2Fd6bdkG5MNpOo0zk9Xiy2SAOfh+H8AKJYCN0RowthhjONEoS5GojFYnE6lBp8OR5Cm+MW8Y0tJ-IA){website}'

---

# Classes and Interfaces

---
## Content

An interface can be used to define a particular behavior that a class can implement.

```ts
interface Language {
  name: string;
}

class ProgrammingLanguage implements Language {
  name: string;
  constructor(name: string) {
    this.name = name;
  }
}

const ts = new ProgrammingLanguage("TypeScript");
ts.name // "TypeScript"
```

You can also define methods in an interface that are implemented in the class:

```ts
interface Language {
  name: string;
  sayName(emoji: string): void
}

class ProgrammingLanguage implements Language {
  name: string;
  sayName(emoji: string = '😊') {
    console.log(`My name is ${this.name} ${emoji}`);
  }
  constructor(name: string) {
    this.name = name;
  }
}

const ts = new ProgrammingLanguage("TypeScript");
ts.sayName(); // "My name is TypeScript 😊"
```

Multiple classes can implement the same interface:

```ts
class ProgrammingLanguage implements Language {
  name: string;
  sayName(emoji: string = '😊') {
    console.log(`I'm the ${this.name} programming language ${emoji}`);
  }
  constructor(name: string) {
    this.name = name;
  }
}

class HumanLanguage implements Language {
  name: string;
  sayName(emoji: string = '😊') {
    console.log(`I'm the ${this.name} human language ${emoji}`);
  }
  constructor(name: string) {
    this.name = name;
  }
}

const ts = new ProgrammingLanguage("TypeScript");
ts.sayName(); // "I'm the TypeScript programming language 😊"

const english = new HumanLanguage("English");
english.sayName(); // "I'm the English human language 😊"
```

---
## Practice

Fill in the gaps such that the code contains no type errors:

```ts
??? MobileApp {
  category: string;
}

??? Enki ??? MobileApp {
  category: ???
}

const e = ??? Enki();
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
