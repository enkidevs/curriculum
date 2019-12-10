---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature


links:

  - '[React Children](https://facebook.github.io/react/docs/top-level-api.html#reactchildren){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Dealing with `this.props.children`

---
## Content

Now, let's see how you can use the `React.Children` methods in your code. 

We'll start by creating a component that counts the total number of children:

```jsx
class CountChildren extends React.Component{
  render() {
    return (
      <p>
        {React.Children.count(
          this.props.children
        )}
      </p>
    );
  }
}

ReactDOM.render(
  <CountChildren>
    <h1>I am the first child</h1>
    <h2>And I am the second child</h2>
  </CountChildren>,
  document.getElementById("root")
);
// Renders "2"
```

If you wanted to return only the first 5 children, you could use:

```jsx
class LimitChildren extends React.Component{
  render() {
    return React.Children.map(
      this.props.children,
      (child, i) => {
        if (i <= 5) return child;
        return null;
      }
    );
  }
}
```