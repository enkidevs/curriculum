---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

links:
  - '[Children in JSX](https://facebook.github.io/react/docs/jsx-in-depth.html#children-in-jsx){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep
  - workout

---
# Type of the Children props

---
## Content

Generally, a components children, `this.props.children`, would be an array of components.

When there is a single child, `this.props.children` will be the the single child component itself *without the array wrapper*, hence saving the allocation of an array.

The example shows both with and without an array allocation:

```jsx
class Wrapper extends React.Component {
  componentDidMount() {
    console.log(
      Array.isArray(this.props.children)
    );
  }

  render() {
    return <div />;
  }
}

// an array of components
ReactDOM.render(
  <Wrapper>
    <span />
    <span />
    <span />
  </Wrapper>,
  document.getElementById("foo")
);
// true

// single child (no array allocation)
ReactDOM.render(
  <Wrapper>hello</Wrapper>,
  document.getElementById("foo2")
);
// false
```

---
## Practice

Consider the following react component:

```jsx
class Enki extends React.Component {
  componentDidMount() {
    console.log(this.props.children);
  }
  render() {
    return <div />;
  }
}
```

What will the following output?

```jsx
ReactDOM.render(
  <Enki>
    <p />
    <p />
  </Enki>,
  aNode
);
// ???

ReactDOM.render(
  <Enki>
    <p />
  </Enki>,
  aSecondNode
)
// ???
```

* `[<p />, <p />]`
* `<p />`
* `[<p />]`
* `<p />, <p />`
* null
* undefined

---
## Revision

Consider there is a single child in your component. What will `this.props.children` return?

???

* only the child
* an array with just the children in it
* an array of possible children
* an array with the children and the parent component

