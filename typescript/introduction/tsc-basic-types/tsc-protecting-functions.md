---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Try Out Code From This Insight](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=17&pc=14#code/GYVwdgxgLglg9mABACwKYBt1wOoysgeQAdYEBDdACjDIFtUAuRAZygCcYwBzAGkVVpwAVjAD8TVh24BKRAG8AUIkQQEzOOlQA6LF0oADACRya9AL6JjA4TDMBCfdIVmFCtJhx5CJeDSoByAFEwAGsYfz5-QF4NwGkd-2kAbgUAemTEACJgsMRYu3S3DCxcfGJSP0og0PDElLTMqsRwABNUYE5UJrzXUEgylELPfAARVrIQdChqOkYWdk5efkERCTnuRABeRGjALJ34+SUVNQ1tXQNjU1QLKyXbBycXAo9i5BHgMYmKrPDI2Pik1IyXxyMS67iKXle70mlTCf1qgIaUW2eSAA){website}'

---

# Protecting Functions

---
## Content

By default, all parameters in a function are considered required.

To declare an optional parameter, we can use the `?` after the parameter name:

```ts
function hello(
  name: string,
  emoji?: string
) {
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// "Enki undefined!"
```

The reason we get `"Enki undefined"` above is because we didn't pass anything as the `emoji`.

One way to protect against this is to manually give `emoji` some default value if it doesn't exist[1]:

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

However, TypeScript has a built-in way to set a default value:

> 💡 When setting a default value we don't need to use the `?` because the parameter automatically becomes optional

```ts
function hello(
  name: string,
  emoji: string = "💚"
) {
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// "Enki 💚!"
```

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

* undefined
* TS is fun: true
* null
* TS is fun: undefined
* TS is fun: false
* error

---
## Revision

Will this code compile with type errors?

```ts
function enki(age?: number = 5): string {
  return `Enki is ${age} years old`;
}

enki()
```

???

* Yes
* No

---
## Footnotes

[1: Check Value Existence]
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
