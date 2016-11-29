# Reduce package duplication 
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/dedupe){website}'

---
## Content

Running the simple command:
```bash
$ npm dedupe
// npm ddp also works
```
`npm` will search the local package tree and will attempt to move dependencies further up the tree as to simplify the overall structure. 

In this case, dependencies could be more effectively shared by different dependent packages.

If we have the following dependency tree:
```bash
myPackage
+-- a <-depending on dep@2.5.x
|    `--dep@2.5.1
`-- b <-depending on dep@2.5.9
     `--dep@2.5.9

```
running `npm dedupe` will transform it to:
```bash 
myPackage
+-- a
+-- b
`-- dep@2.5.9
```  

Keep in mind that this command will only transform the dependency tree, yet it will never install additional modules.