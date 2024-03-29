---
author: catalin
type: normal
category: how-to
links:
  - >-
    [Default prop
    values](https://reactjs.org/docs/typechecking-with-proptypes.html#default-prop-values){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Default values for props


---

## Content

**React** provides a way of defining *default* values for props. This allows the safe usage of props even though they are not specified by the parent component.

The value assignment is done via the `defaultProps` special property of your component:

```jsx
function MyComponent(props) {
  return <p>{props.text}</p>;
}

MyComponent.defaultProps = {
  text: "Bonjour le monde!"
};
```

Here, the default value for the `text` prop is `"Bonjour le monde!"`.

As a consequence, `this.props.text` will have a value even if it's not specified by the parent component.


---

## Practice

Fill the missing that such that the default values for the `value` prop is `"xyz"`:

```jsx
function Comp(props) {
  return <h2>{props.value}</h2>;
}

Comp.??? = {
  ???: ???,
};
```

- `defaultProps`
- `value`
- `"xyz"`
- `default`
- `getDefaultProps`
- `xyz`


---

## Revision

Fill the missing that such that the default values for the `bool` prop is `true`:

```jsx
function Comp(props) {
  return <h2>{props.value}</h2>;
}

Comp.??? = {
  ???: ???,
};
```

- `defaultProps`
- `bool`
- `true`
- `default`
- `getDefaultProps`
- `false`
- `boolean`
