---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Play with
    interfaces](https://repl.it/@enkicontent/TypeScriptPlayWithInterfaces){website}
  - >-
    [Interface
    Type](https://www.typescriptlang.org/docs/handbook/interfaces.html){documentation}
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

# Introduction to Interfaces

---

## Content

The `interface` type is used to define a shape of an object.

> 💡 Unlike a class, an interface is a virtual structure that only exists for type-checking purposes.

```ts
// define what the shape of
// the Book object
// should look like
interface Book {
  name: string;
  language: string;
  isFun: boolean;
}

// use the Book shape as the type.
function read(book: Book) {
  // ...
}

function countWord(
  book: Book,
  word: string
): number {
  // ...
}
```

Interfaces cannot be instantiated. We do not use them to create objects.

Their purpose is to declare a type for specific object shapes.

We can use interfaces to declare object properties as optional or read only:

```ts
interface PaymentTransaction {
  // an optional comment
  comment?: string;
  // a read only value
  readonly value: number;
}

let payment: PaymentTransaction = {
  // we are only adding the value
  // no need to add a comment
  // because it's optional
  value: 123,
};

// cannot change a readonly value
payment.value = 0;
// error: Cannot assign to 'value' because it is a read-only property.
```

---

## Practice

Fill in the blanks such that `reader` satisfies the `BookReader` interface:

```ts
interface Book {
  name: string;
}

interface BookReader {
  books: ???;
}

let reader??? = {
  books: [
    { name: "Don Quixote" },
    { name: "Robinson Crusoe" },
  ],
};
```

- `Array<Book>`
- `: BookReader`
- `satisfy BookReader`
- `[]Book`
- `= BookReader`
- `Array<string>`

---

## Revision

Will the following code cause a type error?

```ts
interface Enki {
  note?: string;
}

let e: Enki = {};
```

???

- No
- Yes
