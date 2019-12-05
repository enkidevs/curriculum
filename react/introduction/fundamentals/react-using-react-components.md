---
author: kapnobatai136

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

# Using React Components

---
## Content

Because JSX is flexible, you can combine multiple components to build larger reusable UI elements. For example, you can have a `<Table />` component which is made up of multiple `<Row />` components.

Here are all the possible ways a component can be used:

```jsx
// we create a component 
// that renders 'Welcome'
function Welcome() {
  return <h1>Welcome</h1>;
}

// and we can return 
// <Welcome /> anywhere
class Enki extends React.Component {
  render() {
    return <Welcome />;
  }
}

// we can also use any components
// to create elements
const element = <Enki />;
```

Giving you the means to `render` it:

```jsx
ReactDOM.render(
  element,
  document.getElementById('root')
);
```

![Output](https://img.enkipro.com/84ccc39477c757f45fa88f897d4c2fc7.png)

It is important to remember the difference between components and elements. The React component is used to **return** React elements.

---
## Practice

Which of the following represents a valid syntax?

```jsx
function Greet() {
  return <p>Hey</p>;
}

function Enki() {
 return <Greet />
}
```

???

* Both.
* None.
* `<Greet />`
* `<Enki />`