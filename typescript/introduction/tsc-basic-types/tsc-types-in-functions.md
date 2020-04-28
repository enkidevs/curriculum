---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Practice Lessons from this Insight](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=7&pc=14#code/GYVwdgxgLglg9mABACwKYBt1wBRgIYC2qAXIgM5QBOMYA5gDSKoFwBWMpF1dAlJ1TVqIA3gChEiSqighKSAAYASYfiIBfRMuZsYagITyA3KLWjREBBUS0p0wYgC8KDFmwByAKJgA1jDeM3QF4NwGkdtx5jCzAyOHRUADosWmwbVDteYwB6DMQAIi9fRBC9HKA){website}'

---

# Types in Functions

---
## Content

We can define a type for a parameter of a function by adding a `:` and a type after its name:

```ts
function hello(name: string) {
  console.log(`Hello ${name}!`)
}

hello('Enki');
```

If we were to pass a different type we would get an error:

```ts
hello(123);
// error: Argument of type 'number' is not assignable to parameter of type 'string'.
```

TypeScript will also throw an error if the wrong number of arguments[1] is passed in:

```ts
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

```ts
function hello(name: string): string {
  return `Hello ${name}!`;
}

const greeting = hello("Enki");
console.log(greeting);
// "Hello Enki!"
```

This protects us against returning values of the wrong type:

```ts
function hello(name: string): string {
  return 123;
  // error: Type '123' is not assignable to type 'string'
}
```

---
## Practice

Which line do you think will compile without errors?

```ts
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

* A
* B

---
## Revision

Will this code compile without errors?

```ts
function enki(age: number): string {
  return `Enki is ${age} years old`;
}
```

???

* Yes
* No

---
## Footnotes

[1: Parameter vs Argument]
A *parameter* is a variable defined by a function to hold one of its input values.

The actual value that is passed in is called an *argument*.
