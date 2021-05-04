---
author: kapnobatai136
type: normal
category: must-know
links:
  - "[What is a Compiler?](https://en.wikipedia.org/wiki/Compiler){website}"
  - "[The TypeScript Compiler](https://www.npmjs.com/package/typescript){website}"
  - >-
    [Moving to TypeScript
    files](https://www.typescriptlang.org/docs/handbook/migrating-from-javascript.html#moving-to-typescript-files){documentation}
  - "[Download Node.js](https://nodejs.org/en/download/){website}"
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Get Started with TypeScript

---

## Content

TypeScript can be installed with a single NPM command:

> 💻 Before you can install TypeScript, you must have Node.js and NPM installed.

```bash
npm install -g typescript
```

This will make TypeScript a global CLI command[1] which you can start using in your terminal.

> 💡 A file containing TypeScript code ends in `.ts`.

Since any valid JavaScript is also TypeScript (and types are optional), to convert a JavaScript file to TypeScript, we can just replace `.js` with `.ts`[2]:

```ts
// enki.ts
let name = "Enki";

console.log(`${name} is cool!`);
```

The conversion back from TypeScript to JavaScript has an extra step called *compilation*[3]. To get JavaScript, we must first remove any TypeScript-specific code that isn't valid in JavaScript.

This step is done with the TypeScript Compiler:

```bash
tsc enki.ts
```

Above will compile a TypeScript file `enki.ts` into a JavaScript file `enki.js`:

```js
// enki.js
let name = "Enki";

console.log(`${name} is cool!`);
```

Here's an image to summarize the conversion in both directions:

![typescript-to-and-from-javascript](https://img.enkipro.com/e481e032bf000bb9622aae28b2bc1e9f.png)

---

## Practice

The technical term for converting TypeScript into JavaScript is called ???.

- compilation
- conversion
- transformation
- manipulation

---

## Revision

To convert a JavaScript file `enki.js` to TypeScript, we can change the file name to `enki.ts`.

???

- true
- false

---

## Footnotes

[1: A global NPM package]
Installing an NPM package [globally](https://docs.npmjs.com/downloading-and-installing-packages-globally) allows you to use it anywhere on your computer.

[2:Interoperability with JavaScript]
This is a very important feature of TypeScript. In fact, a major reason for TypeScript's popularity is how easy it is for JavaScript developers to start using it.

That being said, changing `.js` to `.ts` will sometimes point out type errors but the code can still run.

One example of such type error would be changing a number to a string:

```js
// enki.js
let num = 5;
num = "enki"; // ok in JS
```

```ts
// enki.ts
let num = 5;
num = "enki"; // error in TS
```

It is up to the programmer how to deal with these errors.

They can change the code to adjust it to what TypeScript expects or tell TypeScript to ignore the problem.

[3: Compilation]
Compilation is the process of translating computer code written in one programming language into another language
