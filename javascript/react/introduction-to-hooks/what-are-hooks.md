---
author: kapnobatai136

levels:

  - medium
  
aspects:

  - new

  - workout

  - deep

type: normal

category: must-know

links:
  - '[hooks-intro](https://reactjs.org/docs/hooks-intro.html){documentation}'

---

# What are hooks?

---
## Content

Hooks represent a new way of using state with your functional components. They are the great for reusing stateful logic and enable you to use more of React's features without having to use classes.

There are three main types of hooks:
- State Hooks
- Effect Hooks
- Custom Hooks

Before hooks, many initially simple React component would eventually grow to contain many unrelated groupings of stateful logic and side effects. A component could perform some data fetching in the `componentDidMount` or `componentDidUpdate` lifecycle methods, while the `componentDidMount` could also contain some event listeners. Hooks allow us to separate these unrelated parts by encapsulating related logic into functions.

Now, let's take a look at a simple state hook:

```jsx
import React, { useState } from "react";

function Enki() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <button
        onClick={() => setCount(count + 1)}
      >
        Click me
      </button>
    </div>
  );
}
```

What the `Enki` component does is that every time the button is clicked, the `count` state is incremented by one. Now, if we would've used class components, the code would've looked something like this:

```jsx
class Enki extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0
    };
  }

  render() {
    return (
      <div>
        <p>
          You clicked {this.state.count}
          {" "}times
        </p>
        <button
          onClick={() =>
            this.setState(state => ({
              count: state.count + 1
            }))
          }
        >
          Click me
        </button>
      </div>
    );
  }
}
```

Both components have the same functionality, but you can already see how much easier it is to write state hooks compared to using state in a class component.

---
## Practice

Which of the following does not represent a React hook?

???

* lifecycle hook
* state hook
* effect hook
* custom hook

---
## Revision

Complete the following code that defines the `foo` state with the initial value of `null`:

```jsx
function Revision() {
  const [???, setFoo] = ???(???);

  // ...
}
```

* `foo`
* `useState`
* `null`
* `setState`
* `this.useState`
* `this.setState`
