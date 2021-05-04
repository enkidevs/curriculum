---
author: catalin
type: normal
category: feature
tags:
  - workout
  - deep
  - new
links:
  - '[docs.npmjs.com](https://docs.npmjs.com/cli/cache){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Manipulate npm packages cache


---

## Content

The `npm cache` utility is used to **add**, **list** or **clear** the npm cache folder.

This proves useful as a drop-in **faster** replacement for build scripts that run install commands (e.g. `npm install` / `bower install`) because dependencies don't frequently change.

The `npm cache add` command adds a package to the local cache. The primary intention of this command is to be used internally by `npm`, but it also provides a way of explicitly adding data to the local installation cache.

```bash
npm cache add myFolder
npm cache add myTarballUrl
npm cache add myPackage@myVersion
```

To show data in the cache, `ls` can be used:

```bash
npm cache ls [myPath]
```

To clear data from the cache:

```bash
npm cache clean [myPath]
```

If no argument is provided, the entire cache will be deleted.

`npm` stores data in the directory specified by:

```bash
npm config get cache
```


---

## Practice

How can you clear your npm cache?

```bash
??? ??? ???
```

- npm
- cache
- clean
- clear
- get
- config
- cache-clean


---

## Revision

How can you get the path to your npm cache?

```bash
??? ??? ??? ???
```

- npm
- config
- get
- cache
- path
- local
- pathTo
- isAt
- getPath
- ls
