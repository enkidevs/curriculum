---
author: mihaiberq
type: normal
category: feature
tags:
  - workout
  - deep
  - new
links:
  - >-
    [docs.npmjs.com](https://docs.npmjs.com/getting-started/scoped-packages){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scoped packages


---

## Content

Since *npm* started supporting scoping, multiple packages can have the same name while they are under a different **scope** (that acts like a namespace).

The naming convention for scopes is the same as with package names: **url-safe characters**, **no leading dots or underscores**. Scopes are prefixed by the `@` symbol, followed by a `/` and the whole construct precedes the package name:

```javascript
@myscope/mypackagename
```

This syntax must be used when trying to `install` a package or specify a package in *package.json*:

```bash
npm install @myscope/mypackagename
```

```json
//package.json
"dependencies: {
  "@myscope/mypackagename: "~1.3.3"
}
```

To initialize a scoped package, the scope must be specified in the package name:

```json
{
  "name": "@myscope/myprojectname"
}
```

`--scope` flag for `npm init` also works:

```bash
npm init -scope=myscope
```

To use a scoped package you need to `require` it using the scoped name:

```javascript
var scopedPackage =
  require('@myscope/somePackage');
```


---

## Practice

How would you initialize an npm project within the `@enki` scope?

```bash
??? ??? ???=???
```

- npm
- init
- -scope
- enki
- install
- --global
- @enki
- -s
- node


---

## Revision

A scoped package's name is preceded by ???.

- @scope/
- scope/
- @/
- nothing
