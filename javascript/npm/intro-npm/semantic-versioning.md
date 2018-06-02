---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

parent: package-json

standards:
  javascript.npm-publish.3: 10
  javascript.use-open-source-javascript-packages.1: 10

tags:
  - introduction
  - workout
  - deep
---

# Semantic versioning

---

## Content

It's almost always better to use the newest version of a package as it often offers fixes or improvements to its functionality. As a package maintainer it is important to communicate any changes made in a release as it may break code[1] depending on the package.

For package maintainers, there are some guidelines when it comes to versioning:

- the first version should be _1.0.0_, though it's not a necessity
- patch releases and bug fixes should increment the last number, _1.0.0_ to _1.0.1_
- minor releases and new features that don't break existing functionality should increment the middle number, _1.0.0_ to _1.1.0_
- major releases or changes which break backwards compatibility should increment the first number, _1.0.0_ to _2.0.0_

You can specify which updates to the packages you would want to receive:

- the latest patch: _1.0_ or _1.0.x_ or _~1.0.0_
- the latest minor release: _1_ or _1.x_ or _^1.0.0_
- the latest major release: *\* or *x\*

---

## Practice

What is a valid syntax for specifying the latest minor release starting off _3.0.3_?

???

- ^3.0.3
- ~3.0.3
- 3.0.x
- x

---

## Revision

From the perspective of a package maintainer, incrementing the rightmost number in the version means

???

- bug fixes
- new stable feature
- new experimental feature

---

## Footnotes

[1: Breaking change]
The term "breaking change" is usually used to indicate a change to a function or to code that will be incompatible with older code.
