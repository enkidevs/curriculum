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

It has always been possible in JavaScript to use array syntax to access object properties e.g.

```
myObj["name"]; //enki
```

This was a useful feature as allows developers to specify property names at runtime.

With ES6 property names can now even be expressions themselves for example:

```
var myPropName = "blah";

var o = {
  [prop]: "a",
  ["this" + "is" + "property"]: "b",
["a" + 1+2]: "c"
};
```

---