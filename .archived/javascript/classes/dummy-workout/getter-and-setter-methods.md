---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - object

  - classes

  - getter

  - setter

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects){website}

---
# Getter and setter methods

---
## Content

Getter and setter methods return or set the value of a property of an object respectively.

To define a getter or setter method, the method should be prefixed with either `get` or `set`. For example:

```
var o = {
  _val: 0,
  get val() {
    console.log('getting ' + this._val);
    return this._val;
  },
  set val(x) {
    console.log('setting ' + x);
    this._val = x;
  }
};
```

In this example, `val()` is a getter method and `val(x)` is a setter method, both with the side effect of logging to console.

These getters and setters can be used silently, as if `o` was a standard object with a `val` field:

```
o.val     //> getting 0
o.val = 3 //> setting 3
o.val     //> getting 3
```

---
## Revision

Complete the getter/setter pattern in the code below:
```javascript
var enki = {
  _val = 0,
  ??? val() {
    return this._val;
  },
  ??? val(x) {
    this._val = x;
  }
};
```

* get
* set
* .
* getter
* setter