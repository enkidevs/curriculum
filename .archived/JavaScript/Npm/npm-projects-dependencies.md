# npm projects dependencies
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/files/package.json#dependencies){website}

---
## Content

`npm` encapsulates different properties of a package in the `package.json` file. This is where all dependencies are specified, either automatically when installed or manually. 

These **dependencies** are specified in a simple object that maps the package (dependency) name to the version.

Sample dependencies:
```json
{
  "dependencies": {
    "mydep": "3.2.1",
    "enki": "1.0.0 - 1.0.3",
    "xyz": "^1.2.3",
    "abc" : "http://myurl.com/dep.tar.gz",
    "def" : "2.x",
    "ghi" : "latest"
  }
}

```
Versions can be specified in many ways: 
by specifying the exact version, by using comparison operators (`<=`, `>`, `~`, `^`) or even by a tag. 

In addition, the `*` and ` "" ` characters will specify that the dependency will match any version.

**Tarball** format URLs can be also specified in place of the version range. They will be downloaded and installed locally during install time as well as **local paths**, **Git** and **GitHub URLs**.