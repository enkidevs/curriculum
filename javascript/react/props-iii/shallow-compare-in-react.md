---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/shallow-compare.html){website}'

notes: |-
  probably best in the same workout with :
  https://insights.enki.com/#/contrib/56aa0290bd6a4609006eaee3

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Shallow compare in React

---
## Content

A performance boost can be achieved by extending the `React.PureComponent` when creating your components.

Use shallow compare:
```jsx
class SampleComponent extends React.PureComponent {
  render() {
    return (
      <div className={this.props.className}>
        foo
      </div>
    );
  }
}
```

Now, a shallow equality check is performed on the current `props` and `nextProps`, but also on `state` and `nextState` objects. If a change in either `props` or `state` is observed, the component will be re-rendered. It is important to know that `React.PureComponent` skips `prop` updates for the whole component subtree, meaning that `prop` changes will be ignored if a difference couldn't be found in the shallow comparison. On top of that, for scalar variables the values are compared, but for objects only the references are compared. If you have nested data, you should consider using a deep comparison.

Another important aspect is that you should make sure all the child components are also `Pure`. If the children are regular components, then the entire component tree will re-render, but if the children are pure components then only the modified child will re-render.

If you want to use functional components, the same performance boost can be achieved by wrapping the component in a call to `React.memo`. What this does is that React will skip rendering the component and re-use the last rendered result if there is no change in `prop`s or `state`. As it was the case with `PureComponent`s, only a shallow comparison is completed.

```jsx
const FnComp = React.memo(function FnComp(
  props
) {
  // render using props
});
```
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