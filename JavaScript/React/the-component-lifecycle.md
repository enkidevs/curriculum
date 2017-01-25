# The **component** lifecycle
author: catalin

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/state-and-lifecycle.html#adding-lifecycle-methods-to-a-class)'

  - '[facebook.github.io](https://facebook.github.io/react/docs/react-component.html#the-component-lifecycle)'

---
## Content

**Lifecycle methods** are special methods that can be overridden by a **React** `component` to run code at a particular point in time.

These methods correspond to exact points in the **component's lifecycle**.

Such a **lifecycle hook** is the `constructor(props)` which is commonly used to set the initial `state` of your component, but not only.

Suppose you want `log` a message when a component **will** be mounted (before being `render`ed). For this, you can use the `componentWillMount` method:
```jsx
class Spawn extends React.Component {
  componentWillMount() {
    console.log('I will spawn');
  }
  render() {
    return <p>I'm basic</p>;
  }
}

```

As this `component` can be dynamically **mounted** multiple times in an application, whenever this happens we'll see the `log` in console.

If you also want to mark the **un-mounting**, you can use the `componentWillUnmount()`:
```jsx
// ...
  componentWillUnmount() {
    console.log('I will despawn');
  }
// ...
```

By convention, methods starting with `will` are run **before** an event happens while those starting with `did` are run **after**.

Making use of **lifecycle methods** grants you improved control over the `component`, letting you perform optimisations, free up resources, integrate third-party libraries or even handle `props` and `state` better.



---
## Practice

What **lifecycle method** is used to target the point in time **before** `render`ing?

???

* `componentWillMount`
* `componentDidMount`
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
