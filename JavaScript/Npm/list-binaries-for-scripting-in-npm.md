# List binaries for scripting in npm
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

links:

  - >-
    [www.marcusoft.net](http://www.marcusoft.net/2015/08/npm-scripting-configs-and-arguments.html#npm-completion){website}

---
## Content

Multiple packages installed through `npm` have binaries that let the user run them directly from the command line.

A clear example is `nodemon` package that, after installation, lets the user use the `nodemon` command.

These binaries can also be used when defining and writing scripts inside `package.json` file.

As `npm` will add these binaries to the `./node_modules/.bin/` folder, you can list
files in this folder to see what binaries you can use.
```bash
$ ls ./node_modules/.bin/
_mocha    jslint    nodemon
coffee    mocha     tsc
```

---
## Practice

List the files in the folder to see what binaries you can use:
```
$ ??? ./???/???/
```

*`ls`
*`node_modules`
*`.bin`
*`bin`
*`binaries`
*`script`
*`print`

---
## Revision

List all binaries used for scripting installed through `npm`:
```bash
$ ??? ./node_modules/???/
```

*`ls`
*`.bin`
*`bin`
*`binaries`
*`script`
*`print`
