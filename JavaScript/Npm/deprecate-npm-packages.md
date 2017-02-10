# Deprecate npm packages
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

parent: check-data-about-a-package

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/deprecate){website}'


---
## Content

Using the simple `npm deprecate` command you can deprecate versions of published packages. This only works if you are the **owner** of the specified package.
```bash
npm deprecate jQuery "This is deprecated"
```
Keep in mind that a message must be also specified after the package name/version.

Version ranges can also be specified:
```bash
npm deprecate jQuery@"<0.1.2" "Bug fixed"
```

This will deprecate every version that is smaller than `0.1.2` of the specified package (`jQuery` in this case).

Packages can also be un-deprecated by specifying an empty string as the message:
```bash
npm deprecate jQuery@"<0.1.2" ""
```

Deprecation makes sure that users installing such packages are informed though warning/s about it being deprecated.

---
## Practice

How do you un-deprecate `enki` package?

```
$ npm ??? enki ???
```

* `deprecate`
* `""`
* `un-deprecate`
* `"un-deprecated Enki`
* `"any message"`

---
## Revision

How do you un-deprecate `enki` package?

```
$ npm ??? enki ???
```

* `deprecate`
* `""`
* `un-deprecate`
* `"un-deprecated Enki`
* `"any message"`
