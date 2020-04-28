---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '(Play with interfaces)[https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=16&pc=88#code/JYOwLgpgTgZghgYwgAgKIgNbGQbwFDLID0RycIyA9gA5jCUhwA2yClAtuxOAax1+AD8ALmQBnMFFABzANy8SZZFAhwAJlRBMAnsgCuUJrxXqGO-YdESpIOXgC+ePEwhhkEUeizIAvLgWkAO4ocCqa5upqMshgABYoBkaEiiCUyCAQEBpgaZFKbJzcYAHIAEYQCHB6YijAYADkYlS09IxJFkyi9dxYAHQF9Q5OipUgqW6BUpAxucqqama6iXgQvYm+yPXjzEyUwWr9HPWyxKQAwuTjZGJiwNIUOZuJ9WUVVTXIdZ9NcHPqALSLZDUKA0aBgbS9IA]{website}'

---

# Introduction to Interfaces

---
## Content

In TypeScript, the object shape is represented as a collection of key-value pairs:

```ts
function logLanguage(language: { name: string }) {
  console.log(language.name);
}

const language = {
  name: "TypeScript",
};

logLanguage(language);
// "TypeScript"
```

The order of the properties doesn't matter, or if any additional ones exist.

```ts
function logLanguage(language: { types: string, name: string }) {
  console.log(`${language.name} has ${language.types} types`);
}

const language = {
  name: "TypeScript",
  types: "static",
  isFun: true
};

logLanguage(language);
// "TypeScript has static types"
```

If we wanted to reuse the type of `language` shape at multiple places in our program, we can extract it into an interface:

```ts
interface Language {
  name: string;
  types: string;
  isFun: boolean;
}

function one(lang: Language) {
  // ...
}

function two(language: Language) {
  // ...
}
```

Now both `one` and `two` expect the same shape as their argument.

Besides allowing us to define the shape of an object, interfaces let us declare properties as optional or read only:

```ts
interface Enki {
  // an optional comment
  comment?: string;
  // a read only url
  readonly url: string;
}

let e: Enki = {
  // we are only adding the url
  // no need to add a comment
  // because it's optional
  url: 'enki.com'
}

// cannot write to a readonly url
e.url = 'notallowed.com'; // Cannot assign to 'url' because it is a read-only property.
```

---
## Practice

Create an interface for the object:

```ts
const myObject = {
  name: 'foobar',
  isTrue: false
}

??? MyInterface {
  name: ???;
  isTrue: ???;
}
```

* interface
* string
* boolean
* 'foobar'
* false
* number
* Interface

---
## Revision

Will the following code cause an error?

```ts
interface Enki {
  note?: string,
}

let e: Enki = {};
```

???

* No
* Yes
