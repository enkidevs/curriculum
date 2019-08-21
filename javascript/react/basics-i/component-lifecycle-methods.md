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

- `componentDidMount()` - is invoked **after** `render`. Useful for initializations that require `DOM` nodes.


### 2. Updating

- `shouldComponentUpdate(nextProps, nextState)` - the method is called **before** receiving new `props` or `state`. By default it returns `true` meaning `render` is triggered by any change. Modifying this method allows you to only re-`render` in intended scenarios.

- `componentDidUpdate(prevProps, prevState, snapshot)` - is invoked **after** `render`, but not after the initial one. This method is useful for manipulating the `DOM` when updated.

### 3. Unmounting

- `componentWillUnmount()` - is invoked immediately **before** a `component` is unmounted and destroyed. Useful for resource cleanup.

---
## Practice

What of the following methods is called **after** rendering, but not after the first one.

???


* `componentDidUpdate`
* `componentDidMount`
* `componentWillUpdate`
* `componentWillMount`
* `componentWillUnmount`
* `constructor`

---
## Revision

What method is the first being called in the **component lifecycle**?

???


* `constructor`
* `componentWillMount`
* `shouldComponentUpdate`
* `componentDidMount`


