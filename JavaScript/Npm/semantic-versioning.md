# Semantic versioning
author: mihaiberq

levels:
  - beginner

type: normal

parent: package-json

category: must-know

---
## Content

It's almost always better to use the newest version of a package as it often offers fixes or improvements to its functionality. As a package maintainer it is important to communicate any changes made in a release as it may break code[1] depending on the package.

For package maintainers, there are some guidelines when it comes to versioning:
 - the first version should be *1.0.0*, though it's not a necessity
 - patch releases and bug fixes should increment the last number, *1.0.0* to *1.0.1*
 - minor releases and new features that don't break existing functionality should increment the middle number, *1.0.0* to *1.1.0*
 - major releases or changes which break backwards compatibility should increment the first number, *1.0.0* to *2.0.0*

You can specify which updates to the packages you would want to receive:
  - the latest patch: *1.0* or *1.0.x* or *~1.0.0*
  - the latest minor release: *1* or *1.x* or *^1.0.0*
  - the latest major release: *\* or *x*

---
## Practice

What is a valid syntax for specifying the latest minor release starting off *3.0.3*?

???

* ^3.0.3
* ~3.0.3
* 3.0.x
* x

---
## Revision

From the perspective of a package maintainer, incrementing the rightmost number in the version means

???

* bug fixes
* new stable feature
* new experimental feature

---
## Footnotes

[1: Breaking change]
The term "breaking change" is usually used to indicate a change to a function or to code that will be incompatible with older code.
