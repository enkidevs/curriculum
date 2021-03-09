---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Play with Type
    Aliasing](https://repl.it/@enkicontent/TypeScriptPlayWithTypeAliasing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
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

This is mainly useful when we want to provide a name for a type that is used in more than one place.

```ts
// create an alias for the
// "number" type
// called "radius"
type radius = number;

// create an alias for the
// "{ r: radius }" type
// called "Circle"
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
type NameAndFactTuple = [
  string,
  string
];

let enki: NameAndFactTuple = [
  "Enki",
  "Is a friendly learning coach",
];

let morgan: NameAndFactTuple = [
  "Morgan Freeman",
  "Should narrate my life",
];
```


---

## Practice

Create an alias named `nothing` to the `void` type:

```ts
??? nothing ??? void;

function logTSFact(): nothing {
  console.log(
    'TypeScript helps us write safer code'
  );
}
```

- type
- =
- alias
- is
- ==


---

## Revision

Type aliases are created using the ??? keyword.

- type
- alias
- name
- typeAlias
