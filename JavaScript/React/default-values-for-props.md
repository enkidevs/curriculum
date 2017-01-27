# Default values for props
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

parent: validate-for-required-props

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#default-prop-values){website}

---
## Content

**React** provides a way of defining *default* values for props. This allows the safety usage of props even though they are not specified by the parent component.

The value assignment is done via the `defaultProps` special property of your component:

```jsx
function MyComponent(props) {
  return <p>{props.text}</p>;
}

MyComponent.defaultProps = {
  text: 'Bonjour le monde!',
};
```

Here, the default value for the `text` prop is "Bonjour le monde!".

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

* `value`
* `'xyz'`
* `defaultProps`
* `default`
* `getDefaultProps`

---
## Revision

Fill the missing that such that the default values for the `value` prop is `"xyz"`:

```jsx
function Comp(props) {
  return <h2>{props.value}</h2>;
}

Comp.??? = {
  ???: ???,
};
```

* `value`
* `'xyz'`
* `defaultProps`
* `default`
* `getDefaultProps`
