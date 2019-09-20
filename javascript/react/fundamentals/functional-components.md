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

  - '[facebook.github.io](https://facebook.github.io/react/docs/components-and-props.html){website}'

parent: what-is-state

aspects:
  - introduction
  - deep

links:
  - '[how-are-function-components-different-from-classes](https://overreacted.io/how-are-function-components-different-from-classes/){website}'

---

# Functional components

---
## Content

As stated before, **React** components behave just like functions, taking `props` as input and returning **React elements**.

Up until recently, functional components couldn't make us of any **lifecycle** methods, nor could they access `this.state` or call `setState()`. With the introduction of hooks, there is no visible difference between functional and class components:

```js
function Enki() {
  // defining the "name" state,
  // a "setName()" function to change the state,
  // and the initial state, 'Enki'.
  const [name, setName] = useState('Enki');

  useEffect(
    // lifecycle methods
  )
}
```

Don't worry about hooks for now, they will be explained in a later workout. For now, let's take a look at the following components:

```jsx
function FollowComponent(props) {
  const showMessage = () => {
    alter('Followed ' + props.user);
  };

  const handleClick = () => {
    setTimeout(showMessage, 3000);
  };

  return (
    <button onClick={handleClick}>Follow</button>
  );
}

class FollowComponent extends React.Component {
  showMessage = () => {
    alert('Followed ' + this.props.user);
  };

  handleClick = () => {
    setTimeout(showMessage, 3000);
  };

  render() {
    return <button onClick={this.handleClick}>Follow</button>;
  }
}
```

The components defined above should have the same functionality right? This statement is mostly correct, although there is an unseen side effect. In the class component, although `props` are immutable, `this` will always be mutable. For this reason, the property `this.props.user` is changed after every render or lifecycle method. Imagine that the button is clicked, but before the 3 seconds pass the `name` prop is changed from 'Andrei' to 'Stefan'. The effects of this action will be:

- in the functional component, the message displayed will be 'Followed Andrei', which is the **correct** behavior
- in the class component, the message displayed will be 'Followed Stefan', because `this.props.user` reflects the latest value

A quick fix for this issue is represented by capturing the current `props` in the `render()` method:

```jsx
class FollowComponent extends React.Component {
  render() {
    // capture the props
    const props = this.props;

    const showMessage = () => {
      alert('Followed ' + props.user);
    };

    const handleClick = () => {
      setTimeout(showMessage, 3000);
    };

    return <button onClick={handleClick}>Follow</button>;
  }
}
```

For more information on the differences between functional and class components make sure to check the resources.

---
## Practice

Complete the second code snippet such that it's equivalent to the first:
First:
```jsx
class Test extend React.Component {
  render() {
    return <h1>{this.props.test};
  }
}
```
Second:
```jsx
??? Test(???) {
  ??? <p>???</p>;
}
```


* `function`
* `props`
* `return`
* `{props.test}`
* `{this.props.test}`
* `render`
* `state`
* `func`
* `props.test`
* `test`
* `this.props.test`