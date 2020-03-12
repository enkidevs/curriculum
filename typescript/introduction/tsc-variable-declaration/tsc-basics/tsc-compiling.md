---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[ts-node](https://www.npmjs.com/package/ts-node){website}'

---

# Compiling Code

---
## Content

As we have previously mentioned, all the TypeScript code that you write needs to be compiled to JavaScript before it can be ran. Here is how you would do that:

```shell
tsc myScript.ts
```

If you wanted to test your script, you would have to first compile the code, and then run it using Node.js. To overcome this, you can install the `ts-node` package, which will do just that. To install it, use:

```shell
npm i ts-node
```

Now, to run your script you would only have to use the following line:

```shell
ts-node myScript.ts
```

And `ts-node` will do all the work for you.

---
## Practice

Compile the `myScript.ts` file:

```shell
??? myScript.ts
```

* tsc
* ts
* typescript
* ts-node