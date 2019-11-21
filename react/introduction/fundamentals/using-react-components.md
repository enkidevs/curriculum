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

  - '[facebook.github.io](https://facebook.github.io/react/docs/components-and-props.html){website}'

parent: the-react-element

aspects:
  - introduction

---

# Using React Components

---
## Content

Let's demonstrate how you can use React components
You can use other components when `render`ing, and a React element can represent your component as well:

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