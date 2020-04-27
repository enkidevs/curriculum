---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Get started with TypeScript

---
## Content

Installing TypeScript is as easy as writing a line of code. Using NPM, all you have to type is:

```bash
npm install -g typescript
```

The command above will install TypeScript as a global package and you can start using it anywhere. A file containing TypeScript code ends in `.ts`.

In fact, since any valid JavaScript is also TypeScript (types are optional), to convert a JavaScript file to TypeScript, we can just replace `.js` with `.ts`[1]:

```ts
// enki.ts
let name = 'Enki';

console.log(`${name} is cool!`);
```

The conversion back from TypeScript to JavaScript has an extra step (called "compilation"). To get JavaScript, we first have to remove any TypeScript-specific code that isn't valid in JavaScript. This step is done with the TypeScript Compiler (called `tsc`):

```bash
tsc enki.ts
```

This will compile a TypeScript file `enki.ts` into a JavaScript file `enki.js`:

```js
// enki.js
let name = 'Enki';

console.log(`${name} is cool!`);
```

---
## Practice

The technical term for converting TypeScript code into JavaScript is ???.

* compilation
* conversion
* transformation
* manipulation

---
## Revision

To compile a TypeScript file, you would write:

```bash
??? file.ts
```

* tsc
* ts
* jsc
* typescript

---
## Footnotes

[1:Interoperability with JavaScript]
This is a very important feature of TypeScript. In fact, a major reason for TypeScript's popularity is how easy it is for JavaScript developers to start using it.
