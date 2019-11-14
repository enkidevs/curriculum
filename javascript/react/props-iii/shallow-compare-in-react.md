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

# Shallow compare in **React**

---
## Content

### React.PureComponent

`React.PureComponent` can be used instead of `React.Component`. `React.PureComponent` implements the `shouldComponentUpdate()` lifecycle automatically with shallow prop and state comparison.

If a component **render**s the same result given the same **props** and **state** (this type of component is considered *pure*), `React.PureComponent` can provide a performance boost. 

Using `React.PureComponent`:
```javascript
class NotPure extends React.Component {
  render() {
    return (
      <div className={this.props.className}>foo</div>
    )
  }
}

class Pure extends React.PureComponent {
  render() {
    return (
      <div className={this.props.className}>foo</div>
    );
  }
}
```

The **NotPure** component would render every time **this.props.className** updates, even if its value stays the same, whereas **Pure** would render only if **this.props.className** updates to a different value.

Note that `PureComponent` only shallowly compares the objects, meaning if the **prop**s or **state** contains complex data structures, it may produce false-negatives for deeper differences. Only use `PureComponent` if the component has simple **prop**s and **state**.

### React.memo

`React.memo` achieves the same as `React.PureComponent`, but it is used for **function**s instead.

**React** will simply skip rendering the component and reuse the last rendered result if the **props** are the same.

`React.memo` wraps a **function** component.
```javascript
const Component = React.memo(
  function MemoComponent(props) {
    /* return */
  }
);
```

By default, `React.memo` only shallowly compares complex objects in the **props** object. You can provide a custom comparison function as the second argument to have more control over the comparison.

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

A ??? can be achieved with `React.PureComponent` or `React.memo` when used on a React component that is ???.


* performance boost
* pure
* successful check
* clean
* raw
* successful render

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


