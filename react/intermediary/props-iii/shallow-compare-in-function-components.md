---
author: DanielAmorimAraujo

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:  
  - '[React.memo Official Documentation](https://facebook.github.io/react/docs/react-api.html#reactmemo){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Shallow compare in function components

---
## Content

If you want to use function components, the same performance boost can be achieved by wrapping the component in a call to `React.memo`. What this does is that React will skip rendering the component and re-use the last rendered result if there is no change in `prop`s or `state`. As it was the case with `PureComponent`s, only a shallow comparison is completed.

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
const Component = React.memo(
  MemoComponent,
  areEqual
);
```

---
## Practice

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

---
## Revision

A ??? can be achieved with `React.Memo` when used on a React component that is ???.

* performance boost
* pure
* successful check
* clean
* raw
* successful render