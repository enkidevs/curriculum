---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Play with functions and
    parameters](https://repl.it/@enkicontent/TypeScriptFunctionParameters){website}
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

# Protecting Functions

---

## Content

By default, all parameters in a function are considered required.

### Optional parameters

To declare an optional parameter, we can use the `?` after the parameter name:

```ts
function hello(
  name: string,
  emoji?: string // optional
) {
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// "Enki undefined!"
```

The reason we get `"Enki undefined"` above is because we didn't pass anything as the `emoji`[1].

One way to protect against this is to manually give `emoji` some default value if it doesn't exist[2]:

```ts
function hello(
  name: string,
  emoji?: string
) {
  if (!emoji) {
    emoji = "💚";
  }
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// Enki 💚!
```

### Default parameters

Since setting the default value is a common operation, TypeScript gives us a built-in way to do it:

```ts
function hello(
  name: string,
  emoji: string = "💚"
//              ^^^^^^ default value
) {
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// "Enki 💚!"
```

> 💡 When setting a default value we don't need to use the `?` because the parameter automatically becomes optional.

---

## Practice

What will be logged for `A` and `B`?

```ts
function enki1(username?: string) {
  console.log(username); // A
}

function enki2(
  isTypeScriptFun: boolean = true
) {
  console.log(
    `TS is fun: ${isTypeScriptFun}` // B
  );
}

enki1();
enki2();
```

A = ???
B = ???

- undefined
- TS is fun: true
- null
- TS is fun: undefined
- TS is fun: false
- error

---

## Revision

Will this code compile with type errors?

```ts
function enki(age?: number = 5): string {
  return `Enki is ${age} years old`;
}

enki();
```

???

- Yes
- No

---

## Footnotes

[1: Undefined Value]
Any value in TypeScript that isn't defined gets the value `undefined`.

```ts
// variable without a value is undefined
let variable;

// parameter without a value is undefined
function enki(x?: number) {
  // x is undefined
}

enki(); // call without passing anything in
```

[2: Check Value Existence]
In JavaScript, a value can either be [*falsy*](https://developer.mozilla.org/en-US/docs/Glossary/Falsy) or [*truthy*](https://developer.mozilla.org/en-US/docs/Glossary/Truthy).

This means that, when converted to a boolean, a value will become either `true` or `false`.

The values that convert to `false` are:

```ts
false
0
-0
0n
""
null
undefined
NaN
```

To check if a value is *falsy* we can negate it with the `!` operator (which converts it into a boolean first) and verify if it becomes `true`.

In other words, `!x` will become `true` for any of the above values.

This is a common pattern to verify that a value is not empty.
