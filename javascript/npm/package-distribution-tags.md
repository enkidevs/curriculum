# Package distribution tags
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

parent: check-data-about-a-package

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/dist-tag){website}'



---
## Content

Distribution tags are used to provide an alias instead of version number for packages.

They are more human readable and allow the user to clearly differentiate between for example streams of development (e.g. `beta`, `latest`, `next`, `stable`).

To add a tag to your package:
```bash
$ npm dist-tag add <pkg>@<version> [<tag>]
```
This will tag the version of the package with the `<tag>`, or the `--tag` config if it's not specified.

You can also remove a tag:
```bash
$ npm dist-tag rm <pkg> <tag>

```
To list all the tags for a package:
```bash
$  npm dist-tag ls [<pkg>]
```

These tags can be used on installing packages:
```bash
$ npm dist-tag add enki stable
$ npm install enki@stable
```

It's advised not to use tags that begin with numbers or the letter `v`  as they may be interpreted as **semVer** syntax.

---
## Practice

Complete the code snippet to add a tag to your package:

```
$ npm dist-tag ???
    <pkg>@<version> [<???>]
```
*`add`
*`tag`
*`new`
*`version-tag`
*`0.0.1`
*`publish`

---
## Revision

List all the tags for a package:
```bash
$ npm ??? ??? [<pkg>]
```

*`dist-tag`
*`ls`
*`rm`
*`--tag`
*`add`
*`tags`
