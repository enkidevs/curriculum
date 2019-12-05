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

  - '[facebook.github.io](https://facebook.github.io/react/docs/react-component.html#the-component-lifecycle){website}'
  - '[projects.wojtekmaj.pl](http://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/){website}'

parent: the-component-lifecycle

aspects:
  - introduction

---

# Component **lifecycle methods**

---
## Content

As discussed before, **lifecycle methods** can be used to target a specific point in the *life* of a `component`.

We can split them into three broader categories by the *type of event* that will trigger them:

### 1. Mounting

- `constructor(props)` - the first method called in the lifecycle, **before mounting**. It's most commonly used to set the initial `state` and to `bind` methods. If used, it must include `super(props)` as first call:

```jsx
constructor(props) {
  super(props);
  this.state = {
    time: new Date();
  }
}

```

- `getDerivedStateFromProps(props, state)` - is invoked **just before** `render`. It should return an object to update the state or null to update nothing. This method exists for rare use cases when the state depends on changes in props over time.

- `componentDidMount()` - is invoked **after** `render`. Useful for initializations that require `DOM` nodes.

- `UNSAFE_componentWillMount()` - is considered legacy and you should **avoid** it because it will be removed in one of the upcoming React versions (it was previously named `componentWillMount`).

### 2. Updating

- `getDerivedStateFromProps(props, state)` - As mentioned above, this method is invoked **just before** a render, meaning it is called **both** during a mount and an update.

- `shouldComponentUpdate(nxtProps, nxtState)` - the method is called **before** receiving new `props` or `state`. By default it returns `true` meaning `render` is triggered by any change. Modifying this method allows you to only re-`render` in intended scenarios.

- `getSnapshotBeforeUpdate(prevProps, prevState)` - is invoked **right before** the most recently rendered output is committed. It enables your component to capture some information from the `DOM` before it is potentially changed, passing it as a parameter to `componentDidUpdate()`.

- `componentDidUpdate(prevProps, prevState)` - is invoked **after** `render`, but not after the initial one. This method is useful for manipulating the `DOM` when updated

- `UNSAFE_componentWillUpdate()` - is considered legacy and you should **avoid** it because it will be removed in one of the upcoming React versions (it was previously named `componentWillUpdate`).

- `UNSAFE_componentWillReceiveProps()` - is considered legacy and you should **avoid** it because it will be removed in one of the upcoming React versions (it was previously named `componentWillReceiveProps`).

### 3. Unmounting

- `componentWillUnmount()` - is invoked immediately **before** a `component` is unmounted and destroyed. Useful for resource cleanup.

---
## Practice

What of the following methods is called **after** rendering, but not after the first one.

???


* `componentDidUpdate`
* `componentDidMount`
* `componentWillUnmount`
* `getDerivedStateFromProps`
* `getSnapshotBeforeUpdate`
* `constructor`

---
## Revision

What method is the first being called in the **component lifecycle**?

???


* `constructor`
* `getDerivedStateFromProps`
* `shouldComponentUpdate`
* `componentDidMount`


