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

---

# What are hooks?

---
## Content

Hooks represent a new way of using state with your functional components. They are the best approach at reusing stateful logic and enable you to use more of React's features without having to use classes.

There are three main types of hooks:
- State Hooks
- Effect Hooks
- Custom Hooks

Before hooks, your components would start out simple but with time they would grow into a random grouping of stateful logic and side effects. Your components could perform some data fetching in the `componentDidMount` or `componentDidUpdate` lifecycle methods, but the `componentDidMount` could also contain some event listeners that were totally unrelated. Hooks introduced a way of splitting up components into smaller functions such that each part is related.

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

What the `Enki` component does is that every time the button is click, the `count` is incremented by one. Now, if we would've used class components, the code would've looked something like this:

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
          You clicked {this.state.count}{" "}
          times
        </p>
        <button
          onClick={() =>
            this.setState({
              count: this.state.count + 1
            })
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



---
## Revision


