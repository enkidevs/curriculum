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

One example of a **lifecycle hook** is the `constructor(props)`, which is commonly used to set the initial `state` of your component[1].

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
A `constructor()` in a JavaScript class is used to setup the initial data for any instances created from that class. Every time we create an instance from a class, i.e. by calling the class with `new` like `new Animal()`, the `constructor()` of that class will be called.

For example, here's how we create an instance of a flying `Bird`:

```js
class Bird {
  constructor() {
    this.flies = true;
  }
}

const bird1 = new Bird();
bird1.flies // true
```

When working with classes that inherit from other classes, `i.e. class Child extends from Parent`, you usually want to run the `constructor()` of the `Parent` class as well, to make sure the data in the child is properly initialized and that the child has all the capabilities that the parent has.

For example, this is how we can create a flying `Dove`:

```js
class Dove extends Bird {
  constructor() {
    super(); // <-- call the constructor of Bird to setup flying
  }
}

const dove1 = new Dove();
dove1.flies // true
```

This is the same reason why in React components we call `super(props)`: because we want any component we create to have all the capabilities a React component has.

[2:mounting]

**Mounting** refers to the initial insertion of a **React** `component` into the **DOM**.
Similarly, **unmounting** happens when the `component` is removed from the **DOM**.