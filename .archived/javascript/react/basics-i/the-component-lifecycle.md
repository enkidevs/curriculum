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

  - '[facebook.github.io](https://facebook.github.io/react/docs/state-and-lifecycle.html#adding-lifecycle-methods-to-a-class){website}'
  - '[facebook.github.io](https://facebook.github.io/react/docs/react-component.html#the-component-lifecycle){website}'

parent: functional-components

aspects:
  - introduction

---

# The **component** lifecycle

---
## Content

**Lifecycle methods** are special methods that can be overridden by a **React** `component` to run code at a particular point in time.

These methods correspond to exact points in the **component's lifecycle**.

A **lifecycle hook** is the `constructor(props)` which is commonly used to set the initial `state` of your component, but not only.

Suppose you want to `log` a message when a component **did** mount[1] (after being `render`ed). For this, you can use the `componentDidMount` method:
```jsx
class Spawn extends React.Component {
  componentDidMount() {
    console.log('I will spawn');
  }
  render() {
    return <p>I'm basic</p>;
  }
}
```

This `component` can be dynamically **mounted** multiple times in an application, when this happens we'll see the `log` in console.

If you also want to mark the **un-mounting**, you can use the `componentWillUnmount()`:
```jsx
// ...
  componentWillUnmount() {
    console.log('I will despawn');
  }
// ...
```

By convention, methods starting with `will` are run **before** an event happens while those starting with `did` are run **afterwards**.

Making use of **lifecycle methods** grants you improved control over the `component`, letting you perform optimizations, free up resources, integrate third-party libraries or even handle `props` and `state` better.

---
## Practice

What **lifecycle method** is used to target the point in time **after** `render`ing?

???


* `componentDidMount`
* `shouldComponentUpdate`
* `componentWillUnmount`
* `render`

---
## Revision

Is `React.Component`'s `constructor(props)` method considered a **lifecycle hook**?

???


* yes
* no
* only when setting `state`
* if only accompanied by other **lifecycle methods**

---
## Footnotes
[1:mounting]

**Mounting** refers to the initial insertion of a **React** `component` into the **DOM**.
Similarly, **unmounting** happens when the `component` is removed from the **DOM**.

