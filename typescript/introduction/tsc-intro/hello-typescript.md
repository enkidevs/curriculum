---
author: kapnobatai136
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[ts-node NPM package](https://www.npmjs.com/package/ts-node){website}'
  - '[Try out the hello.ts example](https://repl.it/@enkicontent/TypeScriptHelloWorld){website}'
  - '[Zero-config CLI for TypeScript development](https://github.com/jaredpalmer/tsdx){website}'

---

# Hello TypeScript

---
## Content

Let's get started writing some TypeScript code:

```ts
// hello.ts
function hello(name: string) {
  console.log(`Hello ${name}!`)
}

hello('Andrei');
```

When running `tsc hello.ts` in the shell, TypeScript code is converted (compiled) into JavaScript and a new file `hello.js` is created:

```js
// hello.js
function hello(name) {
  console.log(`Hello ${name}!`);
};
hello('Andrei');
```

Once you have the JavaScript code, you can run it wherever JavaScript can run (any Node.js or browser environment).

To compile TypeScript to JavaScript and run the generated JavaScript as a single step, we can use the `ts-node` NPM package:

```sh
# convert hello.ts from
# Typescript to JavaScript
# and run the created JavaScript
ts-node hello.ts
```

---
## Practice

To **compile** a TypeScript file called `enki.ts` into a JavaScript file called `enki.js`, you have to run the following command:

```bash
??? enki.ts
```

* tsc
* ts-node
* ts
* typescript

---
## Revision

To **run** a TypeScript file called `enki.ts`, you can use the following command:

```bash
??? enki.ts
```

* ts-node
* ts
* typescript
* tsc
