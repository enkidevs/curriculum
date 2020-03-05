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

We have promised you some TypeScript code, and here it is:

```ts
// hello.ts
const hello = (name: string) => {
  console.log(`Hello ${name}!`)
}

let myName = 'Andrei';
hello(myName);
```

When running `tsc hello.ts` in the shell, a new file `hello.js` is created, and these are its contents:

```js
// hello.js
var hello = function (name) {
    console.log("Hello " + name + "!");
};
var myName = 'Andrei';
hello(myName);
```

Depending on your application, this might be enough or you might want to run the `.js` file using node. In the latter case, instead of running two separate commands, you can install the [ts-node package](https://www.npmjs.com/package/ts-node) and let it do the work for you.

With this package installed, you can run `ts-node hello.ts` and it will compile the TypeScript code, and run the resulting JavaScript file.

---
## Practice

To **compile** TypeScript code, you have to run the following command:

```bash
??? file.ts
```

To **compile and run** a JavaScript file, you have to run the following commands:

```bash
tsc file.ts
??? ???
```

* tsc
* node
* file.js
* ts
* ts-node
* file.ts