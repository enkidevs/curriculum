# Publishing with npm
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/publish){website}'

---
## Content

Publishing packages to the `npm` registry is done via the `npm publish` command.
The package will contain all the files in a specified folder that are not included in either `.gitignore` nor `.npmignore` files.

Sample publishing:
```bash
npm publish myFolder
```

Instead of the folder specified (which must include the `package.json` file) a **tarball** URL or file can be passed as argument.

Specifying tags for the version published is done via the `--tag` flag:
```bash
npm publish myFolder --tag=myTag
```
To install the version with `myTag`:
```bash
npm install myFolder@myTag
```
Premium npm users can publish private packages with `--access` tag:
```bash
npm publish myFolder --access=restricted
```

Note that once a package is published with a given name and version, the name/version combination cannot be used ever again even if the package is `unpublished`.

---
## Practice

How do you publish the `enki` private package? 

```
npm ??? enki ???=???
```
* publish
* --access
* restricted
* install
* apt
* --tag
* open
* private

---
## Revision

How do you publish `enki` package with `awesome` tag?
```
??? ??? enki ???=awesome
```

* `npm`
* `publish`
* `--tag`
* `install`
* `apt`
* `--access`