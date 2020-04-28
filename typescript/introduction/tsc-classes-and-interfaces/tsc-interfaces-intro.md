---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Play with interfaces](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=17&pc=71#code/JYOwLgpgTgZghgYwgAgApwJ4FsLgCpRwgDOiYwA9iMgN4BQyyA9E8kchQA7lVwA2yBBSw5wDQcNFgA-AC5kxMFFABzANziWbZFAhwAJhxB8MyAG78ArhHG6DVE+asR5IS1gBG0DQF86dPggwZE5MKXl0bFwwAiJSBB5qAF5aTVYAdxQ4XSNHA31VZDAACxQLPms05BAKaogIQzBa-O0hEWiqrwQ4S2IUYDAAcmIObkoQfnFy63kARgAmAGYAGjo-Oi1ukBrghGKiFSydPX0HU2mbUKjwADoL5BSABg0taCgKKHkAYSIdtmJiMAVNQmshBhdBsguj0+sgBnCRnBjgYALRnELvTjQMAYG5AA){website}'
  - '[Interface Type](https://www.typescriptlang.org/docs/handbook/interfaces.html){documentation}'

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
}

// cannot change a readonly value
payment.value = 0;
// error: Cannot assign to 'value' because it is a read-only property.
```

---
## Practice

Fill in the blacks such that `reader` satisfies the `BookReader` interface:

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

* Array<Book>
* : BookReader
* satisfy BookReader
* []Book
* = BookReader
* Array<string>

---
## Revision

Will the following code cause a type error?

```ts
interface Enki {
  note?: string,
}

let e: Enki = {};
```

???

* No
* Yes
