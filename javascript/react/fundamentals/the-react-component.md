---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/components-and-props.html){website}'

parent: the-react-element

aspects:
  - introduction

---

# The **React** component

---
## Content

In **React**, a `component` represents a fundamental *class* you can work with to build re-usable and independent `UI` blocks.

These `component`s behave like simple functions, they can take input arguments called `props` and will return what should be *rendered*.

The *rendered* output needs to be specified inside a function called `render()`.

To create a component you can `extend` the `ES6`[1] class `React.Component`:

```
class Enki extends React.Component {
  render() {
    return <p>Enki aka Ea</p>;
  }
}
```

You can pass dynamic values to a component via `props` which will be discussed next. In addition, you can use other components when `render`ing.

`Component` names should start with a capital letter such that you can differentiate them from **DOM tags**.

An `element` can represent your `component` as well:
```
const element = <Enki />;
```
Giving you the means to `render` it:
```
ReactDOM.render(
  element,
  document.getElementById('root')
);
```
Because our `component` didn't use any input (`prop`) we didn't need to specify those values in the `element`.

---
## Practice

Complete the missing gaps such that a `component` is defined using `ES6` syntax:

```jsx
??? MyComponent ??? React.??? {
  ???() {
    return <h1>Hello, World!</h1>;
  }
}
```


* `class`
* `extends`
* `Component`
* `render`
* `return`
* `Enki`
* `createElement`

---
## Revision

Complete the missing gaps such that a `component` is defined using `ES6` syntax:
```jsx
class MyComponent extends React.??? {
  ???() {
    return <h1>Hello, World!</h1>;
  }
}
```

* `Component`
* `render`
* `return`
* `Enki`
* `createElement`

---
## Footnotes
[1:ES6 alternative]

If you use **React** with legacy (pre-ES6) syntax you can create components with the `createReactClass` helper from the `create-react-class` module:

```jsx
var Enki = React.createClass({
  render: function() {
    return <p>Enki aka Ea</p>;
  }
});
```

However, it is recommended to use the modern syntax to keep up with the current standard and have access to the latest features.