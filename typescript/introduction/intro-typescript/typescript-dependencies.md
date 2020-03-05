---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# TypeScript Dependencies

---
## Content

Installing TypeScript is as easy as writing a line of code. Using Node's package manager, all you'd have to type is:

```bash
npm install -g typescript
```

The above command will install TypeScript as a global package and you can start using it anywhere. Whenever you write TypeScript code, this is have to go in a `.ts` file.

```ts
// enki.ts
let name = 'Enki';

console.log(`${name} is cool!`);
```

Note: this is plain JS code; in the following insight we will take a look at some TS code.

Because TypeScript is just a wrapper, all the code needs to be compiled to JavaScript:

```bash
tsc enki.ts
```

The result will be:

```js
// enki.js
let name = 'Enki';

console.log(`${name} is cool!`);
```

---
## Practice

TypeScript code is always compiled to ???.

* JavaScript
* Python
* Angular
* Go

---
## Revision

To compile a TypeScript file, you would write:

```bash
??? file.ts
```

* tsc
* ts
* jsc
* to tsc