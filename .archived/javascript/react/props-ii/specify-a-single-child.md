---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#requiring-single-child){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - workout
  - deep

---

# Specify a single child

---
## Content

Making use of the `propTypes` you can enforce a *warning* fired when you pass more than one child to a component as children.

The validator used is `PropTypes.element`.

Suppose the following scenario:
```jsx
import PropTypes from 'prop-types';

class Component extends React.Component {
  //propTypes

  render {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
}
```

To make sure `this.props.children` is **exactly** a single element we suffix the validation with `isRequired`:
```jsx
propTypes: {
  children: PropTypes.element.isRequired,
}

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


