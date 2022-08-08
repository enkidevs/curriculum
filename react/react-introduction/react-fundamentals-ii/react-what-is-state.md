---
author: catalin
type: normal
category: must-know
links:
  - >-
    [State and the
    lifecycle](https://reactjs.org/docs/state-and-lifecycle.html){website}
  - >-
    [React
    state](https://medium.com/react-tutorials/react-state-14a6d4f736f5#.8vf5a6ngz){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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

This will throw an error, however, because `this.state` is `undefined` at the moment. The error would be `TypeError: Cannot read property 'text' of undefined`.

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

Note that we are setting the `state` here inside a `setTimeout` call. This might not be recommended (depending on your application) due to the possibility of creating memory leaks[3].


---

## Practice

How do you change the value of `this.state.a` ?

```jsx
???
```

- `this.setState({a: 'A'})`
- `this.state.a = 'A'`
- `this.setState({state: {a: 'A'}})`
- `constructor(state) {super({a: 'A'})}`


---

## Revision

Where should **initial state** be set in a component class?

???

- `in constructor(props)`
- `in render()`
- `in this.setState(initialState)`
- anywhere in the component


---

## Footnotes

[1:Immutable State]
This has to do with how data flows in React. The general idea behind this concept is that data goes down while actions go up, effectively creating a circular system. This will be explained in more detail at the end of the workout.

[2:Changing state before mounting]
If you try to change the `state` before the component was mounted, React will display the value of the initial `state`.

[3:Memory Leaks]
This is mostly due to how JavaScript works, rather than React. In JS, closures can live past the lifetime of a function, and since an interval callback needs to be kept alive by the browser to get executed, it can accidentally keep other references via its closure. Thus, memory isn't cleaned up, no matter if the React component is there or not. Here's [an article](https://reliablejavascript.com/2017/11/05/how-timer-intervals-can-leak-memory/) that provides a more in-depth reading.
