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

# The React component

---
## Content

In **React**, a component represents a fundamental *unit of logic* you can work with to build re-usable and independent `UI` blocks.

These components behave like simple functions, they can take input arguments called `props` and will return what should be *rendered*.

If you want to create a simple component, you can use a JavaScript function like this:

```jsx
// functional component
function Enki(props) {
  return <p>Enki aka Ea</p>;
}
```

At the same time, you can also `extend` the `ES6`[1] class `React.Component` to create a component. In this case, the *rendered* output needs to be returned from a method called `render()`:

```jsx
// class component
class Enki extends React.Component {
  render() {
    return <p>Enki aka Ea</p>;
  }
}
```

The differences between functional and class components will be discussed at the end of this workout, but for now know that, when viewed externally, each way of writing a component can render the same result.

You can pass dynamic values to a component via `props` which will be discussed next. 

Component names should start with a capital letter such that you can differentiate them from **DOM tags**.

You can use other components when `render`ing, and a React element can represent your component as well:

```jsx
class Enki extends React.Component {
  render() {
    return <Welcome />;
  }
}

const element = <Enki />;
```

Giving you the means to `render` it:

```jsx
ReactDOM.render(
  element,
  document.getElementById('root')
);
```
Because our component didn't use any input (`prop`) we didn't need to specify those values in the element.

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