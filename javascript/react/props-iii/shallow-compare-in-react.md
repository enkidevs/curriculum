---
author: DanielAmorimAraujo

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/react-api.html#reactpurecomponent){website}'
  
  - '[facebook.github.io](https://facebook.github.io/react/docs/react-api.html#reactmemo){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Shallow compare in React

---
## Content

A performance boost can be achieved by extending the `React.PureComponent` when creating class components. Here is an example:

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

If you want to use functional components, the same performance boost can be achieved by wrapping the component in a call to `React.memo`. What this does is that React will skip rendering the component and re-use the last rendered result if there is no change in `prop`s or `state`. As it was the case with `PureComponent`s, only a shallow comparison is completed.

```jsx
const FnComp = React.memo(function FnComp(
  props
) {
  // render using props
});
```

You can provide a custom comparison function as the second argument to have more control over the comparison.

```javascript
function MemoComponent(props) {
  /* return using props */
}
function areEqual(prevProps, nextProps) {
  /*
  returns true if nextProps renders
  the same result as prevProps,
  otherwise returns false
  */
}
const Component = React.Memo(
  MemoComponent,
  areEqual
);
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

Complete the code so that **EnkiComp** only re-renders if **areEqual** returns false

```javascript
function EnkiComp(props) {
  /* ... */
}
function areEqual(prevProps, nextProps) {
  /* ... */
}
const Enki = React.???(
  ???,
  ???
);
```

* `memo`
* `EnkiComp`
* `areEqual`
* `PureComponent`
* `Memo`
* `Enki`
* `React.PureComponent`
* `React.memo`


