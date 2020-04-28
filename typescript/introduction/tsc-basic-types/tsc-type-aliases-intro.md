---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
  - workout
links:
  - '[Play with Type Aliasing](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=20&pc=10#code/C4TwDgpgBATghgEwJYFcDOUC8UB2KC2ARhDANwBQ5okUAwkjAMYA202A3uVLAFyyKo0AGnIBfCuUYB7HGmBQACgEksUAMwA6AIwAWCQDMUORsCQyojBowL6SEYxAAUlpqz71XEAJRRO3GBDAKDA4UABMUABUFlasGjBRikoUopSGxqbmcAFwzrEQ7vk+frCBwaEuLBDxUdER0coplNKyUnHMUgDmeUw2dg6O7LxQWlpQol5epFAA9DPkc1AAbACcGgAMABySMmht1R3d2RC5QzB8o+OTFItqAOxrKzpAA){website}'

---

# Introduction to Type Aliases

---
## Content

Type aliases are used to create a new name for an existing type.

```ts
// alias string type as Language
type Language = string;

// alias boolean type as Fun
type Fun = boolean;

// now we can use the aliases
let lang: Language = 'TypeScript';
let fun: Fun = true;
```

> 💡 Type aliasing creates a name to refer to a type. It doesn't create a new type.

This is only useful when we want to provide a name for a type that is used in more than one place instead of repeating ourselves.

```ts
type radius = number;

type Circle = {
  r: radius,
};

const PI = 3.14;

function circumference(circle: Circle) {
  return 2 * circle.r * PI;
}

function area(circle: Circle) {
  return circle.r ** 2 * PI;
}

console.log(circumference({ r: 11 })); //
// 69.08
console.log(area({ r: 11 }));
// 379.94
```

Any type can be aliased:

```ts
type NameAndFactTuple = [string, string];

let enki: NameAndFactTuple = [
  "Enki",
  "Is a friendly learning coach",
];

let morgan: NameAndFactTuple = [
  "Morgan Freeman",
  "Great actor with a cool voice",
];
```

---
## Practice

Create an alias named `nothing` to the `void` type:

```ts
??? nothing ??? void;

function runForever(): nothing {
  for (;;) {
    // loop forever
  }
}
```

???

* type
* =
* alias
* is
* ==

---
## Revision

Type aliases are created using the ??? keyword.


???

* type
* alias
* name
* typeAlias
