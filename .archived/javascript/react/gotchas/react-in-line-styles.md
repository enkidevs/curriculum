---
author: catalin

levels:
  - basic
  - beginner

type: normal

category: must-know

links:
  - '[facebook.github.io](https://facebook.github.io/react/docs/dom-elements.html#style){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - workout
  - deep

---
# **React** in-line styles

---
## Content

In **React** in-line styling is not done by specifying a string, but by creating an object with the needed value for the style.

The object name represents the name of the style and should be written in *camelCase* format.

Create the style object:

```javascript
var divStyle = {
  color : 'white',
  WebkitTransition: 'all',
  msTransition: 'all'
};
```

All style keys are *camelCased* to provide consistency, yet vendor prefixes should begin with capital letters ( `ms` is the only exception).

Apply the style:

```javascript
ReactDOM.render(<div style={divStyle}>
  Hello World!</div>, myNode);
```

The style object can also be created from `state` or `props` of a component!

---
## Practice

Consider the following style object:

```javascript
var pStyle = {
  fontSize: 15,
  color: 'black'
}
```

How would you pass it to the following `<p />`?

```javascript
ReactDDOM.render(
  <p ??? ??? ???>Enki!</p>,
aNode)
```

* style
* =
* {pStyle}
* pstyle
* :
* pStyle
* s
* applyStyle
* useStyle
* {style}

---
## Revision

Fill in the following `style` object that's meant to be passed to a React element:

```javascript
var style = {
  color: 'white',
  ???: 'all',
  ???: 'all'
}
```

* WebkitTransition
* msTransition
* ms-transition
* webkit-transition

