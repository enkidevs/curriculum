# Functional components
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: what-is-state

links:


 - >-
   [facebook.github.io](https://facebook.github.io/react/docs/components-and-props.html){website}

---
## Content

As stated before, **React** components behave just like functions, taking `props` as input and returning **React elements**. 

Simple `component`s that don't have an internal `state` and don't make use of any **lifecycle** methods such as `constructor()` can be written as **functional components**.

Consider the component:
```jsx
class Enki extends React.Component {
  render() {
    return <p>{this.props.enki}</p>;
  }
}
```

A **stateless** component is **functional** when written literally as a `JS` function:
```jsx
function Enki(props) {
  return <p>{props.enki}</p>;
}
```

The two components defined above are completely equivalent from **React**'s point of view.

**Functional components** are preferred for **UI** because they enforce the best practice of having *dumb presentational components*, but also require less typing (e.g. no `this` keyword).

---
## Practice

Complete the second code snippet such that it's equivalent to the first:
First:
```jsx
class Test extend React.Component {
  render() {
    return <h1>{this.props.test}
  }
}
```
Second:
```jsx
??? Test(???) {
  ??? <p>???</p>;
}
```

* `function`
* `props`
* `return`
* `{props.test}`
* `{this.props.test}`
* `render`
* `state`
* `func`
* `props.test`
* `test`
* `this.props.test`

---
## Revision

When can a component be written as a `function`?

When it has ???.

* no `state` and **lifecycle methods**
* no `state`
* no **lifecycle methods**
* no `props`
