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

  - '[Components and props](https://facebook.github.io/react/docs/components-and-props.html){website}'
  - '[How are function components different from classes](https://overreacted.io/how-are-function-components-different-from-classes/){website}'

parent: what-is-state

aspects:
  - introduction
  - deep

---

# Function components

---
## Content

**React** components behave just like functions, taking `props` as input and returning **React elements**.

Let's take a look at the following components:

```jsx
function FollowComponent(props) {
  const showMessage = () => {
    alert("Followed " + props.user);
  };

  const handleClick = () => {
    setTimeout(showMessage, 3000);
  };

  return (
    <button onClick={handleClick}>
      Follow
    </button>
  );
}

class FollowComponent extends React.Component {
  showMessage = () => {
    alert("Followed " + this.props.user);
  };

  handleClick = () => {
    setTimeout(showMessage, 3000);
  };

  render() {
    return (
      <button onClick={this.handleClick}>
        Follow
      </button>
    );
  }
}
```

The components defined above should have the same functionality right? This statement is mostly correct, although there is an unseen side effect. In the class component, although `props` are immutable, `this` will always be mutable. For this reason, the property `this.props.user` is changed after every render or lifecycle method. Imagine that the button is clicked, but before the 3 seconds pass the `name` prop is changed from `'Andrei'` to `'Stefan'`. The effects of this action will be:

- in the function component, the message displayed will be `'Followed Andrei'`, which is the **correct** behavior
- in the class component, the message displayed will be `'Followed Stefan'`, because `this.props.user` reflects the latest value

A quick fix is to capture the current `props` in the `render()` method:

```jsx
class FollowComponent extends React.Component {
  render() {
    // capture the props
    const props = this.props;

    const showMessage = () => {
      alert("Followed " + props.user);
    };

    const handleClick = () => {
      setTimeout(showMessage, 3000);
    };

    return (
      <button onClick={handleClick}>
        Follow
      </button>
    );
  }
}
```

For more information on the differences between function and class components make sure to check the resources.

---
## Practice

Complete the second code snippet such that it's equivalent to the first:

First:
```jsx
class Test extend React.Component {
  render() {
    return <p>{this.props.test}</p>;
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
