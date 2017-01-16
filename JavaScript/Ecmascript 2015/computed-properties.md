# Computed Properties
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

You have probably used array syntax to access an objects properties before e.g.

```
myObj["name"]; //enki
```

This is useful as allows the specification of property names at runtime.

With ES6 property names can now even be expressions themselves:

```
var myPropName = "blah";

var o = {
 [prop]: "a",
 ["this" + "is" + "prop"]: "b",
 ["a" + 1+2]: "c"
};
```

---