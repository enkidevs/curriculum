---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[ts-node](https://www.npmjs.com/package/ts-node){website}'

---

# Hello TypeScript

---
## Content

We promised you some TypeScript code, and here it is:

```ts
// hello.ts
const hello = (name: string) => {
  console.log(`Hello ${name}!`)
}

hello('Andrei');
```

When running `tsc hello.ts` in the shell, TypeScript code is converted (compiled) into JavaScript and a new file `hello.js` is created:

```js
// hello.js
var hello = function (name) {
    console.log("Hello " + name + "!");
};
hello('Andrei');
```

Once you have the JavaScript code, you can run it wherever JavaScript can run (any Node.js or browser environment).

To compile TypeScript to JavaScript and run the generated JavaScript as a single step, we can use the [ts-node package](https://www.npmjs.com/package/ts-node).

```sh
# convert hello.ts from
# Typescript to JavaScript
# and run the created JavaScript
ts-node hello.ts
```

---
## Practice

To **compile** a TypeScript file called `enki.ts` into a JavaScript `enki.js`, you have to run the following command:

```bash
??? file.ts
```

* tsc
* ts-node
* ts
* typescript

---
## Revision

To **compile and run** a TypeScript file called `enki.ts`, you can use the following NPM package:

```bash
??? enki.ts
```

* ts-node
* ts
* typescript
* tsc
