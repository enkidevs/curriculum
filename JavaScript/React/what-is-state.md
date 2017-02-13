# What is **state**?
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: what-are-props

links:


 - >-
   [facebook.github.io](https://facebook.github.io/react/docs/state-and-lifecycle.html){website}

 - >-
   [medium.com](https://medium.com/react-tutorials/react-state-14a6d4f736f5#.8vf5a6ngz){website}


---
## Content

Just like `props`, **React** components' `state` can change their behaviour or how they render.

You can think of *state* as a **private** data set only accessible from within the `component` via `this.state`.

Consider the component:
```jsx
class Hello extends React.Component {
  render() {
    const show = this.state.show;
    return <p>{this.state.text}</p>;
  }
}
```

This won't render however, because `this.state` is `null` at the moment.

To set the **initial state**, by giving `text` a value, you can make use of the `constructor` lifecycle method which is called when the component is created:
```jsx
class Hello extends React.Component {
  constructor(props) {
    // props aren't used now
    super(props);
    // set the initial state
    this.state = {text: 'Hello'};
  }
  // render() ...
}
```

If we `render` the element now, we will see "Hello" inside a `<p>`.

The `state` value should only be changed through the `this.setState()` method which behaves asynchronously.
Note that `state` shouldn't be changed until the component was successfully mounted.

```jsx
class Hello extends React.Component {
  constructor(props) {
    // ...set initial state

    setTimeout(() => {
      this.setState({text: 'World'});
    }, 1000);
  }
}
```  

The snippet above will update the `state` one second after construction. Specifically, `this.state.text` is changed to `World`.

`render`ing our component now, we'll first see `"Hello"` which will change to `"World"` after one second.

---
## Practice

How do you change the value of `this.state.a` ?

```jsx
???
```

* `this.setState({a: 'A'})`
* `this.state.a = 'A'`
* `this.setState({state: {a: 'A'}})`
* `constructor(state) {super({a: 'A'})}`

---
## Revision

Where should **initial state** be set in a component class?

???

* in `constructor(props)`
* in `render()`
* in `this.setState(initialState)`
* anywhere in the component
