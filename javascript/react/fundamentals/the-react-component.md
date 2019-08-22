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

In **React** a `component` represents a fundamental *class* you can work with to build re-usable and independent `UI` blocks.

These `component`s behave like simple functions, they can take input arguments called `props` and will return what should be *rendered*.

If you want to create a simple component, you can use a JavaScript function like this:

```jsx
// functional component
function Enki(props) {
  return <p>Enki aka Ea</p>;
}
```

At the same time, you can also `extend` the `ES6`[1] class `React.Component` to create a component. In this case, the *rendered* output needs to be specified inside a function called `render()`:

```jsx
// class component
class Enki extends React.Component {
  render() {
    return <p>Enki aka Ea</p>;
  }
}
```

The differences between functional and class components will be discussed at the end of this workout, but for now know that React views both of the components defined above as being the same.

You can pass dynamic values to a component via `props` which will be discussed next. 

`Component` names should start with a capital letter such that you can differentiate them from **DOM tags**.

You can use other components when `render`ing, and an `element` can represent your `component` as well:

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
* `createClass`
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
* `createClass`
* `createElement`

---
## Footnotes
[1:ES6 alternative]

If you don't use **React** with `ES6` syntax you can create components with the `React.createClass` helper:
```
var Enki = React.createClass({
  render: function() {
    return <p>Enki aka Ea</p>;
  }
});
```

