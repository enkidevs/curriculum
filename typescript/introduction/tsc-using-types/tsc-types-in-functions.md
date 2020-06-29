---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Practice Lessons from this
    Insight](https://repl.it/@enkicontent/TypeScriptFunctionsIntro){website}
  - >-
    [Functions in
    TS](https://www.typescriptlang.org/docs/handbook/functions.html){documentation}
---

# Types in Functions


---

## Content

We can attach a type to a parameter of a function by adding a `:` and a type after its name:

```plain-text
function hello(name: string) {
//                 ^^^^^^^^
  console.log(`Hello ${name}!`)
}

hello('Enki');
// "Hello Enki!"
```

If we were to pass a different type we would get an error:

```plain-text
hello(123);
// error: Argument of type 'number' is not assignable to parameter of type 'string'.
```

TypeScript will also throw an error if the wrong number of [arguments](https://enki.com/glossary/general/parameter-vs-argument) is passed in:

```plain-text
function hello(
  name: string,
  emoji: string
) {
  console.log(`${name} ${emoji}!`);
}

hello("Enki", "👋");
// "Enki 👋!"
hello("Enki");
// error: Expected 2 arguments, but got 1.
```

We can also define the return type of a function:

```plain-text
function hello(name: string): string {
//                          ^^^^^^^^
  return `Hello ${name}!`;
}

const greeting = hello("Enki");

console.log(greeting);
// "Hello Enki!"
```

This protects us against returning values of the wrong type:

```plain-text
function hello(name: string): string {
  return 123;
  // error: Type '123' is not assignable to type 'string'
}
```


---

## Practice

Which line do you think will compile without errors?

```plain-text
function getLessonsLearned(
  username: string
) {
  return [
    "optional static types",
    "modern javascript features",
    "structural typing",
  ];
}

// A.ts
getLessonsLearned("Zamolxis");

// B.ts
getLessonsLearned(100);
```

???

- A
- B


---

## Revision

Will this code compile without errors?

```plain-text
function enki(age: number): string {
  return `Enki is ${age} years old`;
}
```

???

- Yes
- No
