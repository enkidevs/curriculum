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

  - '[State and the lifecycle](https://facebook.github.io/react/docs/state-and-lifecycle.html){website}'
  - '[React state](https://medium.com/react-tutorials/react-state-14a6d4f736f5#.8vf5a6ngz){website}'

parent: what-are-props

aspects:
  - introduction

---

# What is state?

---
## Content

Just like `props`, **React** components' `state` can change their behavior or how they render.

You can think of `state` as private data only accessible from within the component.

Consider the component:

```jsx
class Hello extends React.Component {
  render() {
    return <p>{this.state.text}</p>;
  }
}
```

This will throw an error, however, because `this.state` is `null` at the moment. The error would be `Cannot read property 'x' of null`.

To set the **initial state**, by giving `text` a value, you can make use of `constructor()`. This method is a special function that gets executed when the component is created (creating an instance of the `React.Component` class). We'll look at these in depth in the future workouts.

```jsx
class Hello extends React.Component {
  constructor(props) {
    // props aren't used now
    super(props);
    // set the initial state
    this.state = { text: "Hello" };
  }
  // render() ...
}
```

If we `render` the element now, we will see `"Hello"` inside a `<p>`.

The `state` value should only be changed through the `this.setState()`[1] method. Another important feature of the `this.setState()` method is that it behaves asynchronously.

Note that `state` shouldn't be changed until the component was successfully mounted[2].

```jsx
class Hello extends React.Component {
  constructor(props) {
    // ...set initial state

    setTimeout(() => {
      this.setState({ text: "World" });
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

---
## Footnotes

[1:Immutable State]
This has to do with how data flows in React. The general idea behind this concept is that data goes down while actions go up, effectively creating a circular system. This will be explained in more detail and the end of the workout.

[2:Changing state before mounting]
If you try to change the `state` before the component was mounted, React will display the value of the initial `state`.