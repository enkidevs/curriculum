# `optionalDependencies` in npm
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: check-data-about-a-package

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/files/package.json#optionaldependencies){website}


---
## Content

`optionalDependencies` object in `package.json` file can be used to specify dependencies that are not **necessarily needed**.

If `npm` can't find or fails to install the dependency, the installation of your whole module will continue.

```javascript
//package.json
{ //other props
  "optionalDependencies": {
    "enki" : "1.x"
  }
  //other props
}
```

Keep in mind that is still the user's responsibility to handle the lack of the dependency:
```javascript
try {
  var enki = require('enki');
  var enkiVer =
    require('enki/package.json').version;
} catch (error) {
  enki = null;
}
// later in the code
if (enki) {
  enki.enkiMethod();
}

```

It is better to put a dependency name just in one place as `optionalDependencies` will override entries with the same name in `dependencies`.

---
## Practice

If *npm* cannot find or fails to install the dependency the installation of the module continues, however what is required from the user? ???
* A try catch to handle the lack of the dependency.
* A printed error statement.
* An alternative way for the module to run without said dependency.

---
## Revision

In what object of `package.json` can dispensable dependencies be specified?

???

* `optionalDependenceis`
* `peerDependencies`
* `devDependenceis`
* `dependencies`
