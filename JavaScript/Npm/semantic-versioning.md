# Semantic versioning
author: mihaiberq

levels:
  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-


---
## Content

It's almost always better to use the newest version of a package as it fixes or improves its functionalities. However, it is important to communicate what kind of changes happened in the latest release as they may break the code depending on the package.

For publishers, there are some guidelines when it comes to versioning:
 - the first version should be *1.0.0*, though it's not a necessity
 - patch releases and bug fixes should increment the last number, *1.0.0* to *1.0.1*
 - minor releases and new features that don't break the already existing code should increment the middle number, *1.0.0* to *1.1.0*
 - major releases or changes which break backwards compatibility should increment the first number, *1.0.0* to *2.0.0*

Because the publisher versioning is somehow regulated, you can specify which updates to the packages you would want to receive:
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

From a publisher perspective, incrementing the last number in the version means

???

* bug fixes
* new stable feature
* new experimental feature
