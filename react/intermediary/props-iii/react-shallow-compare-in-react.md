---
author: kapnobatai136

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[Pure Components](https://facebook.github.io/react/docs/react-api.html#reactpurecomponent){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Shallow compare in React

---
## Content

It is possible to obtain a performance boost in React when using an automatic form of shallow comparison. For class components this is done by extending `React.PureComponent`:

```jsx
class MyComp extends React.PureComponent {
  render() {
    return (
      <div className={this.props.className}>
        foo
      </div>
    );
  }
}
```

`React.PureComponent` implements the `shouldComponentUpdate()` lifecycle automatically with shallow prop and state comparison.

If a component **render**s the same result given the same **props** and **state** (this type of component is considered *pure*), `React.PureComponent` can provide a performance boost. 

So, when using a `PureComponent`, a shallow equality check is performed on the current `props` and `nextProps`, but also on `state` and `nextState` objects. If a change in either `props` or `state` is observed, the component will be re-rendered. It is important to know that `React.PureComponent` skips `prop` updates for the whole component subtree, meaning that `prop` changes will be ignored if a difference couldn't be found in the shallow comparison. On top of that, for scalar variables the values are compared, but for objects only the references are compared. If you have nested data, you should consider using a deep comparison.

Note that `PureComponent` only shallowly compares the objects, meaning if the **prop**s or **state** contains complex data structures, it may produce false-negatives for deeper differences. Only use `PureComponent` if the component has simple **prop**s and **state**.

Another important aspect is that you should make sure all the child components are also `Pure`. If the children are regular components, then the entire component tree will re-render, but if the children are pure components then only the modified child will re-render.

---
## Practice

Complete the following code to define a pure component:

```jsx
??? MyComp ??? React.??? {
  render() {
    // ...
  }
}
```

* class
* extends
* PureComponent
* Component
* Pure
* React
* function
* export

---
## Revision

A ??? can be achieved with `React.PureComponent` when used on a React component that is ???.

* performance boost
* pure
* successful check
* clean
* raw
* successful render