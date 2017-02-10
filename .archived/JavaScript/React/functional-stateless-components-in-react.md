# Functional Stateless Components in React
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

tags:

  - react-0.14

links:

  - >-
    [medium.com](https://medium.com/@joshblack/stateless-components-in-react-0-14-f9798f8b992d#.dcuogm7p5){website}

---
## Content

Any **React** component that has no state and returns the same markup given the same `props` is known as a **stateless** component.

In React 0.14 stateless components can be written as **functions**. 

In the new syntax `props` is taken as an argument and the element you want to render is returned. The pattern is:
```jsx
const Text = (props) => 
    <p>{props.children}</p>;
```

Stateless components are likely to represent a large portion of your app.

---
## Revision

When is a component considered stateless?

???

*When it has no state.
*When it has no props.
*When it's a function.
