---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - [What is a Compiler?](https://en.wikipedia.org/wiki/Compiler){website}
  - [TypeScript Compiler](https://www.npmjs.com/package/typescript){website}'

---

# Get started with TypeScript

---
## Content

Installing TypeScript is as easy as writing a line of code. Using NPM, all you have to type is:

```bash
npm install -g typescript
```

The command above will install TypeScript as a global package and you can start using it anywhere.

> *Note*: A file containing TypeScript code ends in `.ts`.

Since any valid JavaScript is also TypeScript (and types are optional), to convert a JavaScript file to TypeScript, we can just replace `.js` with `.ts`[1]:

```ts
// enki.ts
let name = 'Enki';

console.log(`${name} is cool!`);
```

The conversion back from TypeScript to JavaScript has an extra step (called *compilation*[2]). To get JavaScript, we first have to remove any TypeScript-specific code that isn't valid in JavaScript. This step is done with the TypeScript Compiler (called `tsc`):

```bash
tsc enki.ts
```

This will compile a TypeScript file `enki.ts` into a JavaScript file `enki.js`:

```js
// enki.js
let name = 'Enki';

console.log(`${name} is cool!`);
```

Here's an image to summarize the conversion in both directions:

![typescript-to-and-from-javascript](https://img.enkipro.com/274c90097c3b4af0faf07e0bc9cc4952.png)

---
## Practice

The technical term for converting TypeScript code into JavaScript is ???.

* compilation
* conversion
* transformation
* manipulation

---
## Revision

To convert a JavaScript file `enki.js` to TypeScript, we can change the file name to `enki.ts`.

???

* true
* false

---
## Footnotes

[1:Interoperability with JavaScript]
This is a very important feature of TypeScript. In fact, a major reason for TypeScript's popularity is how easy it is for JavaScript developers to start using it.

[2: Compilation]
Compilation is the process of translating computer code written in one programming language into another language
