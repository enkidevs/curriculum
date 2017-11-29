# Create projects with `npm init`
author: catalin

levels:

  - basic

  - beginner

type: normal

category: best practice

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/init){website}'

---
## Content

A good way to create your **Node** projects using the bundled **npm** tool is by using `npm-init`.

Basic syntax:
```bash
npm init 
```

This command will generate your project by creating the necessary `package.json` file, making **npm** able to learn about it.

You will be prompted to enter the value of certain fields in the `package.json` file such as `name`, `version` or `entry point` (first `.js` file to be run).

By using one of the `-f`, `--force` , `-y` or `--yes` flags you may skip the prompting and use the default values.
```bash
npm init -f
```

---
## Revision

Create a `node` project skipping prompting and using default values:
```bash
??? ??? ???
```

*`npm`
*`init`
*`-f`
*`-d`
*`-s`
*`create`
*`new`
*`node`