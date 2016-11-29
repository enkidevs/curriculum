# View specific fields of npm packages
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/view){website}'

---
## Content

The `npm view` command will print by default to `stdout` data about specified packages.

Get the package **registry entry** of a published package:
```bash
npm view enki
```
Without specifying, the output will reflect data from the *latest version* of the package. However, version can also be specified.

Get dependencies of a specific version:
```bash
npm view enki@1.3.4 dependencies
``` 

Get the git repository URL:
```bash
npm view enki repository.url
```
Multiple fields can be specified:
```bash
npm view enki contributors.name \n
  contributors.email
```

To output object in **JSON** format instead of JavaScript object literal, the `--json` flag can be used.

---
## Practice

Complete the code in order to get the dependencies for version `1.2.3` of package `enki`:
```bash
npm ??? enki???1.2.3 ???
```

*`view`
*`@`
*`dependencies`
*`--json`
*`list`
*`npm`

---
## Revision

Complete the code in order to get the dependencies for version `1.2.3` of package `enki`:
```bash
npm ??? enki???1.2.3 ???
```

*`view`
*`@`
*`dependencies`
*`--json`
*`list`
*`npm`