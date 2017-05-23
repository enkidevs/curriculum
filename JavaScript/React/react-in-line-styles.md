# **React** in-line styles
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/inline-styles.html){website}

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
