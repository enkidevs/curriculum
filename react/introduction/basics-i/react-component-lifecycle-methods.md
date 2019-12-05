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

  - '[The component lifecycle](https://facebook.github.io/react/docs/react-component.html#the-component-lifecycle){website}'
  - '[Lifecycle methods diagram](http://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/){website}'

parent: the-component-lifecycle

aspects:
  - introduction

---

# Component lifecycle methods

---
## Content

**Lifecycle methods** can be used to target a specific point in the *life* of a component.

We can split them into three broader categories by the *type of event* that will trigger them:

### 1. Mounting

- `constructor(props)` 
  - the first method called in the lifecycle, **before mounting**. It's most commonly used to set the initial `state` and to `bind` methods. If used, it must include `super(props)` as the first call[1]:

```jsx
constructor(props) {
  super(props);
  this.state = {
    time: new Date();
  }
}
```

- `componentDidMount()` 
  - is invoked **after** `render`
  - useful for initializations that require `DOM` nodes.

- `static getDerivedStateFromProps(props, state)` 
  - is invoked **right before** calling the `render` method, both on the initial mount and on subsequent updates
  - it returns `null` to update nothing, or an object to update the state
  - this method exists for rare use cases when the state depends on changes in props over time

- `UNSAFE_componentWillMount()` - is considered legacy and you should **avoid** it because it will be removed in one of the upcoming React versions (it was previously named `componentWillMount`).

### 2. Updating

- `shouldComponentUpdate(nextProps, nextState)` 
  - the method is called **before** receiving new `props` or `state`. 
  - by default, it returns `true` meaning `render` is triggered by any change
  - modifying this method allows you to only re-`render` in intended scenarios.

- `componentDidUpdate(prevProps, prevState, snapshot)` 
  - is invoked **after** `render`, but not after the initial one. 
  - this method is useful for manipulating the `DOM` when updated.

- `getDerivedStateFromProps(props, state)`
  - as mentioned above, this method is invoked **just before** a render, meaning it is called **both** during a mount and an update
  
- `getSnapshotBeforeUpdate(prevProps, prevState)`
  - is invoked **right before** the most recently rendered output is committed to the DOM
  - this method is useful because it captures information from the DOM before it is changed

### 3. Un-mounting

- `componentWillUnmount()` 
  - is invoked immediately **before** a component is unmounted and destroyed
  - it is useful for resource cleanup

- `UNSAFE_componentWillUpdate()`
  - is considered legacy and should be **avoided** because it will be removed in one of the upcoming React versions
  - previously named `componentWillUpdate`

- `UNSAFE_componentWillReceiveProps()`
  - is considered legacy and should be **avoided** because it will be removed in one of the upcoming React versions
  - previously named `componentWillReceiveProps`

### 4. Error handling

- `componentDidCatch(error, info)`
  - is invoked when an error is thrown by a child component

---
## Practice

Which of the following methods is called **after** all **but first** render?

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
---
## Footnotes

[1: Why do we write super(props)]
In JavaScript classes, the constructor is commonly used to setup the initial data of the class.
```js
class Enki {
  constructor(name) {
    this.greeting = `Hello from ${name} 👋`;
  }
}
```

Classes can also extend behavior from other classes.
```js
class Example extends Enki {
  constructor() {
    this.type = 'explanation';
  }
}

new Example().greeting; 
// "Hello from undefined 👋"
new Example().type;  
// "explanation"
```

For the `Example` class to have the greeting properly setup in the `Enki` class, it needs to somehow send the `name` to the `Enki` class to run its constructor and initialize the `greeting`. This is achieved with the `super` keyword.
```js
class Example extends Enki {
  constructor() {
    // pass name to Enki's constructor
    super('enki'); 
    this.type = 'explanation';
  }
}

new Example().greeting; 
// "Hello from enki 👋"
new Example().type;  
// "explanation"
```
In React, we have to call `super(props)` in a class component to tell `React.Component` to run its setup, such as initializing `props`.

For more info, [check out this article](https://overreacted.io/why-do-we-write-super-props/).