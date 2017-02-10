# Keyed fragments in **React**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/create-fragment.html){website}

---
## Content

With two sets of children that need reordering, there is no way of putting a key on each set without adding a wrapper element.

To solve this problem, **React** provides the `createFragment` add-on which can give keys to sets of children.

```javascript
Array<ReactNode> createFragment(
    object children);

```

Instead of:
```javascript
children = [this.props.rightChildren,
    this.props.leftChildren];
```
This can be done like:
```javascript
var createFragment= require(
    'react-addons-create-fragment');

children = createFragment({
  right: this.props.rightChildren,
  left:this.props.leftChildren,
});
```

The `left`and `right` keys are used as keys for the entire set of children, and the rendering order is determined by the order of object's keys.

The return value of `createFragment`  is an opaque object and `React.Children` helpers should be used in order to access it.

In the future, `createFragment` may be replaced by a different **API** which should allow you assigning keys without a wrapper.

---
## Practice

Complete the `createFragment` add-on below which can give keys to sets of children:

```javascript
Array<ReactNode ???(
      object ???);
```

* `createFragment`
* `children`
* `create`
* `opaque`
* `props`
* `createProps`

---
## Revision

What type of object is returned by `createFragment`? ???

* An opaque object.
* A transparent object.
