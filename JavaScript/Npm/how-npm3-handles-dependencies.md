# How npm3 handles dependencies
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: feature

parent: deprecated-peer-dependencies

---
## Content

The main reason why a change to the installation pattern was needed is because of the potential for deep nesting: when multiple packages depend on PackageA each would have the PackageA installed as one of their node_modules. This is not scalable.

*npm3* tries to fix it by flat installing the same version of PackageA other packages are using. For example, PackageB and PackageC depend on versions 1.0.0 and 1.1.0, respectively, of PackageA. For the following *package.json*:
```javascript
// project
dependencies {
  "PackageB": "2.3.2",
  "PackageC": "0.1.1"
}
// PackageB
dependencies {
  "PackageA": "1.0.0"
}
// PackageC
dependencies {
  "PackageA": "1.1.0"
}
```
The *node_modules* directory tree looks like this:
```bash
/node_modules
|- PackageB@2.3.2
|- PackageA@1.0.0
|- PackageC@0.1.1
  |- PackageA@1.1.0
```
As you can see, multiple versions of the same package cannot be installed inside the same folder, so they must be nested. It may not seem like much in this example, but think of a project with more than 50 dependencies: the difference is huge.

What do you think would happen with the project's *node_modules* structure if the *package.json* order of dependencies changes?
```javascript
// project
dependencies {
  "PackageC": "0.1.1",
  "PackageB": "2.3.2"
}
```
The structure will also change:
```bash
/node_modules
|- PackageC@0.1.1
|- PackageA@1.1.0
|- PackageB@2.3.2
  |- PackageA@1.0.0
```
It doesn't seem like much, but be aware of this behavior as it might cause *not working on my machine* bugs.

---
## Practice

What is the main difference between how npm2 and npm3 handles dependencies?

???

* `node_modules` structure depends on the declaration order
* dependencies are always updated to their latest version
* dependencies can be locked to at specific version

---
## Revision

Flat installing dependencies of dependencies is a feature of ???.

* npm3
* npm2
* npm1
