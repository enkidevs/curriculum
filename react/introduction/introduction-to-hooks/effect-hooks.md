---
author: kapnobatai136

aspects:

  - new

  - workout

  - deep

type: normal

category: how to

links:
  - '[Effect hooks](https://reactjs.org/docs/hooks-effect.html){documentation}'


---

# Effect hooks

---
## Content

Effect hooks allow you to perform side effects in function components. Some examples of side effects include setting up a subscription, manually changing the DOM or data fetching. Let's use the same `<Enki />` component that was created in the previous insight:

```jsx
import React, {
  useState,
  useEffect
} from "react";

function Enki() {
  const [name, setName] = useState("Enki");

  useEffect(() => {
    document.title = `Welcome ${name}.`;
  });

  return <p>Hello, my name is {name}</p>;
}
```

Notice anything new? We have used the `useEffect()` hook to set the document's title to a new custom message that includes the `name` state. If the syntax looks a bit different it is because we are using template literals[1] that allow us to embed expressions. You can think of the `useEffect()` hook as a replacement for `componentDidMount`, `componentDidUpdate`, and `componentWillUnmount` combined.

Note that you have to import the `useEffect` hook from the `'react'` library.

There are two types of effect hooks: with cleanup or without cleanup. In this insight we will focus on the effects without cleanup.

When using class components, a common pattern for side effects is to define them right after the component is rendered for the first time (in the `componentDidMount` method), update them if necessary on subsequent renders (in the `componentDidUpdate` method), and clean them up when the component is unmounted (in the `componentWillUnmount` method).

Here is how our example would look like if we used class components:

```jsx
class Enki extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "Enki"
    };
  }

  componentDidMount() {
    document.title = `Welcome ${name}.`;
  }

  componentDidUpdate() {
    document.title = `Welcome ${name}.`;
  }

  render() {
    return (
      <p>Hello, my name is {this.name}.</p>
    );
  }
}
```

You can already see the advantages of using hooks by comparing these two examples. With the `useEffect()` hook, you tell React that your component has to do something after every render. The `useEffect()` hook is placed inside the component so that we can access the `name` variable. This is possible because of how JavaScript's scope works, and it removes the need of React-specific APIs that would have to read the hook. By default, the `useEffect()` is ran after the first render and after every subsequent update (we'll see more how to control this later on).

---
## Practice

The `useEffect()` hook can be considered as a replacement of what when using function components?

???

* All of the methods mentioned.
* `componentDidUpdate()`
* `componentDidMount()`
* `componentWillUnmount()`

---
## Revision

Complete the following code to change the document's title to `"Welcome to the revision question."`:

```jsx
function Revision() {
  const [foo, setFoo] = ???(
    "revision"
  );

  ???(() => {
    document.title =
      `Welcome to the ??? question.`;
  });
}
```

* `useState`
* `useEffect`
* `${foo}`
* `setState`
* `setEffect`
* `{foo}`
* `$foo`

---
## Footnotes

[1:Template literals]
Template literals (formerly known as *template strings*) are a way of using multi-line strings together with string interpolation features. What this basically means is that it allows us to call the `name` state inside a string by appending the `$` sign before the `{name}` syntax. Template literals are defined using back ticks `` `string text` ``.
