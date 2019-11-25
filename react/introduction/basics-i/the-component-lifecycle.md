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

  - '[Adding lifecycle methods to a class](https://facebook.github.io/react/docs/state-and-lifecycle.html#adding-lifecycle-methods-to-a-class){website}'
  - '[The component lifecycle](https://facebook.github.io/react/docs/react-component.html#the-component-lifecycle){website}'

parent: function-components

aspects:
  - introduction

---

# The component lifecycle

---
## Content

**Lifecycle methods** are special methods that can be overridden by a **React** component to run code at a particular point in time.

These methods correspond to exact points in the **component's lifecycle**.

One example of a **lifecycle hook** is the `constructor(props)`, which is commonly used to set the initial `state` of your component[2].

Suppose you want to log a message after a component was mounted[2] (after being `render`ed). For this, you can use the `componentDidMount()` method:
```jsx
class Spawn extends React.Component {
  componentDidMount() {
    console.log("I have spawned");
  }
  render() {
    return <p>I'm basic</p>;
  }
}
```

This component can be **mounted** dynamically multiple times in an application, and after this happens we'll see the log in the console.

If you want to mark the **un-mounting**, you can use the `componentWillUnmount()`:
```jsx
// ...
  componentWillUnmount() {
    console.log('I will despawn');
  }
// ...
```

Now, before the component is **un-mounted** you will see the log in the console.

By convention, methods starting with `will` are run **before** an event happens while those starting with `did` are run **afterwards**.

Making use of **lifecycle methods** grants you improved control over the component, letting you perform optimizations, free up resources, integrate third-party libraries or even handle `props` and `state` better.

---
## Practice

What **lifecycle method** is used to target the point in time **after** `render`ing?

???


* `componentDidMount`
* `shouldComponentUpdate`
* `componentWillUnmount`
* `componentDidUpdate`
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

[1:constructor()]
Calling `constructor()` is a common occurrence when working with JavaScript classes. By calling `constructor()` we any extended instance (such as a component in React) to access all the parent's properties.

If we want to initialize all the properties that the parent initializes, then we would call `super()` inside `constructor()`:
```js
constructor() {
  super();
}
```

Basically, we use `constructor()` to initialize "stuff", and if we want to initialize all the "stuff" that the parent does, we would then have to call `super()` inside our `constructor()`.

[2:mounting]

**Mounting** refers to the initial insertion of a **React** `component` into the **DOM**.
Similarly, **unmounting** happens when the `component` is removed from the **DOM**.

