# Shallow compare in **React**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

notes: |-
  probably best in the same workout with :
  https://insights.enki.com/#/contrib/56aa0290bd6a4609006eaee3

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/shallow-compare.html){website}

---
## Content

A performance boost can be achieved with the helper function `shallowCompare` when used on a **React** component render function that is *"pure"*.

The same functionality of `PureRenderMixin` can be achieved while using **ES6** classed with this helper function.

Import `shallowCompare`:
```javascript
var shallowCompare = require(
  'react-addons-shallow-compare');
```

Use shallow compare:
```javascript
export class SampleComponent extends
                        React.Component {
shouldComponentUpdate(nextProps,nextState){
  return shallowCompare(this,
    nextProps,nextState);
  }
render() {
  return <div className={
    this.props.className}>foo</div>;
  }
}
```

A shallow equality check is performed on the current `props` and `nextProps`, but also on `state` and `nextState` objects, returning `true` if the comparison fails (component should update) and `false` otherwise.

---
## Practice

A ??? can be achieved with the helper function `shallowCompare` when used on a React component render function that is ???.

* performance boost
* pure
* successful check
* clean
* raw
* successful render

---
## Revision

Import `shallowCompare` into your React code:

```javascript
var shallowCompare = require('???');
```
* `react-addons-shallow-compare`
* `shallow-compare`
* `s-compare`
* `shallowcompare`
