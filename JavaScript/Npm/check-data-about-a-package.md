# Check the details of a package
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: feature

parent: how-to-publish-your-own-packages

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/view)'

---
## Content

You can get details about your package or other packages using:
```bash
$ npm view npm
```
The *latest version* of the package is targeted by default. However, older versions can be specified as well:
```bash
$ npm view npm@4.0.0
```
The output of the command contains an exhaustive list of contributors, maintainers, versions and their release date, and other useful information like a presentational website of the package or its git repository link.

Any particular field can be retrieved by extending the initial command with the field's name:
```bash
$ npm view npm contributors
# or
$ npm view npm homepage
```
The output of the *npm view* command is structured like a *JavaScript* object, so you could get nested data as such:
```bash
$ npm view npm repository
{type: 'git',
url: 'git+https://github.com/npm/npm.git'}

$ npm view npm repository.url
git+https://github.com/npm/npm.git
```
To obtain the data in **JSON** format instead of JavaScript object literal, use `--json` flag.

---
## Practice

Complete the command in order to get the dependencies for version `1.2.3` of package `enki`:
```bash
$ npm ???
    enki???1.2.3 ???
```
* `view`
* `@`
* `dependencies`
* `--json`
* `list`
* `npm`

---
## Revision

Complete the command to retrieve the contributors to the *npm* package:
```
$ ??? ??? npm ???
```
* `npm`
* `view`
* `contributors`
* `@contributors`
* `ls`
