# Bump package version in npm
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: check-data-about-a-package

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/version){website}'


---
## Content

The `npm version` command, when ran in a package directory, will bump the version.

As an argument, the new version can be specified with a valid **semver** string:
```bash
npm version 1.2.3
```
Instead of specifying the whole version, a specific **semver** argument can be specified which will increment the field by 1:
```bash
# assume current version is 1.2.3
$ npm version major
# new version will be 2.2.3
$ npm version minor
# new version will be 2.3.3
$ npm version patch
# new version will be 2.3.4

```

`from-git` can be passed as an argument which will read the latest git tag and use it as the latest npm version:
```bash
$ npm version from-git
```
Used inside a **git repository**, a version commit and tag will also be created. To avoid this use:
```bash
$ npm --no-git-tag-version version
```

Using the `-m` or `--message` config flag, the specified message will become the commit message. `%s` is replaced by the resulting version number:
```bash
$ npm version patch -m "New version is %s"
```

---
## Practice

Fill the gap such that the resulted version of your package will be the same as the one specified:
```bash
# assume current version is 3.2.5
$ npm version ???
# new version will be 3.3.5
```

* `minor`
* `major`
* `patch`

---
## Revision

Fill the gap such that the resulted version of your package will be the same as the one specified:
```bash
# assume current version is 3.2.5
$ npm version ???
# new version will be 3.3.5
```

* `minor`
* `major`
* `patch`
