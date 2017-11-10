# Manipulate npm packages cache
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: check-data-about-a-package

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/cache){website}'

---
## Content

The `npm cache` utility is used to **add**, **list** or **clear** the npm cache folder.


This proves useful as a drop-in **faster** replacement for build scripts that run install commands (e.g. `npm install` / `bower install`) because dependencies don't frequently change.

The `npm cache add` command adds a package to the local cache. The primary intention of this command is to be used internally by `npm`, but it also provides a way of explicitly adding data to the local installation cache.
```bash
$ npm cache add myFolder
$ npm cache add myTarballUrl
$ npm cache add myPackage@myVersion
```

To show data in the cache, `ls ` can be used:
```bash
$ npm cache ls [myPath]
```

To clear data from the cache:
```bash
$ npm cache clean [myPath]
```

If no argument is provided, the entire cache will be deleted.

`npm` stores data in the directory specified in:
```bash
$ npm config get cache
```
