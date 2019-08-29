---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/reusable-components.html#single-child){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - workout
  - deep

---

# Specify a single child

---
## Content

Making use of the `propTypes`, you can enforce a *warning* that is fired when you pass more than one child to a component.

The validator used is `PropTypes.element`.

Suppose we have the following scenario:
```jsx
class NewComponent extends React.Component {
  render() {
    return <div>{this.props.children}</div>;
  }
}
```

To make sure `this.props.children` is **exactly** a single element, we suffix the validation with `isRequired`:
```jsx
NewComponent.propTypes = {
  children: PropTypes.element.isRequired
};
```

---
## Practice

What validator must be used to make sure there is exactly one child passed to `children`?

```jsx
children: PropTypes.???.???,
```


* `element`
* `isRequired`
* `node`
* `arrayOf`
* `mandatory`
* `one`
* `any`

---
## Revision

What validator must be used to make sure there is exactly one child passed to `children`?

```jsx
children: PropTypes.???.???,
```


* `element`
* `isRequired`
* `node`
* `arrayOf`
* `mandatory`
* `one`
* `any`


