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

  - '[Components and props](https://facebook.github.io/react/docs/components-and-props.html){website}'

parent: the-react-element

aspects:
  - introduction

---

# The React Component

---
## Content

In **React**, a component represents a fundamental *unit of logic* you can work with to build re-usable and independent `UI` blocks. These blocks can be anything you see in a UI: a button, a header with an image, a list of links, etc.

React components are functions that take input arguments called `props` and return what should be *rendered*. We will explain what `props` are in the next insight.

If you want to create a component, you can use a JavaScript function like this:

```jsx
// function component
function Enki() {
  return <p>Enki aka Ea</p>;
}
```

Alternatively, you can `extend` the `React.Component` class to create a component[1]. In this case, the *rendered* output needs to be returned from a method called `render()`:

```jsx
// class component
class Enki extends React.Component {
  render() {
    return <p>Enki aka Ea</p>;
  }
}
```

Notice how both types of components are used to return elements (e.g. `<p>Enki aka Ea</p>` is a React element).

The differences between function and class components will be discussed at the end of this workout, but for now know that, when viewed externally, each way of writing a component can render the same result.

Note: Component names should start with a capital letter such that you can differentiate them from **DOM tags**.

---
## Practice

Complete the missing gaps such that `<MyComponent>` is defined using class syntax:

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
## Revision

Complete the missing gaps such that `MyComponent` is defined using class syntax:

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